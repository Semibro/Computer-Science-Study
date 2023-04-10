# 네트워크

## 웹 동작 방식
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdmomKO%2FbtqK84xb9yy%2FktAElZQp6AFyxgXG35eORk%2Fimg.png">
1. 사용자가 브라우저에 URL을 입력
2. 브라우저는 DNS를 통해 서버의 진짜 주소를 찾음
3. HHTP 프로토콜을 사용하여 HTTP 요청 메세지를 생성
4. TCP/IP 연결을 통해 HTTP요청이 서버로 전송
5. 서버는 HTTP 프로토콜을 활용해 HTTP 응답 메세지를 생성
6. TCP/IP 연결을 통해 요청한 컴퓨터로 전송
7. 도착한 HTTP 응답 메세지는 웹페이지 데이터로 변환, 웹 브라우저에 의해 출력되어 사용자가 볼 수 있게 됨