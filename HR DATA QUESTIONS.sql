-- QUESTIONS
USE project  ;

-- 1. What is the gender breakdown of employees in the company?

    SELECT gender , count(*) AS count
    FROM  hr
    WHERE age >= 18 AND termdate = '0000-00-00'
    GROUP BY gender;

-- 2. What is the race/ethnicity breakdown of employees in the company?

    SELECT race , count(*) AS count
    FROM hr
    WHERE age >= 18 AND termdate = '0000-00-00'
    GROUP BY race
    ORDER BY count(*) DESC;

-- 3. What is the age distribution of employees in the company?

    SELECT
        MIN(age) AS youngest ,
        MAX(age) AS oldest
    FROM hr
    WHERE age>= 18 AND termdate = '0000-00-00';

    SELECT
        CASE
            WHEN age >= 18 AND age <= 24 THEN '18-24'
            WHEN age >= 25 AND age <= 34 THEN '25-34'
            WHEN age >= 35 AND age <= 45 THEN '35-45'
            WHEN age >= 45 AND age <= 54 THEN '45-54'
            WHEN age >= 55 AND age <= 64 THEN '55-64'
    ELSE '+65'
    END AS age_group,
        count(*) AS count
    FROM hr
        WHERE age>= 18 AND termdate = '0000-00-00'
GROUP BY age_group
    ORDER BY age_group;



-- 4. How many employees work at headquarters versus remote locations?


-- 5. What is the average length of employment for employees who have been terminated?

-- 6. How does the gender distribution vary across departments and job titles?


-- 7. What is the distribution of job titles across the company?


-- 8. Which department has the highest turnover rate?


-- 9. What is the distribution of employees across locations by city and state?


-- 10. How has the company's employee count changed over time based on hire and term dates?

-- 11. What is the tenure distribution for each department?