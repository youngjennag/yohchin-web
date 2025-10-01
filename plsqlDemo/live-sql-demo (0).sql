/* ストアドプロシージャ
引数で受け取った社員番号(IN_NO)に対応する
生年月日から「生まれ年」を取得する
*/
CREATE OR REPLACE PROCEDURE PROC_GET_INFO (
    IN_NO    IN VARCHAR2,   -- 入力パラメータ（社員番号）
    OUT_INFO OUT VARCHAR2    -- 出力パラメータ（生まれ年）
) IS
    -- EMPテーブル全件を参照するカーソル定義
    CURSOR C1 IS SELECT * FROM EMP;
BEGIN
    -- カーソルを使ってレコードを1行ずつ処理
    FOR REC IN C1 LOOP
        -- 引数で受け取った社員番号と一致する行を探す
        IF REC.EMP_NO = IN_NO THEN
            -- 生年月日(EMP_BIRTHDAY)を「YYYY」形式に変換してOUT_INFOへ代入
            OUT_INFO := TO_CHAR(REC.EMP_BIRTHDAY, 'YYYY');
        END IF;
    END LOOP;
    -- OUT_INFOに入った年を画面に出力
    DBMS_OUTPUT.PUT_LINE(OUT_INFO || '年生まれ');
EXCEPTION
    -- 何らかの例外が発生した場合の処理
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;
/

/*
  プロシージャ呼び出し部
  社員番号 '002' を指定し、OUT_INFO に結果を受け取る
*/

BEGIN
    PROC_GET_INFO('002', :OUT_INFO);
END;
/