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

