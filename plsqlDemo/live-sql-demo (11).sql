/* 添え字が数値型の連想配列*/
DECLARE
    -- VARCHAR2(20) 型の文字列を格納する連想配列型を定義
    TYPE my_code IS TABLE OF VARCHAR2(20) INDEX BY BINARY_INTEGER;
    -- 上で定義した型の変数を宣言
    v_codes my_code;
BEGIN
    -- 配列の要素に値を代入
    v_codes(1) := 'AAA';
    v_codes(2) := 'BBB';
    v_codes(100) := 'ZZZ';

    -- 要素を出力
    DBMS_OUTPUT.PUT_LINE(v_codes(1));
    DBMS_OUTPUT.PUT_LINE(v_codes(100));
END;
/