# 자료구조

## 자료구조와 알고리즘
 - 자료구조는 데이터를 원하는 규칙 또는 목적에 맞게 저장하기 위한 구조
 - 알고리즘은 자료구조에 쌓인 데이터를 활용해 어떠한 문제를 해결하기 위한 여러 동작들의 모임
<hr>

## 스택, 큐, 트리, 힙
 - 스택 : 세로로 된 바구니와 같은 구조로 먼저 넣게 된 자료가 마지막으로 나오게 되는 First-In Last-Out(FILO)구조
 - 큐 : 가로로 된 통과 같은 구조로 먼저 넣게 된 자료가 가장 먼저 나오는 First-In First-Out(FIFO)구조
 - 트리 : 정점과 간선을 이용해 사이클을 이루지 않도록 구성한 Graph의 특수한 형태로, 계층이 있는 데이터를 표현하기에 적합
 - 힙 : 최대값 또는 최소값을 찾아내는 연산을 쉽게 하기 위해 고안된 구조로 각 노드의 키값이 자식의 키값보다 작지 않거나(최대힙) 그 자식의 키값보다 크기 않은(최소힙) 완전이진트리

<힙 이미지>

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbOP2BG%2FbtqIXgehSAU%2FKVOz4pzZOwZqlH20wZsBC0%2Fimg.png">
<hr>

## 우선순위 큐와 내부구조 및 시간복잡도
 - 우선순위 큐는 가장 우선순위가 높은 데이터를 먼저 꺼내기 위해 고안된 자료구조
 - 우선순위 큐를 구현하기 위해서 일반적으로 힙을 사용
 - 힙은 완전이진트리를 통해서 구현되었기 때문에 우선순위 큐의 시간복잡도는 O(logn)
<hr>

## 해시 테이블과 해시 테이블의 시간복잡도
 - 해시 테이블은 (Key, Value)로 데이터를 저장하는 자료구조 중 하나로 빠른 데이터 검색이 필요할 때 유용
 - 해시 테이블은 Key값에 해시함수를 적용해 고유한 index를 생성하여 그 index에 저장된 값을 꺼내오는 구조

<해시 테이블 이미지>

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcmb93t%2FbtqITt7eR8A%2FmGgrbmF8XUo38BG1SiYLi1%2Fimg.png">

 - 해시 테이블은 고유한 index로 값을 조회하기 때문에 평균적으로 O(1)의 시간복잡도
 - 하지만 해시의 index값이 충돌이 발생할 경우 충돌된 index값에 대해 연결된 데이터들을 조회하여 원하는 값을 조회하기 때문에 O(N)까지 증가할 수 있음
<hr>

## LinkedList와 ArrayList 차이
 - ArrayList는 데이터들이 순서대로 늘어선 배열의 형식을 취하고 있지만, LinkedList는 자료의 주소값으로 서로 연결된 형식을 가지고 있다.
 - 이러한 구조에 의해 둘은 각각의 장단점을 가지고 있다.
 - ArrayList
    1. 원하는 데이터에 무작위 접근이 가능
    2. 리스트의 크기가 제한되어 있으며, 리스트의 크기를 재조정하는 것은 많은 연산이 필요
    3. 데이터의 추가/삭제를 위해서는 임시 배열을 생성하여 복제하고 있어 시간이 오래 걸림
 - LinkedList
    1. 리스트의 크기에 영향없이 데이터를 추가할 수 있음
    2. 데이터를 추가하기 위해 새로운 노드를 생성하여 연결하므로 추가/삭제 연산이 빠름
    3. 무작위 접근이 불가능하며, 순차 접근만 가능

<LinkedList ArrayList 이미지>

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbT9vAg%2FbtqOzASZJPM%2FTKQmop7XQziU6aqM5Kdmik%2Fimg.png">
<hr>

## 큐와 스택의 구현
 - 큐(Queue) : Array로 구현하면 pull 연산 이후 객체를 앞당기는 작업이 필요. 하지만 List로 구현하면 객체 1개만 제거하면 되므로 삽입 및 삭제가 용이한 LinkedList로 구현하는 것이 유리함
 - 스택(Stack) : List로 구현하면 객체를 제거하는 작업이 필요. 하지만 Array로 구현하면 삭제할 필요 없이 index를 줄이고 초기화만 하면 되므로, Array로 구현하는 것이 유리함
<hr>

## AVL 트리
 - AVL트리란 한 쪽으로 값이 치우치는 이진 탐색 트리(Binary Search Tree, BST)의 한계점을 보완하기 위해 만들어진 균형 잡힌 이진 트리
 - AVL은 항상 좌/우로 데이터를 균형잡힌 상태로 유지하기 위해 추가적인 연산을 진행

<AVL 트리 이미지>

<img src="https://blog.kakaocdn.net/dn/blxsRD/btq21CW9Fw3/WOk8F74J254K1pczckskEK/img.png">
<hr>

## 레드블랙 트리
 - 레드블랙 트리는 모든 노드를 빨간색 또는 검정색으로 색칠합니다.
 - 그리고 연결된 노드들은 색이 중복되지 않도록 관리합니다.

<레드블랙 트리 이미지>

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcitWfI%2FbtrptgRQlFi%2Fvd9FwY1WQKUpKDkjZWIGD1%2Fimg.png">

※ 출처 : https://mangkyu.tistory.com/88