/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

SET @old_autocommit=@@autocommit;


/* *************** 1. CREATE SCHEMA(==DATABASE) ****************** */

DROP SCHEMA IF EXISTS scott;
CREATE SCHEMA scott DEFAULT CHARACTER SET utf8mb4;


/* ********************** 2. CREATE USER ************************* */

DROP USER IF EXISTS scott@'%';
CREATE USER scott@'%' IDENTIFIED BY 'scott' ACCOUNT UNLOCK;

GRANT ALL PRIVILEGES ON scott.* TO scott@'%' WITH GRANT OPTION;


/* ********************* 3. CREATE TABLES ************************ */

USE scott;


DROP TABLE IF EXISTS BONUS;
DROP TABLE IF EXISTS EMP;
DROP TABLE IF EXISTS SALGRADE;
DROP TABLE IF EXISTS DEPT;


CREATE TABLE IF NOT EXISTS BONUS (
  ENAME varchar(10) DEFAULT NULL,
  JOB varchar(9) DEFAULT NULL,
  SAL double DEFAULT NULL,
  COMM double DEFAULT NULL
);


CREATE TABLE IF NOT EXISTS DEPT (
  DEPTNO int(11) NOT NULL,
  DNAME varchar(14) DEFAULT NULL,
  LOC varchar(13) DEFAULT NULL,
  PRIMARY KEY (DEPTNO)
);


CREATE TABLE IF NOT EXISTS EMP (
  EMPNO int(11) NOT NULL,
  ENAME varchar(10) DEFAULT NULL,
  JOB varchar(9) DEFAULT NULL,
  MGR int(11) DEFAULT NULL,
  HIREDATE datetime DEFAULT NULL,
  SAL double DEFAULT NULL,
  COMM double DEFAULT NULL,
  DEPTNO int(11) DEFAULT NULL,
  PRIMARY KEY (EMPNO),
  KEY PK_EMP (DEPTNO)
);


CREATE TABLE IF NOT EXISTS SALGRADE (
  GRADE double DEFAULT NULL,
  LOSAL double DEFAULT NULL,
  HISAL double DEFAULT NULL
);


/* ********************* 4. INSERT DATA ************************ */

set autocommit = FALSE;


INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES(40, 'OPERATIONS', 'BOSTON');


INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', 800, NULL, 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', 1600, 300, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', 1250, 500, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', 2975, NULL, 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28 00:00:00', 1250, 1400, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01 00:00:00', 2850, NULL, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09 00:00:00', 2450, NULL, 10);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19 00:00:00', 3000, NULL, 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17 00:00:00', 5000, NULL, 10);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08 00:00:00', 1500, 0, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23 00:00:00', 1100, NULL, 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03 00:00:00', 950, NULL, 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03 00:00:00', 3000, NULL, 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23 00:00:00', 1300, NULL, 10);

INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES (1, 700, 1200);
INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES(2, 1201, 1400);
INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES(3, 1401, 2000);
INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES(4, 2001, 3000);
INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES(5, 3001, 9999);


COMMIT;


/* ********************* 5. FOREIGN KEYS ************************ */

ALTER TABLE EMP   
    ADD CONSTRAINT PK_EMP 
        FOREIGN KEY (DEPTNO) 
        REFERENCES DEPT (DEPTNO) 
        ON DELETE SET NULL 
        ON UPDATE CASCADE;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

SET autocommit=@old_autocommit;


