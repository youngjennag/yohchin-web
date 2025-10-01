/* 事前定義例外の「NO_DATA_FOUND」を指定して
データが見つからない場合はメッセージ「NO_DATA_FOUND」を出力します。*/

CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    w_EMPNO emp.emp_no%TYPE := '999'; -- 存在しない社員番号
    w_NAME emp.emp_name%TYPE;
   
BEGIN
    SELECT emp_name INTO w_NAME FROM emp
    WHERE emp_no = w_EMPNO;
       
    DBMS_OUTPUT.PUT_LINE(w_NAME);
   
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- データが見つからない場合
        DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND');
    WHEN OTHERS THEN
        -- 上記以外のエラーが発生した場合
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/

BEGIN
    PROC_SAMPLE();
END;
/