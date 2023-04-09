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

