-- 완성

--------------------------------------------------------------------------------------------------
-- B-8. 질의응답 답변 작성 및 조회
--------------------------------------------------------------------------------------------------
-- 해당 교육생을 가르치는 교사는 문제 풀이를 진행하고 그 내용을 답변으로 기록
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성
CREATE OR REPLACE PROCEDURE procAddAnswer(
	pquestion_seq NUMBER,
	pteacher_seq NUMBER,
	panswer_regdate DATE,
	panswer_content varchar2
)
IS 
BEGIN 
	
	INSERT INTO tblAnswer(question_seq, teacher_seq, answer_regdate, answer_content) 
		VALUES (pquestion_seq, pteacher_seq, panswer_regdate, panswer_content);

END procAddAnswer;

BEGIN
	procaddanswer(312, 4, '21-12-04', 'substr, instr을 사용해보는것이 좋을것 같습니다.');
END;



--EXCEPTION
--	WHEN Unique_constraint_violation THEN
--		dbms_output.put_line('이미 답변된 질문');
--	WHEN parent_key_not_found THEN
--		dbms_output.put_line('번호가 없습니다.');


--------------------------------------------------------------------------------------------------
-- 과정, 교육생, 날짜별로 질의 목록 조회 가능
--------------------------------------------------------------------------------------------------
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
					
SELECT * FROM vwQuestionDate;	-- vwQuestionDate라는 이름의 뷰로 만들어져있다.


















--------------------------------------------------------------------------------------------------
