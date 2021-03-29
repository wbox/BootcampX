SELECT SUM(duration) as total_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE student_id IN (SELECT id FROM students WHERE name = 'Ibrahim Schimmel');

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
