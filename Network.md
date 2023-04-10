# 네트워크

## 웹 동작 방식
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdmomKO%2FbtqK84xb9yy%2FktAElZQp6AFyxgXG35eORk%2Fimg.png">
 
1. 사용자가 브라우저에 URL을 입력<br>
2. 브라우저는 DNS를 통해 서버의 진짜 주소를 찾음<br>
3. HHTP 프로토콜을 사용하여 HTTP 요청 메세지를 생성<br>
4. TCP/IP 연결을 통해 HTTP요청이 서버로 전송<br>
5. 서버는 HTTP 프로토콜을 활용해 HTTP 응답 메세지를 생성<br>
6. TCP/IP 연결을 통해 요청한 컴퓨터로 전송<br>
7. 도착한 HTTP 응답 메세지는 웹페이지 데이터로 변환, 웹 브라우저에 의해 출력되어 사용자가 볼 수 있게 됨
<hr>

## TCP vs UDP
 - TCP는 연결형 서비스로 3-way handshakin 과정을 통해 연결을 설정
 - 높은 신뢰성을 보장하지만 속도가 비교적 느리다는 단점
 - TCP는 신뢰성이 중요한 파일 교환과 같은 경우에 사용
 - UDP는 비연결형 서비스로 3-way handshaking을 사용하지 않기 때문에 신뢰성이 떨어지는 단점.
 - 하지만 수신 여부를 확인하지 않기 때문에 속도가 빠르다.
 - UDP는 실시간성이 중요한 스트리밍에 자주 사용
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F9a0c2%2FbtqKIpf6QGI%2Fv5akvGVZj4kVVvAzLVThF1%2Fimg.png">
<hr>

## GET vs POST
 - GET은 데이터를 조회하기 위해 사용되는 방식으로 데이터를 헤더에 추가하여 전송하는 방식
 - URL에 데이터가 노출되기 때문에 보안적으로 중요한 데이터를 포함해서는 안됨
 - POST는 데이터를 추가 또는 수적하기 위해 사용되는 방식으로 데이터를 바디에 추가하여 전송하는 방식
 - 완전히 안전한 것은 아니지만 URL에 데이터가 노출되지 않아 GET보다는 안전
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FQbowq%2Fbtq0A3i1wLQ%2FUr5qXVR6TPGeXkdOxGKZak%2Fimg.png">
<hr>

## 공인IP vs 사설IP
 - 공인IP
    1. 전세계에서 유일한 IP로 ISP(인터넷 서비스 공급자)가 제공하는 IP주소
    2. 외부에 공개되어 있기 때문에 인터넷에 연결된 다른 장비로부터 접근이 가능
    3. 그에 따라 방화벽 등과 같은 보안 설정을 해줘야 함
 - 사설IP
    1. 어떤 네트워크 안에서 사용되는 IP주소
    2. IPV4의 부족으로 인해 모든 네트워크가 공인 IP를 사용하는 것이 불가능하기 때문에 네트워크 안에서 라우터를 통해 할당받은 가상의 주소
    3. 별도의 설정 없이는 외부에서 접근이 불가능
<hr>

## OSI 7계층
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fbq5dyv%2FbtqJls7HC1T%2FcTY7UKcQ4ZxmgxtenNf9MK%2Fimg.jpg">
 
 - 7계층(응용 계층) : 사용자와 직접 상호작용하는 응용 프로그램들이 포함된 계층
 - 6계층(표현 계층) : 데이터의 형식(Format)을 정의하는 계층
 - 5계층(세션 계층) : 컴퓨터끼리 통신을 하기 위해 세션을 만드는 계층
 - 4계층(전송 계층) : 최종 수신 프로세스로 데이터의 전송을 담당하는 계층
 - 3계층(네트워크 계층) : 패킷을 목적지까지 가장 빠른 길로 전송하기 위한 계층
 - 2계층(데이터링크 계층) : 데이터의 물리적인 전송과 에러 검출, 흐름 제어를 담당하는 계층
 - 1계층(물리 계층) : 데이터를 전기 신호로 바꾸어주는 계층
<hr>

