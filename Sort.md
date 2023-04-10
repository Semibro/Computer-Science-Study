# Bubble Sort
 - 버블정렬은 서로 인접한 두 원소를 비교하여 정렬하는 알고리즘
 - 0번 인덱스부터 n-1번 인덱스까지 n번까지의 모든 인덱스를 비교하여 정렬
 - 시간복잡도는 O(n^2)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcqNUzB%2FbtqITvdyGGF%2Fwu13gRsZ8myIkDlk0WAmx0%2Fimg.png">
```python
def Bubble_Sort(lst):
    for i in range(0, len(lst)-1):
        for j in range(i+1, len(lst)):
            if lst[i] > lst[j]:
                tmp = lst[j]
                lst[j] = lst[i]
                lst[i] = tmp
    return lst
```