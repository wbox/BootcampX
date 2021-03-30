SELECT day, COUNT(id) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER by day;

/*
SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
*/