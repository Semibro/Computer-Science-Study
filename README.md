# Computer Science Study Repository

## OOP?
OOP는 현실 세계를 프로그래밍으로 옮겨와 현실 세계의 사물들을 객체로 보고, 그 객체로부터 개발하고자 하는 특징과 기능을 뽑아와 프로그래밍하는 기법

<OOP의 5가지 설계 원칙>
1. SRP(Single Responsibility Principle, 단일 책임 원칙) : 클래스는 단 하나의 목적을 가져야 한다. 클래스를 변경하는 이유는 단 한가지여야 한다.
2. OCP(Open Close Principle, 개방 폐쇠 원칙) : 클래스는 확장에 열려있고, 변경에는 닫혀있어야 한다.
3. LSP(Liskov Substitution Principle, 리스코프 치환 원칙) : 상위 타입의 객체를 하위 타입으로 바꾸어도 프로그램은 일관되게 동작해야 한다.
4. ISP(Interface Segregation Principle, 인터페이스 분리 원칙) : 클라이언트는 이용하지 않는 메소드에 의존하지 않도록 인터페이스를 분리해야 한다.
5. DIP(Dependancy Inversion Principle, 의존 역전 원칙) : 클라이언트는 추상화(인터페이스)에 의존해야 하며, 구체화(구현된 클래스)에 의존해서는 안된다.
<hr>

## 절차지향 언어(Procedural Programming)
 - 절자치향 프로그래밍은 개체를 순차적으로 처리하여 프로그램 전체가 유기적으로 연결되어야 한다.
 - 대표적인 예로 C언어가 있다.
 - 절차지향 프로그래밍의 구조는 컴퓨터의 처리구조와 유사하다. 따라서 실행 속도가 빠르다는 장점이 있다.
 - 절차지향 프로그래밍은 유지 보수가 매우 까다롭고, 디버깅이 어렵다.
 - 실행 순서가 정해져 있기 때문에 순서가 바뀌면 결과가 달라진다.

## 객체지향 언어(Object-Oriented Language)
 - 객체지향 프로그래밍은 프로그램을 다수의 객체로 만들고, 이들끼리 서로 상호작용하도록 만드는 프로그래밍 언어
 - 대표적인 예로 JAVA, C++등이 있다.
 - 객체지향 언어의 특징
    1. 캡슐화
        데이터와 알고리즘을 하나로 묶어 하나의 캡슐처럼 만드는 것.
    2. 상속
        상위 클래스의 모든 것을 하위 클래스가 이어 받는 것.
    3. 다형성
        상속과 연관된 개념. 하나의 객체가 다른 여러 객체로 재구성되는 것.
    4. 추상화
        프로그램을 만드는데 필요한(공통적인) 부분만 파악해서 추출하고 필요하지 않은 것은 제거하는 것.
 - 장점
    1. 재사용성
        상속이 가능해 코드를 재사용할 수 있어서 편리하다.
    2. 생산성 증가
        독립된 객체로 이루어져있기 때문에 생산적으로 작업할 수 있고, 유지 보수가 용이하다.
    3. 자연스러운 모델링
        개발자가 생각하는 대로 자연스럽게 구현할 수 있다.
 - 단점
    1. 느린 개발 속도
        모든 객체의 역할과 기능을 이해해야 하기 때문에 프로그래밍에 많은 시간이 소요된다.
    2. 느린 실행 속도
        절차지향 언어보다 느리다.
    3. 높은 난이도
        객체지향언어는 대체로 난이도가 높다. 특히 다중 상속 지원이 되는 C++이 대표적인 예시다.
<hr>

## RESTful API
 - REST(REpresentational State Transfer)ful API는 HTTP 통신에서 어떤 자원에 대한 CRUD 요청을 Resource와 Method로 표현하여 특정한 형태로 전달하는 방식.

<RESTful API 구성요소>
 - Resource(자원, URL)
 - Method(요청 방식, GET or POST 등)
 - Representation or Resource(자원의 형태, JSON or XML 등)
<hr>

