/*
      conditional statements

IF THEN END IF;
IF THEN ELSE END IF;
IF THEN ELSIF ELSE END IF;

simple case


FOR LOOP
*/
IF l_salary > 40000
THEN
   give_bonus (l_employee_id,500);
END IF;
---********************************************************************
---********************************************************************
IF l_salary > 40000 OR l_salary IS NULL
THEN
   give_bonus (l_employee_id,500);
END IF;

---********************************************************************
---********************************************************************
CASE expression
WHEN result1 THEN
   statements1
WHEN result2 THEN
   statements2
...
ELSE
   statements_else
END CASE;
---********************************************************************
---********************************************************************

PROCEDURE display_multiple_years (
   start_year_in IN PLS_INTEGER
  ,end_year_in   IN PLS_INTEGER
)
IS
BEGIN
  FOR l_current_year  IN start_year_in .. end_year_in
  LOOP
     display_total_sales 
             (l_current_year);
  END LOOP;
END display_multiple_years;

---********************************************************************
---********************************************************************
  FOR l_current_year IN (
     SELECT * FROM sales_data
       WHERE year 
       BETWEEN start_year_in 
       AND end_year_in)
  LOOP
     display_total_sales 
             (l_current_year);
  END LOOP;

---********************************************************************
---********************************************************************
    
    l_current_year   INTEGER; /* NOT NEEDED */
    BEGIN
    FOR l_current_year       IN start_year_in  .. end_year_in
    
    l_current_year PLS_INTEGER := start_year_in;
BEGIN
   LOOP
      EXIT WHEN l_current_year > end_year_in;
      display_total_sales (l_current_year);
      l_current_year :=  l_current_year + 1;
   END LOOP;

---********************************************************************
---********************************************************************
   PROCEDURE display_multiple_years (
   start_year_in   IN PLS_INTEGER
 , end_year_in     IN PLS_INTEGER)
IS
   CURSOR years_cur
   IS
      SELECT *
        FROM sales_data
       WHERE year BETWEEN start_year_in AND end_year_in;

   l_year   sales_data%ROWTYPE;
BEGIN
   OPEN years_cur;
   LOOP
      FETCH years_cur INTO l_year;

      EXIT WHEN years_cur%NOTFOUND;

      display_total_sales (l_year);
   END LOOP;

   CLOSE years_cur;
END display_multiple_years;

---********************************************************************
---********************************************************************

   l_current_year PLS_INTEGER := start_year_in;
BEGIN
   WHILE (l_current_year <= end_year_in)
   LOOP
      display_total_sales (l_current_year);
      l_current_year :=  l_current_year + 1;
   END LOOP;
END display_multiple_years;