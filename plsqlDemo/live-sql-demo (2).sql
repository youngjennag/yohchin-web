/* 定数を定義する（CONSTANT) */
CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    con_EMPNO CONSTANT VARCHAR(3) := '001';
    w_EMP emp%ROWTYPE;
 
BEGIN
    SELECT emp_name INTO w_EMP.emp_name FROM emp
    WHERE emp_no = con_EMPNO;
 
    DBMS_OUTPUT.PUT_LINE(w_EMP.emp_name);
 
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/

BEGIN
    PROC_SAMPLE();
END;
/