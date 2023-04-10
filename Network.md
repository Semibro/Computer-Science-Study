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

## HTTP 프로토콜
 - HTTP(Hyper Text Transfer Protocol)이란 서버/클라이언트 모델에 따라 데이터를 주고 받기 위한 프로토콜
 - HTTP는 애플리케이션 레벨의 프로토콜로 TCP/IP 위에서 작동
 - HTTP는 상태를 가지고 있지 않는 Stateless 프로토콜이며 Method, Path, Version, Headers, Body 등으로 구성
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbojmIW%2FbtqJnEz0OK0%2FvDLQNKF9vUU9hmFxZ3x04k%2Fimg.png">
<hr>

## HTTP vs HTTPS
 - HTTP는 평문 데이터를 전송하는 프로토콜이기 때문에, 주로 비밀번호나 주민번호 등을 주고 받으며 제3자에 의해 조회될 수 있음
 - 위의 문제를 해결하기 위해 HTTP에 암호화가 추가된 프로토콜이 HTTPS
 - HTTPS에는 대칭키 암호화와 비대치킹 암호화가 모두 사용
 - 비대칭키 암/복호화는 비용이 매우 크기 때문에 서버와 클라이언트가 주고받는 모든 메세지를 비대칭키로 암호화하며 오버헤드가 발생할 수 있음
 - 서버와 클라이언트가 최초 1회로 서로 대칭키를 공유하기 위한 과정에서 비대칭키 암호화를 사용
 - 이후 메세지를 주고 받을 때는 대칭키 암호화를 사용
<과정 정리>
 1. 클라이언트(브라우저)가 서버로 최초 연결 시도
 2. 서버는 공개키(인증서)를 브라우저에게 넘겨줌
 3. 브라우저는 인증서의 유효성을 검사하고 세션키를 발급
 4. 브라우저는 세션키를 보관하며 추가로 서버의 공개키로 세션키를 암호화하여 서버로 전송
 5. 서버는 개인키로 암호화된 세션키를 복호화하여 세션키를 얻음
 6. 클라이언트와 서버는 동일한 세션키를 공유하므로 데이터를 전달할 때 세션키로 암호화/복호화를 진행
 - 공개키로 암호화된 메세지는 개인키를 가지고 있어야만 복호화가 가능하기 때문에, 서버를 제외한 누구도 원본 데이터를 얻을 수 없다.
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FzQARi%2FbtqLbmEl9Qk%2FR2HOrUGsPt9T8LFW28UMd0%2Fimg.png">
<hr>

## 3-Way-Handshake
 - 3-Way-Handshake란 TCP 네트워크에서 통신을 하는 장치가 서로 연결이 잘 되어있는지 확인하는 방법
 - 송신자와 수신자는 총 3번에 걸쳐 데이터를 주고 받으며 통신이 가능한 상태임을 확인
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FyuxLk%2FbtrnDGYIqAe%2FdoXz5ISKArDOoVVq5SoKp0%2Fimg.png">
<hr>

