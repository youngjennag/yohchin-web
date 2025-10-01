/* IF文のサンプル */
CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    w_EMPNO emp.emp_no%TYPE := '002';
    w_SEX emp.emp_sex%TYPE;
 
BEGIN
    SELECT emp_sex INTO w_SEX FROM emp
    WHERE emp_no = w_EMPNO;
     
    IF w_SEX = '1' THEN
        DBMS_OUTPUT.PUT_LINE('男');
    ELSIF w_SEX = '2' THEN
        DBMS_OUTPUT.PUT_LINE('女');
    ELSE
        DBMS_OUTPUT.PUT_LINE('不明');
    END IF;
   
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/
BEGIN
    PROC_SAMPLE();
END;
/