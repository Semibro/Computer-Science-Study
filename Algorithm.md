# 알고리즘

## 동적 프로그래밍(DP; Dynamic Programming)
 - 동적 프로그래밍이란 주어진 문제를 풀기 위해 문제를 여러 개의 하위 문제(SubProblem)로 나누어 푼 다음, 그것을 결합하여 해결하는 방식
 - 동적 프로그래밍에서는 어떤 부분 문제가 다른 문제들을 해결하는데 사용될 수 있어, 답을 여러 번 계산하는 대신 한 번만 계산하고 그 결과를 재활용하는 메모이제이션(Memoization)기법으로 속도를 향상시킬 수 있음

<동적 프로그래밍의 두 가지 조건>
 1. Overlapping Subproblem(중복되는 부분문제) : 주어진 문제는 같은 부분 문제가 여러 번 재사용
 2. Optimal Substructure(최적 부분구조) : 새로운 부분 문제의 정답을 다른 부분 문제의 정답으로 구할 수 있음
<hr>
