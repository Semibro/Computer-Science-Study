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
REST(REpresentational State Transfer)ful API는 HTTP 통신에서 어떤 자원에 대한 CRUD 요청을 Resource와 Method로 표현하여 특정한 형태로 전달하는 방식.

<RESTful API 구성요소>
 - Resource(자원, URL)
 - Method(요청 방식, GET or POST 등)
 - Representation or Resource(자원의 형태, JSON or XML 등)
<hr>

## 함수형 프로그래밍
함수형 프로그래밍의 가장 큰 특징은 immutable data와 first class citizen으로서의 함수.
함수형 프로그래밍은 부수효과가 없는 순수 함수를 이용하여 프로그램을 만드는 것.
부수 효과가 없는 순수 함수란 데이터의 값을 변경시키지 않으며 객체의 필드를 설정하는 등의 작업을 하지 않는 함수를 의미한다.
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

