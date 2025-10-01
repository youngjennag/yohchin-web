/* IF文1*/
DECLARE
    MESSAGE VARCHAR2(10);
BEGIN
    MESSAGE := 'banana';
    IF MESSAGE = 'apple' THEN
        DBMS_OUTPUT.PUT_LINE('messageはapple です');
    ELSIF MESSAGE = 'orange' THEN
        DBMS_OUTPUT.PUT_LINE('messageはorange です');
    ELSE
        DBMS_OUTPUT.PUT_LINE('messageはapple でもorange でもありません');
    END IF;

END;