

-- 사원 테이블
CREATE TABLE EMPLOYEE_T (
    EMP_NO NUMBER NOT NULL PRIMARY KEY,
    DEPT_NO VARCHAR2(15) REFERENCES DEPARTMENT_T(DEPT_NO) ON DELETE SET NULL, --부서가 없어진다고 해서 사원을 지우지는 않음.
    POSITION CHAR(10),
    NAME VARCHAR2(15),
    HIRE_DATE DATE,
    SALARY NUMBER
);

-- 부서 테이블
CREATE TABLE DEPARTMENT_T (
    DEPT_NO VARCHAR2(15) NOT NULL PRIMARY KEY,
    DEPT_NAME VARCHAR2(30),
    DEPT_LOCATION VARCHAR2(50)

);

-- 프로젝트 테이블
CREATE TABLE PROJECT_T (
    PJT_NO NUMBER NOT NULL PRIMARY KEY,
    PJT_NAME VARCHAR2(30),
    BEGIN_DATE DATE,
    END_DATE DATE
);

-- 프로젝트 진행 테이블
CREATE TABLE PROCEEDING_T (
    PCD_NO NUMBER NOT NULL PRIMARY KEY,
    EMP_NO NUMBER REFERENCES EMPLOYEE_T(EMP_NO) ON DELETE CASCADE, --사원이 지워지면 그냥 내역을 삭제
    PJT_NO NUMBER REFERENCES PROJECT_T(PJT_NO) ON DELETE SET NULL, --프로젝트가 없어지면 참여했었던 사원의 정보는 남겨둔다.
    PJT_STATE NUMBER NOT NULL
);

--프로젝트 진행 테이블 삭제
DROP TABLE PROCEEDING_T;
--프로젝트 테이블 삭제
DROP TABLE PROJECT_T;
--사원 테이블 삭제
DROP TABLE EMPLOYEE_T;
--부서 테이블 삭제
DROP TABLE DEPARTMENT_T;















