SELECT day, COUNT(day) as total_assignments 
FROM assignments 
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day

/*
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;
*/