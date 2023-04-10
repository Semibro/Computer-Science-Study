# Bubble Sort
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