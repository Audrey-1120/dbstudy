-- 데이터타입 변환 함수

/*
    DUAL 테이블
    1. 테이블이 필요 없는 경우에 사용하는 테이블
    2. 테이블이 필요 없는 조회(DQL)의 경우에도 FROM절까지 작성해야 하는데 이때 사용한다.
    3. 1개의 열(COLUMN)과 1개의 행(ROW)로 구성되어 있다.
    4. DUMMY 칼럼
       X     값
*/

/*
    1. 문자 -> 숫자 변환
        TO_NUMBER(문자)
*/
SELECT '100', TO_NUMBER('100')
  FROM DUAL;
  
-- 아래 쿼리는
SELECT *
  FROM DEPARTMENT_T
 WHERE DEPT_NO = '1';
 
-- 이렇게 바뀐 뒤에 실행된다.
SELECT *
  FROM DEPARTMENT_T
 WHERE DEPT_NO = TO_NUMBER('1');
 
/*

    2. 숫자 -> 문자 변환
        TO_CHAR(숫자, [형식])
*/

SELECT SALARY
  FROM EMPLOYEE_T;
  
SELECT TO_CHAR(SALARY)
     , TO_CHAR(SALARY, '99999999')
     , TO_CHAR(SALARY, '00000000')
     , TO_CHAR(SALARY, '9,999,999')
     , TO_CHAR(SALARY, '999,999')
  FROM EMPLOYEE_T;
  
/*
    3. 문자 ->  날짜 변환
        TO_DATE(문자, [형식])
        
        *날짜/시간 형식
        1) YY : 년도 2자리
        2) YYYY : 년도 4자리
        3) MM : 월 2자리
        4) DD : 일 2자리
        5) AM : 오전 / 오후
        6) HH : 12시간(01~12)
        7) HH24 : 24시간(00~23)
        8) MI : 분 2자리
        9) SS : 초 2자리
        10) FF3 : 밀리초 3자리
        
*/

SELECT HIRE_DATE
  FROM EMPLOYEE_T;
  
SELECT TO_DATE(HIRE_DATE)
     , TO_DATE(HIRE_DATE, 'YY/MM/DD')   -- 입력된 값을 년도/월/일로 해석
     , TO_DATE(HIRE_DATE, 'YY/DD/MM')   -- 입력된 값을 년도/일/월로 해석
     , TO_DATE(HIRE_DATE, 'HH/MI/SS')   -- 입력된 값을 시/분/초 로 해석(오류발생)
  FROM EMPLOYEE_T;
  

/*
    4. 날짜 ->  문자 변환
        TO_CHAR(날짜, [형식])
        
        *현재 날짜/시간 함수
            1) SYSDATE
            2) SYSTIMESTAMP
*/


SELECT SYSDATE
     , TO_CHAR(SYSDATE, 'YYYY-MM-DD AM HH:MI:SS')
     , TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD AM HH:MI:SS.FF3')
  FROM DUAL;
















