-- counseling distributed by date. this view contains counseling log, course name and student name.
CREATE OR REPLACE VIEW vwCounselDate
AS
SELECT 
	cl.cl_date,
	c.course_name,
	s.student_name
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN  tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq
							INNER JOIN tblCounselLog cl ON cl.enrollment_seq = e.enrollment_seq;
commit;