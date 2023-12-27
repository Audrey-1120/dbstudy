/*
    테이블(table)
    1.  관계형 데이터베이스에서 데이터를 저장하는 객체이다.
    2.  표 형식을 가진다.
    3.  행(Row)과 열(Column)의 집합 형식이다.
*/
/*
    테이블 만들기
    1. 열(Column)을 만드는 과정이다.
    2. 테이블 만드는 쿼리문 
        CREATE TABLE 테이블명  (  
            칼럼이름1 데이터타입 제약조건, 
            칼럼이름2 데이터타입 제약조건, 
            ...
        );
*/
/* 
    데이터타입
    1.  NUMBER (p, s) : 정밀도가 p이고, 스케일이 s인 숫자 (일반적으로 정밀도, 스케일은 제외함.)
        1) 정밀도 p : 전체 유효 숫자
            ex) 123은 유효숫자 3, 0123은 유효숫자 3.
            ex2) 1.2는 유효숫자는 2.
        2) 스케일 s : 소수부의 유효숫자.
            ex) 1.2 - P:2, S:1 / 전체 2자리, 소수점 1자리.  -> NUMBER(2,1)
            ex2) NUMBER(2,2) -> 0.XX (이때 0은 유효숫자에 들어가지 않음)
        3) 스케일만 생략하면 정수로 표시하는 숫자.
            ex3) NUMBER(3) -> 스케일이 생략된 상태. 최대 세자리이며 소수점 없음. 0~999
        4) 정밀도와 스케일을 생략하면 정수, 실수 모두 표시할 수 있는 숫자.
            
    
    2. CHAR(size) : 글자수가 최대 size인 고정 문자
        1) 고정 문자 : 글자수의 변동이 적은 문자(예시 : 휴대전화번호, 주민번호 등)
        2) 최대 size : 2000 byte
        
    3. VARCHAR2(size) : 글자수가 최대 size인 가변 문자
        1) 가변 문자 : 글자수의 변동이 큰 문자(예시 : 이름, 주소 등)
        2) 최대 size : 4000 byte
        
        char(5)         varchar2(5)
        'abc'               'abc'
        'abc'     ===   'abc'   -> false
        char은 정해진 문자열 크기를 맞춘다. 만약 size가 5이면, abc__ 이런식으로 공백 두자리를 넣어서 맞춘다.
        
        4. CLOB : VARCHAR2(size)로 처리할 수 없는 큰 문자. (4000byte가 넘어가는 데이터가 들어올 때)
        5. DATE : 날짜/시간(년,월,일,시,분,초)
        6. TIMESTAMP : 정밀한 날짜/시간(년,월,일,시,분,초,마이크로초(백만분의 1초))
        
        
*/

/*

    제약조건 5가지
    1. NOT NULL : 필수 입력
    2. UNIQUE : 중복 불가
    3. PRIMARY KEY : 기본키, 어떤 데이터를 구분하는 식별자. (NOT NULL과 UNIQUE키가 합쳐진 것.)
        ex) 주민등록번호, 제품번호
    4. FOREIGN KEY : 외래키
    5. CHECK : 작성한 조건으로 값의 제한

*/

--블로그 구현을 위한 블로그 테이블
CREATE TABLE BLOG_T (
    BLOG_NO NUMBER NOT NULL PRIMARY KEY,
    TITLE VARCHAR2(100 BYTE) NOT NULL,
    EDITOR VARCHAR2(100 BYTE) NOT NULL,
    CONTENTS CLOB NULL,             --NULL은 생략 가능
    CREATED DATE NOT NULL
    );


--블로그 테이블 삭제
DROP TABLE BLOG_T;













