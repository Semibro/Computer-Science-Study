/* SQL Injection이란 공격자가 악의적인 의도를 갖는 구문을 삽입하여 공격자가
원하는 SQL을 실행하도록 하는 웹해킹기법.
예를 들어 아래와 같은 간단한 SQL문이 있을 때 INPUT1에 'OR1=1--을 넣는 것*/
SELECT * FROM USER WHERE ID = 'INPUT1' AND PASSWORD = 'INPUT2'

SELECT * FROM USER WHERE ID = " OR 1=1 --INPUT1' AND PASSWORD = 'INPUT2'

/* INPUT1으로 'OR 1=1--을 넣으면 보이는 것처럼 뒤의 내용은 주석처리가 되고
WEHRE문은 항상 참이 됩니다.
이러한 공격을 방직하기 위해 특수문자 및 SQL 예약어들을 필터링하거나 SQL오류 메세지를
노출하지 않는 등의 방법을 취해야합니다. */