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

## Context Switching(컨텍스트 스위칭)
 - Context Switching은 인터럽트(Interupt)를 발생시켜 CPU에서 실행중인 프로세스를 중단하고, 다른 프로세스를 처리하기 위한 과정
 - Contest Switching은 현재 실행중인 프로세스의 상태(Context)를 먼저 저장하고, 다음 프로세스를 동작시켜 작업을 처리한 후에 이전에 저장된 프로세스의 상태를 다시 복구
 - Interupt(인터럽트) : CPU가 프로세스를 실행하고 있을 때, 입출력 하드웨어 등의 장치나 예외상황이 발생하여 처리가 필요함을 CPU에게 알리는 것
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F6fjl1%2FbtqKC9ZqMz9%2F2I1k55j4tMdvnXZD2KyYk1%2Fimg.png">
<hr>

## Multi Process(멀티 프로세스) vs Multi Thread(멀티 쓰레드)
 - 멀티 프로세스
    1. 정의 : 하나의 프로그램을 여러 개의 프로세스로 구성하여 각 프로세스가 1개의 작업을 처리하도록 하는 것
    2. 특징
        - 1개의 프로세스가 죽어도 자식 프로세스 이외의 다른 프로세스들은 계속 실행
        - Contest Switching을 위한 오버헤드(캐시 초기화, 인터럽트 등)가 발생
        - 프로세스는 각각 독립적인 메모리를 할당받았기 때문에 통신이 어려움
 - 멀티 쓰레드
    1. 정의 : 하나의 프로그램을 여러 개의 쓰레드로 구성하여 각 쓰레드가 1개의 작업을 처리하도록 하는 것
    2. 특징
        - 프로세스를 위해 자원을 할당하는 시스템콜이나 Context Switching의 오버헤드를 줄일 수 있다.
        - 쓰레드는 메모리를 공유하기 때문에 통신이 쉽고 자원을 효율적으로 사용 가능
        - 하나의 쓰레드에 문제가 생기면 전체 프로세스가 영향을 받는다
        - 여러 쓰레드가 하나의 자원에 동시에 접근하는 경우 자원 공유(동기화)의 문제가 발생 가능
<hr>

## DeadLock(데드락)
 - DeadLock 또는 교착상태란 한정된 자원을 여러 프로세스가 사용하고자 할 때 발생하는 상황
 - 프로세스가 자원을 얻기 위해 영구적으로 기다리는 상태
 - Ex) 자원 A를 가진 프로세스 P1과 자원 B를 가진 프로세스 P2가 있을 때, P1은 B를 필요로 하고 P2는 A를 필요로 한다면 두 프로세스 P1, P2는 서로 자원을 얻기위해 무한정 대기
<hr>

## 멀티 쓰레드 프로그래밍 작성 시 유의점
 - 멀티 쓰레드 프로그램 개발 시, 다수의 쓰레드가 공유 데이터에 동시에 접근하는 경우에 상호 배제를 제거해 교착 상태를 예방하고 동기화 기법을 통해 동시성 문제가 발생하지 않도록 주의
<hr>

## Mutex(뮤텍스) vs Semaphore(세마포어) 
 - 뮤텍스는 Locking 메커니즘으로 락을 걸은 쓰레드만이 임계 영역을 나갈 때 락을 해제 가능
 - 세마포어는 Signaling 메커니즘으로 락을 걸지 않은 쓰레드도 signal을 사용해 락을 해제할 수 있음
 - 세마포어의 카운트를 1로 설정하면 뮤텍스처럼 활용 가능
<hr>

## CPU의 메모리 I/O 도중 생기는 병목 현상 해결 방법
 - 위의 문제를 해결하기 위해 메모리를 계층화하여 병목현상을 해결
 - 자주 접근하는 데이터의 경우 캐시에 저장하여 접근 속도를 향상시킴으로써 부하를 줄인다.
<hr>

