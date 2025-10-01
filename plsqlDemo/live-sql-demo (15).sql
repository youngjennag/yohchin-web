/* エラーが発生したらエラーコードとエラーメッセージを出力する。*/

CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    w_EMPNO emp.emp_no%TYPE := '999'; -- 存在しない社員番号
    w_NAME emp.emp_name%TYPE;
   
BEGIN
    SELECT emp_name INTO w_NAME FROM emp
    WHERE emp_no = w_EMPNO;
       
    DBMS_OUTPUT.PUT_LINE(w_NAME);
   
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE || ':' || SQLERRM);
        -- ORA-01403: データが見つかりません。
END;
/

BEGIN
    PROC_SAMPLE;
END;
/