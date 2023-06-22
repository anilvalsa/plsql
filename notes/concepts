----       control statements     ------
---loops
IF THEN
IF THEN ELSE
IF THEN ELSEIF

-- CASE statement has 2 different forms such as
SIMPLE CASE and
SEARCHED CASE

---  IF THEN
IF v_num < 10 THEN
 DBMS_OUTPUT.PUT_LINE('Inside The IF');
 END IF;
 DBMS_OUTPUT.PUT_LINE('outside The IF');

--- IF THEN ELSE 
IF condition THEN
  Statement 1;
ELSE
  Statement 2;
END IF;
  Statement 3

----   IF THEN ELSEIF
IF CONDITION 1 THEN
  STATEMENT 1;
ELSIF CONDITION 2 THEN
  STATEMENT 2;
ELSIF CONDITION 3 THEN
  STATEMENT 3;
…
ELSE
  STATEMENT N; END IF; 

---      ---- LOOPS ----   ----
DECLARE
  v_counter   NUMBER :=0;
  v_result  NUMBER;
BEGIN
  LOOP
  v_counter := v_counter+1;
  v_result := 19*v_counter;
  DBMS_OUTPUT.PUT_LINE(’19’||’ x ‘||v_counter||’ = ‘|| v_result);
  END LOOP;
END;
----      type 2 with exit condtion    ----
BEGIN
  LOOP
  v_counter := v_counter+1;
  v_result := 19*v_counter;
  DBMS_OUTPUT.PUT_LINE(’19’||’ x ‘||v_counter||’ = ‘|| v_result);
IF v_counter >=10 THEN
  EXIT;
END IF;
  END LOOP;
END;


---- while Loop  ----
BEGIN
  WHILE  v_counter <= 10
LOOP
  v_result := 9  *v_counter;
DBMS_OUTPUT.PUT_LINE(‘9’||’ x ‘||v_counter||’ = ‘||v_result);
  v_counter  := v_counter+1;
END LOOP;
DBMS_OUTPUT.PUT_LINE(‘out’);
END;
/
--- type 2 with exit condion ---
BEGIN
  WHILE v_test LOOP
  v_counter := v_counter+1;
DBMS_OUTPUT.PUT_LINE( v_counter );
  IF v_counter = 10 THEN
  v_test    := FALSE;
  END IF;
END LOOP;
 DBMS_OUTPUT.PUT_LINE (‘This Statement is outside the loop and will always execute’);
END;

---
FOR loop_counter IN [REVERSE] lower limit.. upper_limit LOOP
  Statement 1;
  Statement 2;
  …
  Statement 3;
END LOOP;
---example
SET SERVEROUTPUT ON;
BEGIN
  FOR v_counter IN 1..10 LOOP                // FOR v_counter IN REVERSE 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_counter);
  END LOOP;
END;

