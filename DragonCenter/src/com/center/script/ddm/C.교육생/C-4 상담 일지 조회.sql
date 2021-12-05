-- 완성

--------------------------------------------------------------------------------------------------
-- C-4 상담 일지 조회
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 교육생이 교사가 입력한 상담 일지의 정보(등록일/내용)를 확인
--------------------------------------------------------------------------------------------------
SELECT 
	t.teacher_name,
	cl_date, 
	cl_content,
	s.student_name
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN  tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq
							INNER JOIN tblCounselLog cl ON cl.enrollment_seq = e.enrollment_seq
								INNER JOIN TBLCOUNSELCATEGORY cc ON cl.cc_seq = cc.cc_seq 
									WHERE cl.cl_date = to_date('19-02','yy-mm')
										ORDER BY teacher_name;
							
SELECT * FROM VWCOUNSEL;
SELECT * FROM TBLTEACHER ;
SELECT * FROM TBLCOUNSELLOG ;
SELECT * FROM VWCOUNSELDATE vcd INNER JOIN TBLTEACHER t on;





--------------------------------------------------------------------------------------------------
-- 특정교사가 입력한 상담 일지의 정보(등록일/내용)를 확인하는 procedure
CREATE OR REPLACE VIEW vwSpecificteacher
AS
SELECT 
	t.teacher_name,
	cl_date, 
	cl_content,
	s.student_name
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN  tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq
							INNER JOIN tblCounselLog cl ON cl.enrollment_seq = e.enrollment_seq
								INNER JOIN TBLCOUNSELCATEGORY cc ON cl.cc_seq = cc.cc_seq 
										ORDER BY teacher_name;

SELECT * FROM vwspecificteacher WHERE student_name = '박구광'; -- 학생본인이름 검색



--------------------------------------------------------------------------------------------------


















