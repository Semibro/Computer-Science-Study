# 운영체제

## Byte Ordering
 - Byte Ordering은 데이터가 저장되는 순서를 의미
 - 방식으로는 Big Endian(빅엔디안)과 Little Endian(리틀엔디안)이 있다.

<Byte Ordering 방식>

 - Big Endian
    1. MSB가 가장 낮은 주소에 위치하는 저장 방식
    2. 네트워크에서 데이터를 전송할 때 주로 사용
    3. 가장 낮은 주소에 MSB가 저장되므로, offset=0인 Byte를 보면 양수/음수를 바로 파악할 수 있다.
 - Little Endian
    1. MSB가 가장 높은 주소에 위치하는 저장 방식
    2. 마이크로프로세서에서 주로 사용
    3. 가장 낮은 주소에 부호값이 아닌 데이터가 먼저 오기 때문에 바로 연산 가능
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fd61BQv%2FbtqKGke14cT%2FXuxbH4w5qfkvybCbQVmiFK%2Fimg.png">
<hr>

## 메모리
