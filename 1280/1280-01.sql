SELECT st.student_id, st.student_name, sb.subject_name, COALESCE(e.attended_exams, 0) AS attended_exams
FROM Students st
CROSS JOIN Subjects sb
LEFT JOIN (
    SELECT student_id, subject_name, COUNT(*) AS attended_exams
    FROM Examinations
    GROUP BY student_id, subject_name
) e USING (student_id, subject_name)
ORDER BY st.student_id, sb.subject_name;
