SELECT teachers.name AS teacher, students.name AS student, assignments.name, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY students.name, teachers.name, assignments.name
ORDER BY duration


