/* %ROWCOUNT属性のサンプル */
CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS 
CURSOR c1 IS SELECT * FROM emp;
    wRec emp%ROWTYPE;
BEGIN
    OPEN c1;
    LOOP
        fetch c1 into wRec;
        IF c1%FOUND THEN
            DBMS_OUTPUT.PUT_liNE(wRec.EMP_NO || ':' || wRec.EMP_NAME);
        ELSE
            EXIT;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_liNE('データ件数=' || c1%ROWCOUNT);
    CLOSE c1;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_liNE('Error');
END;
/

BEGIN
    PROC_SAMPLE;
END;
/