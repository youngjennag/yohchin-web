/* %ROWCOUNT属性 */
CREATE or REPLACE PROCEDURE PROC_SAMPLE
IS
    CURSOR c1 IS SELECT * FROM emp;
    wRec emp%ROWTYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO wRec; -- 1行データを取得
        EXIT WHEN c1%NOTFOUND;  -- もしデータがもう無ければループを終了
        DBMS_OUTPUT.PUT_LINE(wRec.emp_no || ':' || wRec.emp_name);   
    END LOOP;
    CLOSE c1;
END;
/

BEGIN
    PROC_SAMPLE;
END;
/