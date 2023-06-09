# 정렬

## Bubble Sort
 - 버블정렬은 서로 인접한 두 원소를 비교하여 정렬하는 알고리즘
 - 0번 인덱스부터 n-1번 인덱스까지 n번까지의 모든 인덱스를 비교하여 정렬
 - 시간복잡도는 O(n^2)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcqNUzB%2FbtqITvdyGGF%2Fwu13gRsZ8myIkDlk0WAmx0%2Fimg.png">

```python
def bubble_sort(arr):
    for i in range(len(arr)-1, 0, -1):
        for j in range(i):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
```
<hr>

## Heap Sort
 - 힙정렬은 주어진 데이터를 힙 자료구조로 만들어 최대값 또는 최소값부터 하나씩 꺼내서 정렬하는 알고리즘
 - 힙정렬이 가장 유용한 경우는 전체를 정렬하는 것이 아닌 가장 큰 값 몇개만을 필요로 하는 경우
 - 시간복잡도는 O(nlog2n)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FPgySh%2FbtqITur6oYn%2FhLYHRVgkKimBNG6rwd5Q6k%2Fimg.png">

```python
def Heap_Sort(arr):
    n = len(arr)
    for i in range(n):
        c = i
        while c != 0:
            r = (c-1)//2
            if arr[r] < arr[c]:
                arr[r], arr[c] = arr[c], arr[r]
            c = r
    for j in range(n-1, -1, -1):
        arr[0], arr[j] = arr[j], arr[0]
        r, c = 0, 1
        while c < j:
            c = 2*r + 1
            if c < j-1 and arr[c] < arr[c+1]:
                c += 1
            if c < j and arr[r] < arr[c]:
                arr[r], arr[c] = arr[c], arr[r]
            r = c
```
<hr>

## Merge_Sort
 - 병합정렬은 주어진 배열을 크기가 1인 배열로 분할하고 합병하면서 정렬을 진행하는 분할/정복 알고리즘
 - 시간복잡도는 O(nlog2n)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FMaPX2%2FbtqIWS0GAuO%2FigmIkXQjYxm5ObNcVaSp71%2Fimg.png">

```python
def Merge_Sort(arr):
    if len(arr) < 2:
        return arr

    mid = len(arr) // 2
    low_arr = Merge_Sort(arr[:mid])
    high_arr = Merge_Sort(arr[mid:])

    merged_arr = []
    l = h = 0
    while l < len(low_arr) and h < len(high_arr):
        if low_arr[l] < high_arr[h]:
            merged_arr.append(low_arr[l])
            l += 1
        else:
            merged_arr.append(hign_arr[h])
            h += 1
    
    merged_arr += low_arr[l:]
    merged_arr += high_arr[h:]
    return merged_arr
```
<hr>

## Quick Sort
 - 퀵정렬은 매우 빠른 정렬 속도를 자랑하는 분할 정복 알고리즘 중 하나
 - 합병정렬과 달리 리스트를 비균등하게 분할
 - 피봇을 설정하고 피봇보다 큰값과 작은값으로 분할하여 정렬
 - 시간복잡도는 O(nlog2n)
 - 리스트가 계속해서 불균등하게 나눠지는 경우 시간복잡도는 O(n^2)
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FykKjA%2FbtqLhQxCApg%2FthkLcCfbJVYidkW5K9ntx0%2Fimg.jpg">

```python
def Quick_Sort(arr):
    if len(arr) <= 1:
        return arr

    pivot = arr[len(arr) // 2]
    less_arr, equal_arr, great_arr = [], [], []

    for num in arr:
        if num < pivot:
            less_arr.append(num)
        elif num > pivot:
            great_arr.append(num)
        else:
            equal_arr.append(num)
    
    return Quick_Sort(less_arr) + equal_arr + Quick_sort(great_arr)
```
<hr>

## Insert Sort
 - 삽입정렬은 두 번째 값부터 시작하여 그 앞에 존재하는 원소들과 비교하여 삽입할 위치를 찾아 삽입하는 정렬 알고리즘
 - 평균 시간복잡도는 O(n^2)이며, 가장 빠를 경우 O(n)까지 가능
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FPhpP8%2Fbtq2HtsuB7M%2FEEltFOR1urUBTLl1baDJC1%2Fimg.png">

```python
def insertion_sort(arr):
    for end in range(1, len(arr)):
        for i in range(end, 0, -1):
            if arr[i-1] > arr[i]:
                arr[i-1], arr[i] = arr[i], arr[i-1]
```
<hr>

## 정렬 알고리즘 시간복잡도 비교
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FFffzd%2FbtqIYas3Ij5%2Fow6oK7GS6faEe1XQPZ65vK%2Fimg.png">