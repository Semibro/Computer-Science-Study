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
 - TCP는 신뢰성이 중요한 파일 교환과 같은 경우에 사용<br>
 - UDP는 비연결형 서비스로 3-way handshaking을 사용하지 않기 때문에 신뢰성이 떨어지는 단점.
 - 하지만 수신 여부를 확인하지 않기 때문에 속도가 빠르다.
 - UDP는 실시간성이 중요한 스트리밍에 자주 사용
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F9a0c2%2FbtqKIpf6QGI%2Fv5akvGVZj4kVVvAzLVThF1%2Fimg.png">
<hr>

