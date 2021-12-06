

--------------------------------------------------------------------------------------------------
-- B-8. 질의응답 답변 작성 및 조회
--------------------------------------------------------------------------------------------------
-- 해당 교육생을 가르치는 교사는 문제 풀이를 진행하고 그 내용을 답변으로 기록
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 dml
INSERT INTO tblAnswer(question_seq, teacher_seq, answer_regdate, answer_content) 
	VALUES (312, 4, '21-12-04', 'substr, instr을 사용해보는것이 좋을것 같습니다.');

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 procedure
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







--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 작성 procedure 사용법
BEGIN
	procaddanswer(312, 4, '21-12-04', 'substr, instr을 해보는것이 좋을것 같습니다.');
END;



--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 수정 procedure
CREATE OR REPLACE PROCEDURE procUpdateAnswer(
	pquestion_seq NUMBER,
	panswer_content varchar2
)
IS 
BEGIN 
	
	UPDATE tblAnswer SET question_seq = pquestion_seq WHERE answer_content = panswer_content;

END procAddAnswer;




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 수정 procedure 사용법
BEGIN
	procUpdateAnswer(312, 'substr, instr을 사용해보는것이 좋을것 같습니다.');
END;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 삭제 procedure
CREATE OR REPLACE PROCEDURE proDeleteAnswer(
	pquestion_seq NUMBER
)
IS 
BEGIN 
	
	DELETE FROM tblCounselLog WHERE cl_seq = pcl_seq;

END procAddAnswer;




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 담당교육생의 질문에 대한 답변 삭제 procedure 사용법
BEGIN
	procUpdateAnswer(312);
END;

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- 과정, 교육생, 날짜별로 질의 목록 조회 가능
--------------------------------------------------------------------------------------------------
SELECT 
	c.course_name,
	s.student_name,
	q.question_date,
	q.question_content
FROM tblCourse c
	LEFT OUTER JOIN tblOpenCourse oc ON  oc.course_seq = c.course_seq
		LEFT OUTER JOIN tblEnrollment e ON e.OC_SEQ = oc.OC_SEQ
			LEFT OUTER JOIN tblStudent s ON  s.student_seq = e.student_seq
				LEFT OUTER JOIN tblQuestion q ON q.student_seq = s.student_seq 
					LEFT OUTER JOIN tblAnswer a ON  a.question_seq = q.question_seq
						LEFT OUTER JOIN tblTeacher t ON t.teacher_seq = a.teacher_seq
							WHERE question_date BETWEEN TO_DATE('21-12', 'yy-mm') AND TO_DATE('22-01', 'yy-mm') -- 조회할 기간 설정
								ORDER BY question_date desc;

							
							
							
--------------------------------------------------------------------------------------------------
-- tblAnswer insert trigger
CREATE OR REPLACE TRIGGER trigInsertAnswer
    AFTER
    INSERT ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 입력되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer update trigger
CREATE OR REPLACE TRIGGER trigUpdateAnswer
    AFTER
    UPDATE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 수정되었습니다.');
END;


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- tblAnswer delete trigger
CREATE OR REPLACE TRIGGER trigDeleteAnswer
    AFTER
    DELETE ON tblAnswer
BEGIN
    dbms_output.put_line('정상적으로 삭제되었습니다.');
END;


--------------------------------------------------------------------------------------------------





