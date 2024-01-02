/*
    ORDER BY 
    1. 조회 결과를 정렬할 때 사용한다.
    2. 정렬 방식
        1) 오름차순 정렬 : ASC(ASCENDING) 또는 생략
        2) 내림차순 정렬 : DESC(DESCENDING)

*/

-- 1. 연봉이 높은 순으로 사원 정보를 조회하시오.
SELECT *
  FROM EMPLOYEE_T
 ORDER BY SALARY DESC;
 
-- 2. 입사순으로 사원 정보를 조회하시오.
SELECT *
  FROM EMPLOYEE_T
 ORDER BY HIRE_DATE;
 
-- 3. 성별의 오름차순으로 정렬하시오. 동일한 성별 내에서는 이름의 내림차순
SELECT *
  FROM EMPLOYEE_T
 ORDER BY GENDER, NAME DESC;