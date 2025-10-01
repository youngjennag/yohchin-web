/*　無名ブロックで変数を定義する */
DECLARE
    /*　宣言部 */
    W_NAME VARCHAR2(10);
BEGIN
    /*　処理部 */
    W_NAME := 'jenna';
    DBMS_OUTPUT.PUT_LINE(W_NAME);
EXCEPTION
    /*　例外処理部 */
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/

/*　ストアドで変数を定義する */
 CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    /*　宣言部 */
    w_NAME VARCHAR2(10);
 
BEGIN
    /*　処理部 */
    w_NAME := 'you';
    DBMS_OUTPUT.PUT_LINE(w_NAME);
 
EXCEPTION
    /*　例外処理部 */
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/