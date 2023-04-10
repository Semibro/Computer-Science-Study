# 알고리즘

## 동적 프로그래밍(DP; Dynamic Programming)
 - 동적 프로그래밍이란 주어진 문제를 풀기 위해 문제를 여러 개의 하위 문제(SubProblem)로 나누어 푼 다음, 그것을 결합하여 해결하는 방식
 - 동적 프로그래밍에서는 어떤 부분 문제가 다른 문제들을 해결하는데 사용될 수 있어, 답을 여러 번 계산하는 대신 한 번만 계산하고 그 결과를 재활용하는 메모이제이션(Memoization)기법으로 속도를 향상시킬 수 있음

<동적 프로그래밍의 두 가지 조건>
 1. Overlapping Subproblem(중복되는 부분문제) : 주어진 문제는 같은 부분 문제가 여러 번 재사용
 2. Optimal Substructure(최적 부분구조) : 새로운 부분 문제의 정답을 다른 부분 문제의 정답으로 구할 수 있음
<hr>

## 재귀 알고리즘 & 재귀의 시간복잡도
 - 재귀 알고리즘이란 함수 내부에서 함수가 자기 자신을 또 다시 호출하여 문제를 해결하는 알고리즘
 - 재귀 알고리즘은 자기가 계속해서 자신을 호출하므로 끝없이 반복되므로 반복을 중단할 조건이 반드시 필요
<hr>

## n개의 배열에서 k(k<=n)번째로 큰수를 찾는 알고리즘
 - 이런 문제를 해결하기 위해서는 퀵 정렬 사용
 - 하지만 퀵 정렬의 경우 정렬이 불필요한 부분들을 정렬하면서 효율이 떨어짐
 - 퀵선택 알고리즘은 퀵 정렬 후 피봇과 k를 비교하여 아래와 같이 수행
    1. pivot의 인덱스가 k와 같은 경우 : 그대로 그 인덱스의 값을 리턴
    2. pivot의 인덱스가 k보다 작은 경우 : pivot의 인덱스+1부터 마지막 인덱스까지 다시 Partition함수에 넘겨준다.
    3. pivot의 인덱스가 k보다 큰 경우 : 첫 번째 인덱스부터 pivot의 인덱스-1까지 다시 Partition함수에 넘겨준다.
 - 퀵정렬 알고리즘과 다른 점은 예를 들어 pivot의 인덱스가 7이고 k가 5인 경우에, 피봇의 오른쪽 부분은 재귀 함수를 돌지 않아 한 쪽만으로 재귀를 진행
 - 위의 이유로 시간복잡도는 O(n)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbRiDtb%2FbtqK8jBktsD%2FTcia2H7eBO5fEdB4H7qQUk%2Fimg.png">
<hr>

## 허프만 코딩
 - 허프만 코딩은 문자의 빈도를 이용해 압축하는 방법
 - 빈도가 높은 문자에 짧은 코드를 부여
 - 허프만 코드는 접두부 코드와 최적 코드를 사용
    1. 접두부 코드 : 문자에 부여된 코드가 다른 이진 코드의 접두부가 되지 않는 코드
    2. 최적 코드 : 인코딩된 메세지의 길이가 가장 짧은 코드
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FkGx5x%2FbtqIVIWAojY%2FgdC6KmQ24Q97g0Ck1JfZ61%2Fimg.png">

```python
import heapq
from heapq import heappop, heappush
 
 
def isLeaf(root):
    return root.left is None and root.right is None
 
 
# A 트리 노드
class Node:
    def __init__(self, ch, freq, left=None, right=None):
        self.ch = ch
        self.freq = freq
        self.left = left
        self.right = right
 
    # `__lt__()` 함수를 재정의하여 `Node` 클래스가 우선 순위 대기열과 함께 작동하도록 합니다.
    # 가장 높은 우선순위 항목이 가장 낮은 빈도를 갖도록
    def __lt__(self, other):
        return self.freq < other.freq
 
 
# 허프만 트리를 탐색하고 사전에 허프만 코드를 저장
def encode(root, s, huffman_code):
 
    if root is None:
        return
 
    #가 리프 노드를 찾았습니다.
    if isLeaf(root):
        huffman_code[root.ch] = s if len(s) > 0 else '1'
 
    encode(root.left, s + '0', huffman_code)
    encode(root.right, s + '1', huffman_code)
 
 
# 허프만 트리를 탐색하고 인코딩된 문자열을 디코딩합니다.
def decode(root, index, s):
 
    if root is None:
        return index
 
    #가 리프 노드를 찾았습니다.
    if isLeaf(root):
        print(root.ch, end='')
        return index
 
    index = index + 1
    root = root.left if s[index] == '0' else root.right
    return decode(root, index, s)
 
 
#는 허프만 트리를 구축하고 주어진 입력 텍스트를 디코딩합니다
def buildHuffmanTree(text):
 
    # 기본 케이스: 빈 문자열
    if len(text) == 0:
        return
 
    #는 각 캐릭터의 출현 빈도를 계산합니다.
    # 사전에 저장
    freq = {i: text.count(i) for i in set(text)}
 
    # Huffman 트리의 라이브 노드를 저장할 우선 순위 대기열를 만듭니다.
    pq = [Node(k, v) for k, v in freq.items()]
    heapq.heapify(pq)
 
    # Queue에 노드가 둘 이상 있을 때까지 수행
    while len(pq) != 1:
 
        # 우선 순위가 가장 높은 두 노드를 제거합니다.
        # Queue에서 #(최저 주파수)
 
        left = heappop(pq)
        right = heappop(pq)
 
        #는 이 두 노드를 자식으로 사용하여 새 내부 노드를 만들고
        #는 두 노드의 주파수 합과 동일한 주파수를 사용합니다.
        # 우선 순위 대기열에 새 노드를 추가합니다.
 
        total = left.freq + right.freq
        heappush(pq, Node(None, total, left, right))
 
    # `root` 는 허프만 트리의 루트에 대한 포인터를 저장합니다.
    root = pq[0]
 
    #는 Huffman 트리를 탐색하고 Huffman 코드를 사전에 저장합니다.
    huffmanCode = {}
    encode(root, '', huffmanCode)
 
    # 허프만 코드 인쇄
    print('Huffman Codes are:', huffmanCode)
    print('The original string is:', text)
 
    # 인코딩된 문자열을 인쇄합니다.
    s = ''
    for c in text:
        s += huffmanCode.get(c)
 
    print('The encoded string is:', s)
    print('The decoded string is:', end=' ')
 
    if isLeaf(root):
        # 특수 케이스: a, aa, aaa 등과 같은 입력용
        while root.freq > 0:
            print(root.ch, end='')
            root.freq = root.freq - 1
    else:
        #는 이번에도 허프만 트리를 횡단하고,
        # 인코딩된 문자열 디코딩
        index = -1
        while index < len(s) - 1:
            index = decode(root, index, s)
 
 
# Python에서 허프만 코딩 알고리즘 구현
if __name__ == '__main__':
 
    text = 'Huffman coding is a data compression algorithm.'
    buildHuffmanTree(text)
```