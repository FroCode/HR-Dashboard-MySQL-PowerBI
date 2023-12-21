USE project;


SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

ALTER TABLE hr
CHANGE COLUMN id emp_id VARCHAR(20) NULL;

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;


