-- Question and Answer distributed by date. this view contains date, course name, student name, question content.
CREATE OR REPLACE VIEW vwQuestionDate
AS
SELECT 
  q.question_date,
	c.course_name,
	s.student_name,
	q.question_content
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq;
