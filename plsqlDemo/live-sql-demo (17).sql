/* %FOUND属性を使ったカーソル処理サンプル */
CREATE OR REPLACE PROCEDURE PROC_SAMPLE
IS
    CURSOR c1 IS SELECT * FROM emp; -- empテーブル全件を取得するカーソル
    wRec emp%ROWTYPE; -- 1行分のレコード格納用変数
 
BEGIN
    OPEN c1; -- カーソルをオープン
        LOOP 
            FETCH c1 INTO wRec; -- 1行データをwRecに取得
            IF c1%FOUND THEN -- 直前のFETCHでデータが取得できたか判定
                DBMS_OUTPUT.PUT_LINE(wRec.emp_no || ':' || wRec.emp_name); -- 取得データを出力
            ELSE
                EXIT; -- データが無ければループ終了
            END IF;
        END LOOP; 
    CLOSE c1; -- カーソルをクローズ
 
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error'); -- 例外処理
END;
/

-- プロシージャ呼び出し
BEGIN
    PROC_SAMPLE; -- 引数なしのため括弧は不要
END;
/