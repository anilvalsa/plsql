
SET SERVEROUTPUT ON;
DECLARE
Var_first_name VARCHAR2(30);
Var_last_name   VARCHAR2(30);
Con_flag        CONSTANT        NUMBER:=0;
Vdate date default sysdate;
Flag Boolean:=TRUE;
Pincode constant number(6):=567893;


BEGIN
SELECT first_name, last_name INTO var_first_name,
var_last_name
FROM employees WHERE employee_id =100;
DBMS_OUTPUT.PUT_LINE
(‘Employee Name ’||var_first_name||’ ‘||var_last_name);
END;

EXCEPTION
WHEN NO_DATA_FOUND THEN      DBMS_OUTPUT.PUT_LINE (‘No Employee Found with ’||employee_id);

var_test1 VARCHAR2(30) := ‘RebellionRider’;     
v_fname students.first_name%TYPE;


constant_name CONSTANT datatype (data-width) :=  value;
v_pi     CONSTANT NUMBER(7,6) := 3.141592;
v_pi     CONSTANT NUMBER(7,6) DEFAULT 3.1415926;
v_pi     CONSTANT NUMBER(7,6) NOT NULL DEFAULT 3.1415926;

--- bind variables----
BEGIN
:v_bind1 := ‘RebellionRider’;
DBMS_OUTPUT.PUT_LINE(:v_bind1);
END;
/

Print :v_bind1;
Or
Print v_bind1;
---- or 
SET AUTOPRINT ON;