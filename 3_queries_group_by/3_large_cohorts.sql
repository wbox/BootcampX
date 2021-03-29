SELECT cohorts.name AS cohort_name , COUNT(cohort_id) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(cohort_id) >= 18
ORDER BY COUNT(cohort_id);

/*
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;
*/