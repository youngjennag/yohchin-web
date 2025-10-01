/* %TYPE属性で変数を定義する */
CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    w_EMPNO emp.emp_no%TYPE := '001'; -- 社員番号
    w_NAME  emp.emp_name%TYPE;        -- 氏名
 
BEGIN
    SELECT emp_name INTO w_NAME FROM emp
    WHERE emp_no = w_EMPNO;
     
    DBMS_OUTPUT.PUT_LINE(w_NAME);
 
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/

BEGIN
    PROC_SAMPLE();
END;
/