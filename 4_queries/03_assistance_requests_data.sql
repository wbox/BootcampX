SELECT teachers.name AS teacher, students.name As student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
LEFT JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration



-- P L E A S E   R E V I E W  T H I S  Q U E S T I O N ----
-- The answer provied doesn't match the number of rows requested as expected results


/*
SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
*/