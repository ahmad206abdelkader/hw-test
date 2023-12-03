CREATE TABLE countries (
    C_name VARCHAR(50),
    M_age NUMBER(6, 2)
);

-- Insert several records into the table
INSERT INTO countries (C_name, M_age) VALUES ('Japan', 48.2);
INSERT INTO countries (C_name, M_age) VALUES ('USA', 38.7);
-- Add more records as needed

-- PL/SQL block with %TYPE attribute
DECLARE
    C_name countries.C_name%TYPE;
    M_age countries.M_age%TYPE;
BEGIN
    SELECT C_name, C_age
    INTO C_name, C_age
    FROM countries
    WHERE C_name = 'Japan';

    DBMS_OUTPUT.PUT_LINE('The median age in ' || C_name || ' is ' || M_age || '.');
END;