## 함수형 프로그래밍
 - 함수형 프로그래밍의 가장 큰 특징은 immutable data와 first class citizen으로서의 함수.
 - 함수형 프로그래밍은 부수효과가 없는 순수 함수를 이용하여 프로그램을 만드는 것.
 - 부수 효과가 없는 순수 함수란 데이터의 값을 변경시키지 않으며 객체의 필드를 설정하는 등의 작업을 하지 않는 함수를 의미한다.
<hr>

## 메모리 구조
메모리 구조는 4개의 영역으로 볼 수 있다.
 - 코드 영역 : 실행할 프로그램의 코드가 저장되는 영역으로 텍스트 영역이라고도 부른다. 사용자가 프로그램 실행 명령을 내리면 OS가 HDD에서 메모리로 실행 코드를 올리게 되고, CPU는 코드 영역에 저장된 명령어를 하나씩 처리한다.
 - 데이터 영역 : 프로그램의 전역 변수(global)와 정적 변수(static)가 저장되는 영역. 데이터 영역은 프로그램의 시작과 함께 할당되며, 프로그램이 종료되면 소멸
 - 힙 영역 : 프로그래머가 직접 관리할 수 있는 메모리 영역으로 이 공간에 메모리를 할당하는 것을 동적할당이라고 한다. JAVA에서는 가바지 컬렉터가 자동으로 해체해준다. 힙 영역은 스택 영역과 달리 낮은 주소에서 높은 주소로 메모리가 할당된다.
 - 스태 영역 : 함수의 호출과 함께 할당되며 지역 변수와 매개 변수가 저장되는 영역. 스택 영역에 저장되는 함수의 호출 정보를 스택프레임이라고 한다. 스택 영역은 함수의 호출이 완료되면 소멸한다. 스택 영역은 높은 주소에서 낮은 주소로 메모리가 할당된다.
<hr>

## Parameter와 Argument의 차이
 - Parameter : 함수를 선언할 때 사용된 변수
 - Argument : 함수가 호출되었을 때 함수의 파라미터로 전달된 실제 값
<hr>

## Call by Value와 Call by Reference의 차이
 - Call by Value
    1. 인자로 받은 값을 복사하여 처리하는 방식
    2. Call by Value에 의해 넘어온 값을 증가시켜도 원래의 값이 보존
    3. 값을 복사하여 넘기기 때문에 메모리 사용량이 늘어남
 - Call by Reference
    1. 인자로 받은 값의 주소를 참조하여 직접 값에 영향을 주는 방식
    2. 값을 복사하지 않고 직접 참조하기 때문에 속도가 빠름
    3. 원래의 값에 영향을 주는 리스크가 존재
<hr>

## 프레임워크와 라이브러리 차이
 - 프레임워크 : 전체적인 흐름을 자체적으로 제어
 - 라이브러리 : 사용자가 흐름에 대한 제어를 하며 필요한 상황에 가져다 쓸 수 있음
※ 프레임워크와 라이브러리는 실행 흐름에 대한 제어 권한이 어디에 있는지에 따라 달라진다. 프레임워크를 사용하면 사용자가 관리해야 하는 부분을 프레임워크에 넘김으로써 신경써야할 것을 줄이는 제어의 역전(IoC, Inversion of Control)이 적용된다.
<hr>

## 병렬처리 프레임워크의 종류와 특징
 - Hadoop
    1. HDFS(Hadoop Distributed File System)를 활용해 데이터를 주고 받는다.
    2. 데이터가 여러 노드에 분산되어 저장되기 때문에 손실의 우려가 없다는 장점이 있다.
    3. 하지만 File I/O를 기반으로 작동하기 때문에 처리 속도가 느리다.
 - Spark
    1. In-Memory상에서 데이터를 주고받고 연산을 수행
    2. 메모리를 사용해 데이터를 처리하기 때문에 Hadoop보다 속도가 약 100배 정도 빠름
    3. 하지만 메모리상에서 처리하기 때문에 장애가 발생한 경우 응용 프로그램을 처음부터 다시 시작해야 한다는 단점이 있음
<hr>

