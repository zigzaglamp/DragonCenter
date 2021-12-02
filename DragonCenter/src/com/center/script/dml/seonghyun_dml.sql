-- 상담일지 작성 및 조회
/*
- tblAnswer
- tblQuestion
- tblTeacher
- tblStudent
- tblSubjectTeacher
- 
- tblCounselLog
- tblCounselCategory
- tblCourse

 */
-- 해당 교육생을 가르치는 교사는 교육생과 상담을 진행하여 그 내용을 기록 
-- 상담 작성
INSERT INTO tblCounselLog(cl_seq, enrollment_seq, cl_date, cc_seq, cl_content) values(11,1,to_date('21-12-01', 'yy-mm-dd'),3,'취업연계과정에 대한 번반적인 설명');

-- 상담 수정		
UPDATE tblCounselLog SET cl_content = '취업연계과정에 대한 전반적인 설명' WHERE cl_seq = 11;			

-- 상담 삭제
delete from tblCounselLog where cl_seq = 11;

		
			
-- 답변 작성 프로시저
/*
UPDATE tblAnswer SET question_seq = '세종' WHERE NAME = '대한민국'
-- 기록
CREATE OR REPLACE PROCEDURE procCounsel(
	penrollment_seq NUMBER,
	pcl_date DATE,
	pcc_seq NUMBER,
	pcl_content varchar2
)
IS
BEGIN
	insert into tblCounselLog(cl_seq, enrollment_seq, cl_date, cc_seq, cl_content) values(cl_seq.nextVal, penrollment_seq, pcl_date, pcc_seq, pcl_content);
END procCounsel;
*/


-- 카테고리 분류(취업, 진로, 학업)
--뷰
CREATE OR REPLACE VIEW vwCounsel
as
SELECT 
	cc.cc_content,
	cl.cl_content 
FROM tblCounselcategory cc
	INNER JOIN tblCounselLog cl ON cc.cc_seq = cl.cc_seq;


SELECT 
	cc.cc_content,
	cl.cl_content 
FROM tblCounselcategory cc
	INNER JOIN tblCounselLog cl ON cc.cc_seq = cl.cc_seq;




-- 교육생(tblStudent) -> 수강신청(tblEnrollment) -> 개설과정(tblOpenCourse) -> 과정(tblCourse)


-- 과정, 교육생, 날짜별로 상담 기록 조회 가능
--뷰
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
		
SELECT * FROM TBLENROLLMENT;

-- 상담 일지 조회
-- 교사가 입력한 상담 일지의 정보(등록일/내용)를 확인
SELECT 
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
								INNER JOIN TBLCOUNSELCATEGORY cc ON cl.cc_seq = cc.cc_seq ;
		
SELECT cl_date, cl_content FROM tblCounselLog cl INNER JOIN TBLCOUNSELCATEGORY cc ON cl.cc_seq = cc.cc_seq ;
SELECT * FROM tblEnrollment;
SELECT * FROM tblQuestion;
SELECT * FROM TBLSTUDENT;		



-- 질의응답 답변 작성 및 조회
-- 해당 교육생을 가르치는 교사는 문제 풀이를 진행하고 그 내용을 답변으로 기록

-- 답변
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (11,1,to_date('21-12-01', 'yy-mm-dd'),'3열에 오타가 남네요.');

-- 답변 수정
UPDATE tblAnswer SET answer_content = '작성한 쿼리의 열에 오타가 났네요.' WHERE cl_seq = 11;

-- 답변 삭제
delete from tblAnswer where cl_seq = 11;

-- 과정, 교육생, 날짜별로 질의 목록 조회 가능
CREATE OR REPLACE VIEW vwQuestionDate
AS
SELECT 
	c.course_name,
	s.student_name,
	q.question_date,
	q.question_content
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq;

SELECT 
	c.course_name,
	s.student_name,
	q.question_date,
	q.question_content
FROM tblCourse c
	INNER JOIN tblOpenCourse oc ON c.course_seq = oc.course_seq
		INNER JOIN tblEnrollment e ON oc.OC_SEQ = e.OC_SEQ
			INNER JOIN tblStudent s ON e.student_seq = s.student_seq
				INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
					INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
						INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq;

SELECT * FROM TBLSTUDENT;
SELECT * FROM tblEnrollment;
SELECT * FROM TBLCOURSE ;
SELECT * FROM tblQuestion;
SELECT * FROM TBLSTUDENT;

-- 질의응답 질문 작성 및 답변 조회
-- 답변 완료 검색
SELECT
	s.student_name,
	q.question_content,
	a.answer_content
FROM tblStudent s
	LEFT OUTER JOIN tblQuestion q ON s.student_seq = q.student_seq
		LEFT OUTER JOIN tblAnswer a ON  q.question_seq = a.question_seq
				LEFT OUTER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seq
					WHERE answer_content IS NOT NULL;
			
			
-- 답변 미완료 검색
SELECT
	s.student_name,
	q.question_content,
	a.answer_content
FROM tblStudent s
	INNER JOIN tblQuestion q ON s.student_seq = q.student_seq
		INNER JOIN tblAnswer a ON  q.question_seq = a.question_seq
				INNER JOIN tblTeacher t ON a.teacher_seq = t.teacher_seqe
					WHERE IS null;	
		



