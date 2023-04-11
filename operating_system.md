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
 - 메모리는 컴퓨터에서 작업을 수행하기 위해 처리 대상이나 결과 등을 저장하기 위한 공간
 - 프로그램을 실행하기 위한 정보들은 메모리에 저장되어 처리

## 프로세스(Process) vs 쓰레드(Thread)
 - 프로세스
    1. 정의 : 메모리에 올라와 실행되고 있는 프로그램의 인스턴스
    2. 특징
        - 운영체제로부터 독립된 메모리 영역을 할당
        - 프로세스들은 독립적이기 때문에 통신하기 위해 IPC를 사용
        - 프로세스는 최소 1개의 쓰레드(메인 쓰레드)를 가짐
 - 쓰레드
    1. 정의 : 프로세스 내에서 할당받은 자원을 이용해 동작하는 실행 단위
    2. 특징
        - 쓰레드는 프로세스 내에서 Stack만 할당 받고, Code, Data, Heap 영역은 공유 (Stack을 분리하는 이유는 Stack에는 함수의 호출 정보가 저장되는데 Stack을 공유하면 LIFO 구조에 의해 실행 순서가 복잡해지기 때문에 실행 흐름을 원할하게 만들기 위함)
        - 쓰레드는 프로세스의 자원을 공유하기 때문에 다른 쓰레드에 의한 결과를 즉시 확인 가능
        - 프로세스 내에 존재하며 프로세스가 할당받은 자원을 이용하여 실행
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fbpie8u%2FbtqKEyScItU%2FISOD7DfzGuBuPdWEfGnZxk%2Fimg.jpg">
<hr>