## 동기와 비동기의 차이
 - 동기(Synchronous) 방식
    1. 요청을 보내고 실행이 끝나면 다음 동작을 처리하는 방식
    2. 순서에 맞추어 진행되기 때문에 제어하기 쉽다
    3. 여러가지 요청을 동시에 처리할 수 없어 효율이 떨어진다
 - 비동기(Asynchronous) 방식
    1. 요청을 보내고 해당 동작의 처리 여부와 상관없이 다음 요청이 동작하는 방식
    2. 작업이 완료되는 시간을 기다릴 필요가 없기 때문에 자원을 효율적으로 사용
    3. 작업이 완료된 결과를 제어하기 어렵다
<hr>

## 메세지 큐(Message Queue)
 - 메세지 큐란 Queue 자료구조를 이용하여 데이터(메세지)를 관리하는 시스템으로 비동기 통신 프로토콜을 제고아여 메세지를 빠르게 주고 받을 수 있게 해준다.
 - 메세지 큐에서는 Producer(생산자)가 Message를 Queue에 넣어두면, Consumer가 Message를 가져와 처리하게 된다.
 - 메세지 큐에는 Kafka, Rabbit MQ, AMPQ 등이 있다.
<hr>

## Docker(도커)와 Kubernates(쿠버네티스)
 - Docker
    1. 도커는 컨테이너 기반의 가상화 기술
    2. 기존에는 하드웽를 가상화하였기 때문에 Host OS위에 Guest OS를 설치해야 했지만, 이러한 방식은 상당히 무겁고 느려 한계가 많이 있었음
    3. 이를 극복하고자 프로세스를 격리시킨 컨테이너를 통해 가상화를 하는 Docker와 같은 기술이 등장함
    4. 그리고 도커를 통해 구동되는 컨테이너를 관리하기 위한 Kubernates가 등장

<Docker의 장/단점>
 - 장점
    1. 쉽고 빠른 실행 환경 구축
    2. 하드웨어 자원 절감
    3. Docker Hub와 같은 공유 환경 제공
 - 단점
    1. 개발 초기의 오버헤드
    2. Linux 친화적
<hr>

## TDD(Test-Driven Development)
 - TDD는 매우 짧은 개발 사이클의 반복에 의존하는 개발 프로세스
 - 개발자는 우선 요구되는 기능에 대한 테스트케이스를 작성하고, 그에 맞는 코드를 작성하여 테스트를 통과한 후에 상황에 맞게 리팩토링하는 테스트 주도 개발 방식을 의미함.
 - 개발자는 테스트를 작성하기 위해 해당 기능의 요구사항을 확실히 이해해야 하기 때문에 개발 전에 요구상항에 집중할 수 있도록 도와주지만 테스트를 위한 진입 장벽과 작성해야 하는 코드의 증가는 단점으로 뽑힌다.
<hr>

## DDD(Domain-Driven Design)
 - DDD는 실세계에서 사건이 발생하는 집합인 Domain을 중심으로 설계하는 방법
 - 여러 도메인들이 서로 상호작용하며 설계하는 것이 도메인 주도 설계
 - 도메인 주도 설계에서 도메인은 각각 분리되어 있는데, 이러한 관점에서 MAS(MicroService Architecture)를 적용하면 용이한 설계를 할 수 있음
 - 문맥에 따라 객체의 역할이 바뀔 수 있는 것이 DDD
<hr>

## MSA(MicroService Architecture)
 - MSA는 모든 시스템의 구성요소가 한 프로젝트에 통합되어 있는 Monolithic Architecture(모놀리식 아키텍쳐)의 한계점을 극복하고자 등장
 - MSA는 1개의 시스템을 독립적으로 배포가능한 각각의 서비스로 분할
 - 각각의 서비스는 API를 통해 데이터를 주고받으며 1개의 큰 서비스를 구성

<MSA 장/단점>
 - 장점
    1. 일부 서비스에 장애가 발생하여도 전체 서비스에 장애가 발생하지 않는다.
    2. 각각의 서비스들은 서로 다른 언어와 프레임워크로 구성될 수 있다.
    3. 서비스의 확장이 용이하다
 - 단점
    1. 서비스가 분리되어 있어, 테스팅이나 트랜잭션 처리 등이 어렵다.
    2. 서비스 간에 API로 통신하기 때문에 그에 대한 비용이 발생
    3. 서비스 간의 호출이 연속적이기 때문에 디버깅 및 에러 트레이싱이 어렵다.
<hr>

