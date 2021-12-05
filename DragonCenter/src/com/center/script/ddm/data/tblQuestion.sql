
create table tblQuestion (
	question_seq number not null,
	student_seq number not null,
	question_date date not null,
	question_content varchar2(300) not null
);

create sequence question_seq;

alter table tblQuestion
    add constraint tblq_question_seq_pk primary key(question_seq);
   
alter table tblQuestion
    add constraint tblq_student_seq_fk foreign key(student_seq) references tblStudent(student_seq);
    
    
--tblquestion
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,1,to_date('19-02-02', 'yy-mm-dd'),'코드가 이해 안되요');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,2,to_date('19-02-02', 'yy-mm-dd'),'화면에 출력하려면 어떻게 해야하나요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,3,to_date('19-02-02', 'yy-mm-dd'),'이 명령의 의미는 무엇인가요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,4,to_date('19-02-02', 'yy-mm-dd'),'println은 어떤 기능인가요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,5,to_date('19-02-03', 'yy-mm-dd'),'System이 뭐에요');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,6,to_date('19-02-03', 'yy-mm-dd'),'API가 뭔가요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,7,to_date('19-02-03', 'yy-mm-dd'),'Java SE(JDK)랑 API랑 무슨 관계에요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,8,to_date('19-02-03', 'yy-mm-dd'),'자바 애플리케이션이 뭐에요?');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,9,to_date('19-02-04', 'yy-mm-dd'),'패키지랑 API 이해가 안되요');
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,10,to_date('19-02-04', 'yy-mm-dd'),'API강의 녹화 있나요?');
--행 1
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,133,to_date('21-09-22', 'yy-mm-dd'),'c 문자열과 특정 문자를 입력받아 특정 문자 이전의 문자를 출력하는 코드');
--행 2
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,299,to_date('21-03-02', 'yy-mm-dd'),'c 날짜범위를 입력받는 방법');
--행 3
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,181,to_date('21-12-27', 'yy-mm-dd'),'c언어 과제 문자열에서 찾는 문자열의 이전 문자들을 리턴');
--행 4
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,290,to_date('20-11-03', 'yy-mm-dd'),'파이썬 리스트 관련 질문입니다.');
--행 5
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,272,to_date('20-03-17', 'yy-mm-dd'),'요즘 많이 사용하는 오라클 데이터베이스 버젼이 무엇인가요??? (저는 대학교 다닐 때와 졸업 후 개인적으로 공부할 때 11g를 사용했습니다!!!)');
--행 6
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,211,to_date('19-02-15', 'yy-mm-dd'),'파이썬 질문이요! 하다가 도저히 안되서');
--행 7
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,59,to_date('19-02-17', 'yy-mm-dd'),'파이썬기초 국가별 iso2코드를 대륙명으로 변환하기');
--행 8
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,200,to_date('20-04-12', 'yy-mm-dd'),'c언어 텍스트 입출력 질문');
--행 9
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,93,to_date('21-05-15', 'yy-mm-dd'),'++연산자로 시간 출력하기');
--행 10
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,173,to_date('20-06-23', 'yy-mm-dd'),'pygame mask 충돌');
--행 11
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,227,to_date('19-12-25', 'yy-mm-dd'),'flutter sqlite 배열 저장');
--행 12
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,247,to_date('21-08-23', 'yy-mm-dd'),'큰 정수의 첫 세자리 마지막 세자리 수 구하기 c++ 제발 도와주세요!!!!!!!!!!!');
--행 13
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,263,to_date('20-08-07', 'yy-mm-dd'),'c++ 오버라이딩시 헤더파일 분리');
--행 14
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,218,to_date('20-04-19', 'yy-mm-dd'),'c언어 - md5 해시값 구하기 / 메모장에 저장된 디렉토리를 fgets()로 읽어서 해당 파일의 해시값 구하는 방법 질문드립니다.');
--행 15
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,57,to_date('20-10-16', 'yy-mm-dd'),'r에서 anova 실행시 잔차 및 f-value 안보일때');
--행 16
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,253,to_date('21-03-28', 'yy-mm-dd'),'[c언어]입출력');
--행 17
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,43,to_date('19-03-15', 'yy-mm-dd'),'인터넷에서 보고 복붙한 쿠팡 상품 자동등록 프로그램입니다.');
--행 18
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,83,to_date('21-09-27', 'yy-mm-dd'),'syms 함수로 매트랩 비선형 연립방정식 해결방법');
--행 19
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,286,to_date('19-12-08', 'yy-mm-dd'),'c++ 템플릿 사용입니다 엄청엄청 기초입니다 도와주세요ㅠㅠ');
--행 20
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,139,to_date('21-12-09', 'yy-mm-dd'),'코딩초보 리스트슬라이스도 루프돌릴수있는지 질문드립니다.');
--행 21
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,8,to_date('19-02-26', 'yy-mm-dd'),'c언어 완전 초보가 사용자정의 함수 질문드립니다.');
--행 22
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,49,to_date('20-05-06', 'yy-mm-dd'),'리스트 안의 숫자들 총합을 구하고 싶어서 질문 들려요!');
--행 23
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,58,to_date('21-05-11', 'yy-mm-dd'),'파이썬 리스트 안 숫자 더하기');
--행 24
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,94,to_date('21-05-23', 'yy-mm-dd'),'파이썬 등차수열로 표현하기.//');
--행 25
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,150,to_date('21-01-03', 'yy-mm-dd'),'c++ 왕초보 질문입니다ㅠㅠ(void 함수)');
--행 26
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,62,to_date('21-02-17', 'yy-mm-dd'),'개발언어 1~2가지만으로 실전개발을 할 수가 없어서 흘러간 세월이 벌써 7년입니다!!!');
--행 27
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,164,to_date('21-01-02', 'yy-mm-dd'),'파이썬 dataframe re.sub 질문 올립니다.');
--행 28
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,225,to_date('19-05-04', 'yy-mm-dd'),'비주얼 스튜디오 2019 연한 글자');
--행 29
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,208,to_date('20-01-21', 'yy-mm-dd'),'스프링부트에서 클래스 다이어그램 뽑아내고 싶은데 objectaid 말고는 없나요?');
--행 30
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,280,to_date('20-07-22', 'yy-mm-dd'),'두 데이터프레임의 latitude, longitude 값을 비교하여 차가 0.0005 인 것을 표시하고 싶다.');
--행 31
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,99,to_date('20-07-14', 'yy-mm-dd'),'gdb로 std::map에 인덱스를 이용해서 바로 값에 접근하는 방법이 있나요?');
--행 32
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,198,to_date('21-11-28', 'yy-mm-dd'),'python pandas datetime 변환 작업을 numpy로 더 빠르게 하는 방법');
--행 33
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,182,to_date('20-10-08', 'yy-mm-dd'),'html 페이지 구획별 다단 처리시 여백이 생깁니다.');
--행 34
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,103,to_date('19-02-20', 'yy-mm-dd'),'로그인 모달 창 질문드립니다 login 모달창을 누르면 login 모달창이 아니라 회원가입창이 모달창으로 나옵니다ㅠㅠ');
--행 35
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,294,to_date('20-08-25', 'yy-mm-dd'),'리얼타임베이스로 각각의 사용자 정보 보여주기');
--행 36
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,143,to_date('21-09-07', 'yy-mm-dd'),'자바 초보 gettext(?) 관련 질문드려요');
--행 37
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,54,to_date('20-05-13', 'yy-mm-dd'),'시간 카운트다운 무한반복');
--행 38
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,206,to_date('19-09-01', 'yy-mm-dd'),'하드코딩관련해서 질문있습니다.');
--행 39
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,207,to_date('21-02-07', 'yy-mm-dd'),'언어의 예외 처리 문제를 해결하고 싶습니다.');
--행 40
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,96,to_date('19-04-14', 'yy-mm-dd'),'시리얼 통신으로 받은 데이터를 히트맵으로 그리기');
--행 41
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,228,to_date('21-07-21', 'yy-mm-dd'),'파이썬 csv 전화번호와 이름이 같을경우 회원번호 배송번호 더하기');
--행 42
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,298,to_date('20-10-14', 'yy-mm-dd'),'최소 홉수를 알고 싶습니다.');
--행 43
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,208,to_date('21-04-03', 'yy-mm-dd'),'파이썬에서 자료 리스트 원하는대로 출력 방법 + 특정 폴더의 파일을 순서대로 반복해서 읽는 방법');
--행 44
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,69,to_date('21-12-19', 'yy-mm-dd'),'c언어 결과값 0만 나오네요');
--행 45
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,3,to_date('21-06-24', 'yy-mm-dd'),'c# 정규식 확인 (문구 작성을 해도 원하는 결과가 나오지 않음)');
--행 46
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,274,to_date('19-04-08', 'yy-mm-dd'),'파이썬 csv 파일을 읽어 팀별로 선수를 묶어 딕셔너리에 저장하기');
--행 47
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,54,to_date('20-05-18', 'yy-mm-dd'),'[c언어]리눅스에서 dat파일의 단어들을 입력받는 함수를 만드는데 strdup함수에서 오류가 납니다.');
--행 48
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,288,to_date('19-09-10', 'yy-mm-dd'),'디컴파일링 중에 질문있습니다.');
--행 49
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,222,to_date('20-12-21', 'yy-mm-dd'),'파이썬 질문이 있습니다');
--행 50
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,110,to_date('19-11-26', 'yy-mm-dd'),'파이썬 아메리카노,카페라떼,청포도 에이드, 딸기 스무디 중 하나를 랜덤');
--행 51
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,162,to_date('20-08-24', 'yy-mm-dd'),'파이썬 크롤링 관련해서 질문입니다');
--행 52
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,279,to_date('19-09-25', 'yy-mm-dd'),'unresolved reference error파이썬 로그인 후 사원정보 입력, 저장, 수정, 삭제 기능의 프로그래밍 중 오류');
--행 53
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,81,to_date('21-11-01', 'yy-mm-dd'),'c언어 파일을 읽어서 배열에 저장을 하려 하는데 segmentation fault가 뜹니다.');
--행 54
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,40,to_date('19-10-19', 'yy-mm-dd'),'파이썬 tkinter 스크롤바 질문입니다.');
--행 55
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,286,to_date('20-02-13', 'yy-mm-dd'),'정수화 한후 오름차순으로 정렬');
--행 56
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,49,to_date('19-02-02', 'yy-mm-dd'),'[c언어] dat파일에서 일정한 조건을 만족시킨 문자열을 한 줄씩 입력 받아 배열에 저장하는 코드의 오류를 고치고 싶습니다.');
--행 57
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,248,to_date('21-06-09', 'yy-mm-dd'),'void를 int식으로 변환이 어렵습니다.');
--행 58
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,126,to_date('21-02-01', 'yy-mm-dd'),'자바스크립트 jquery 태양-지구-달 구조 하나 더 추가하기입니다');
--행 59
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,144,to_date('20-06-02', 'yy-mm-dd'),'두 개의 중첩 리스트 내의 중복 찾기');
--행 60
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,85,to_date('21-12-11', 'yy-mm-dd'),'python 에서 내가 만든 모듈 import 오류..(no module named )');
--행 61
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,243,to_date('20-07-23', 'yy-mm-dd'),'python os.startfile 로 dwg파일(캐드파일) 실행이 안되네요.');
--행 62
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,246,to_date('20-05-05', 'yy-mm-dd'),'장고 회원가입시 로그인 화면으로 이동하는 방법.');
--행 63
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,163,to_date('21-12-27', 'yy-mm-dd'),'파이썬 tkinter 버튼 누를때마다 변수값이 초기화돼요...');
--행 64
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,112,to_date('20-04-23', 'yy-mm-dd'),'파이썬으로 로그인하기. 버튼클릭오류');
--행 65
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,149,to_date('20-01-07', 'yy-mm-dd'),'database local cache layer');
--행 66
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,113,to_date('20-11-02', 'yy-mm-dd'),'숙제요청 삭제 파이썬 코딩 좀 부탁합니다.');
--행 67
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,129,to_date('20-06-26', 'yy-mm-dd'),'숙제요청 삭제 파이썬 코딩 좀 부탁합니다.');
--행 68
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,298,to_date('19-10-07', 'yy-mm-dd'),'파이썬 syntaxerror: ''return'' outside function');
--행 69
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,20,to_date('21-11-13', 'yy-mm-dd'),'자바 잠금화면 슬라이드 기능');
--행 70
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,220,to_date('20-05-08', 'yy-mm-dd'),'파이썬 nameerror: name ''a'' is not defined');
--행 71
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,125,to_date('19-02-18', 'yy-mm-dd'),'파이썬 tkinter 버튼 , 라벨 배치 질문');
--행 72
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,51,to_date('19-11-18', 'yy-mm-dd'),'html nodejs 실행 질문 chrome browser에서 흰 창만 뜹니다');
--행 73
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,3,to_date('21-11-28', 'yy-mm-dd'),'파이썬 tkinter 이미지 파일 위치설정 질문');
--행 74
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,8,to_date('21-09-25', 'yy-mm-dd'),'react native로 윈도우앱도 개발 가능한가요?');
--행 75
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,56,to_date('21-07-02', 'yy-mm-dd'),'업비트 파이썬 자동매매 사는건 잘 되었는데 조건식 추가 하다보니 파는게 안됩니다. 이유가 뭔지 알고 싶어요');
--행 76
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,223,to_date('20-02-10', 'yy-mm-dd'),'파이썬 구구단 문제');
--행 77
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,50,to_date('21-03-04', 'yy-mm-dd'),'안녕하세요 대학교 파이썬 과제 질문올립니다');
--행 78
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,114,to_date('20-08-03', 'yy-mm-dd'),'파이썬 판다스 시리즈 replace로 값이 변경이 안 됩니다');
--행 79
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,178,to_date('19-06-18', 'yy-mm-dd'),'파이썬으로 xml 데이터 일부를 csv로 저장하는 법 여쭤봅니다.');
--행 80
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,152,to_date('20-02-19', 'yy-mm-dd'),'파이썬 tkinter 이미지 넣기 경로설정 질문');
--행 81
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,47,to_date('19-02-15', 'yy-mm-dd'),'텍스트 게임에서 텍스트 색깔 질문');
--행 82
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,57,to_date('19-11-22', 'yy-mm-dd'),'한글 신문 코퍼스 bigram 추출');
--행 83
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,138,to_date('20-10-04', 'yy-mm-dd'),'파이썬 웹 크롤링 연습중 attribute 에러 부탁드립니다');
--행 84
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,173,to_date('19-07-09', 'yy-mm-dd'),'파이썬에서 미분방정식을 풀었을 때 이 값의 비율이 0.83에 도달했을 때의 시간을 출력해라를 어떻게 표현하나요?');
--행 85
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,155,to_date('19-10-08', 'yy-mm-dd'),'c++ lnk1120 1개의 확인할수 없는 외부 참조입니다. 라고 오류가 뜨는데 왜그런가요??? 알려주세요!');
--행 86
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,214,to_date('21-10-18', 'yy-mm-dd'),'자바 gui 질문입니다.');
--행 87
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,31,to_date('21-03-15', 'yy-mm-dd'),'discord.ext 에러');
--행 88
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,232,to_date('21-10-04', 'yy-mm-dd'),'fgets 함수로 입력받은 배열 출력');
--행 89
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,267,to_date('19-05-11', 'yy-mm-dd'),'혹시 image 는 complex 멤버가 아닙니다 에러는 왜 나는걸까요?');
--행 90
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,82,to_date('20-01-21', 'yy-mm-dd'),'c 액세스 위반');
--행 91
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,238,to_date('19-05-28', 'yy-mm-dd'),'css 상단 바 고정 문제');
--행 92
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,154,to_date('20-08-10', 'yy-mm-dd'),'파이썬 텍스트파일 저장');
--행 93
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,6,to_date('20-07-07', 'yy-mm-dd'),'안녕하세요 카페24 db 접근관련 질문 하나 드려도 될까요 ?');
--행 94
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,77,to_date('21-05-20', 'yy-mm-dd'),'버튼 태그 이용한 수량증가');
--행 95
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,35,to_date('21-01-20', 'yy-mm-dd'),'딥큐 러닝을 이용한 지렁이게임 코딩과정에서 pytorch를 사용해서 학습된 모델을 사용할수있게 코드를 알려주실수있나요?');
--행 96
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,92,to_date('19-11-26', 'yy-mm-dd'),'c언어 배열 문제입니다. 배열 중에서 입력된 수와 가장 가까운 수를 출력하기');
--행 97
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,2,to_date('21-09-08', 'yy-mm-dd'),'파이썬 영어사전 만들기');
--행 98
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,133,to_date('20-11-04', 'yy-mm-dd'),'파이썬으로 초성게임 (초성퀴즈) 할 수 있을까요?');
--행 99
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,10,to_date('19-04-13', 'yy-mm-dd'),'mongodb datetime, timestamp 타입 변환해서 검색하는 방법이 있을까요?');
--행 100
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,290,to_date('21-07-27', 'yy-mm-dd'),'[kotlin] 코틀린 라이브러리 import 문제');
--행 101
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,21,to_date('20-07-16', 'yy-mm-dd'),'js) 화살표 함수 해석좀 부탁드립니다.');
--행 102
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,218,to_date('19-01-13', 'yy-mm-dd'),'파이썬 리스트 안 숫자를 랜덤으로 뽑아 더하기');
--행 103
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,84,to_date('20-01-22', 'yy-mm-dd'),'파이썬 lstm 시계열 예측 해봤는데, 제가 이해한 것이 맞나요?');
--행 104
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,90,to_date('20-01-06', 'yy-mm-dd'),'파이썬 함수를 동시에 따로? 실행시키고 싶어요');
--행 105
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,40,to_date('20-10-02', 'yy-mm-dd'),'파이썬 pil 및 cv관련 질문입니다...');
--행 106
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,228,to_date('20-03-23', 'yy-mm-dd'),'표준라이브러리로 불가능한것이 있나요?');
--행 107
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,121,to_date('20-05-15', 'yy-mm-dd'),'html에서 python함수 구동 (파이어베이스 읽기)');
--행 108
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,145,to_date('19-11-22', 'yy-mm-dd'),'자바 질문 ㅠㅠ (스윙)');
--행 109
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,46,to_date('20-01-02', 'yy-mm-dd'),'파이썬 프로그램에서 사진이나 동영상 띄우는법 좀 알려주세요');
--행 110
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,145,to_date('19-04-24', 'yy-mm-dd'),'파이썬 오류 질문 valueerror: invalid literal for int() with base 10: ''''');
--행 111
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,85,to_date('20-02-04', 'yy-mm-dd'),'함수 공부하다가 궁금한게 생겨서 질문합니다!');
--행 112
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,195,to_date('19-10-05', 'yy-mm-dd'),'자바 클래스를 파라미터로 전달');
--행 113
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,245,to_date('20-07-10', 'yy-mm-dd'),'html, css, js] 사용자의 input 값을 출력하는데, 그 출력값으로 드롭다운 메뉴를 만들고 싶습니다.');
--행 114
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,276,to_date('21-08-06', 'yy-mm-dd'),'파이썬 소인수분해');
--행 115
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,227,to_date('21-12-04', 'yy-mm-dd'),'파이썬 출력 질문입니다');
--행 116
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,175,to_date('19-02-22', 'yy-mm-dd'),'파이썬 두 클래스에서 다른 클래스 값을 사용하려면 어떻게 해야하나요?');
--행 117
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,188,to_date('20-06-25', 'yy-mm-dd'),'파이썬 class with');
--행 118
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,178,to_date('19-09-17', 'yy-mm-dd'),'[android][kotlin] viewmodel 에서 observe와 livedata 관련 질문좀 드립니다.');
--행 119
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,178,to_date('21-10-14', 'yy-mm-dd'),'csv 모듈을 통해 파일을 딕셔너리로 불러오기');
--행 120
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,209,to_date('19-12-23', 'yy-mm-dd'),'파이썬 질문');
--행 121
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,257,to_date('19-03-12', 'yy-mm-dd'),'파이썬 범위 지정에 대한 고민');
--행 122
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,270,to_date('20-09-20', 'yy-mm-dd'),'파이썬 콘솔화면에서 ctrl c 입력 시 keyboardinterrupt 안 되게 하기');
--행 123
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,191,to_date('19-02-03', 'yy-mm-dd'),'vs code execute .cpp file 시 error code 1과 함께 터미널이 종료됩니다.');
--행 124
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,168,to_date('20-03-16', 'yy-mm-dd'),'android studio 에뮬레이터 keeps stopping 문제');
--행 125
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,10,to_date('21-03-13', 'yy-mm-dd'),'캐글에서 데이터 이미지 분류를 위한 데이터를 가져오는데 잘 안되네요.');
--행 126
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,192,to_date('21-02-19', 'yy-mm-dd'),'[react] 리액트 초보입니다. 공부하다가 궁금한게 있어서 질문드립니다. 템플릿 vs 컴포넌트');
--행 127
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,119,to_date('20-01-08', 'yy-mm-dd'),'[파이썬] 현재 요일과 지정된 요일의 남은 요일(시간) 계산하기');
--행 128
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,81,to_date('19-08-21', 'yy-mm-dd'),'파이썬 dataframe 특정 조건의 값들 nan 으로 바꾸기');
--행 129
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,112,to_date('21-02-17', 'yy-mm-dd'),'표준라이브러리는 무엇으로 구성되어 있나요?');
--행 130
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,256,to_date('20-04-02', 'yy-mm-dd'),'파이썬 자료 정렬 결과를 라벨링 이용하여 출력');
--행 131
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,70,to_date('21-02-04', 'yy-mm-dd'),'리눅스 커널에 syscall을 추가 후 syscall()로 부를 때 오류(errno 38)에 관해 질문이 있습니다.');
--행 132
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,16,to_date('21-06-19', 'yy-mm-dd'),'파이썬 숫자를 문자열로');
--행 133
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,100,to_date('20-08-11', 'yy-mm-dd'),'파이썬 모듈 삭제');
--행 134
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,281,to_date('21-03-13', 'yy-mm-dd'),'python에서 mongodb 로 중첩 필드 조건 검색하는 방법이 어떻게 되나요?');
--행 135
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,28,to_date('20-08-09', 'yy-mm-dd'),'숙제요청 삭제 파이썬 초보 질문드립니다 아래 문제의 코드 작성해주시면 감사하겠습니다');
--행 136
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,10,to_date('21-03-23', 'yy-mm-dd'),'장고로 웹페이지 만들때 검색 기능이 동작이 안됩니다 ㅠㅠ 도와주세요...!');
--행 137
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,266,to_date('21-05-11', 'yy-mm-dd'),'문자열 순차적 비교');
--행 138
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,156,to_date('20-12-16', 'yy-mm-dd'),'파이썬 최단 경로 구하기');
--행 139
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,175,to_date('21-01-10', 'yy-mm-dd'),'파이썬 중복조합 문제');
--행 140
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,266,to_date('19-05-28', 'yy-mm-dd'),'zerodivisionerror: integer division or modulo by zero 오류 질문');
--행 141
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,227,to_date('19-06-13', 'yy-mm-dd'),'숙제요청삭제 c 언어 코딩 질문있습니다.');
--행 142
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,28,to_date('19-09-07', 'yy-mm-dd'),'c언어 평균 구하는 프로그램 오류 질문이요');
--행 143
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,260,to_date('21-04-22', 'yy-mm-dd'),'파이썬 sys.argv 에 대한 질문');
--행 144
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,253,to_date('19-01-11', 'yy-mm-dd'),'[파이썬] list내 요소 최소, 최대값 구하는 코딩이 정상작동하지가 않네요');
--행 145
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,122,to_date('20-01-13', 'yy-mm-dd'),'dc모터 구동 질문이요!');
--행 146
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,223,to_date('20-04-09', 'yy-mm-dd'),'list 요소 제거하기 valueerror: list.remove(x): x not in list');
--행 147
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,22,to_date('21-05-07', 'yy-mm-dd'),'라즈베리파이 vnc viewer 를 공유기 포트포워딩을 통해 장거리에서 접속할 수 있나요?');
--행 148
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,53,to_date('21-12-13', 'yy-mm-dd'),'py파일에서 gui변환');
--행 149
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,46,to_date('21-08-17', 'yy-mm-dd'),'추가 질문 입니다. random 함수 가중치 관련');
--행 150
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,215,to_date('20-12-08', 'yy-mm-dd'),'안드로이드 스튜디오 프래그먼트 게시판 이미지 업로드 코드 문제입니다.');
--행 151
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,270,to_date('20-12-14', 'yy-mm-dd'),'맥os python conda 설치 관련 질문입니다(문제시 삭제하겠습니다)');
--행 152
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,284,to_date('20-06-27', 'yy-mm-dd'),'파이썬 이동거리 구하기');
--행 153
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,273,to_date('20-11-25', 'yy-mm-dd'),'aws elb 와 ssl 적용 범위 문제');
--행 154
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,126,to_date('19-09-26', 'yy-mm-dd'),'sleep study test at home in hyderabad');
--행 155
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,298,to_date('19-11-28', 'yy-mm-dd'),'랜덤으로 뽑은 숫자 중에서 가장 많이 나온 숫자를 찾기');
--행 156
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,159,to_date('19-07-03', 'yy-mm-dd'),'파이썬 xlwings 추가질문');
--행 157
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,171,to_date('20-05-02', 'yy-mm-dd'),'xml 마크업 언어 설계문제... 도와주세요!!!');
--행 158
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,137,to_date('21-07-07', 'yy-mm-dd'),'레드마인_설치한 플러그인을 찾을 수 없다고 나와요.');
--행 159
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,214,to_date('20-04-13', 'yy-mm-dd'),'scanf로 입력받는 중에 문제가 있는거 같아요');
--행 160
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,156,to_date('20-09-15', 'yy-mm-dd'),'안드로이드 파이어베이스 질문');
--행 161
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,149,to_date('20-05-08', 'yy-mm-dd'),'파이썬 프렉탈 구조 , 피타고라스 나무 질문드려요.');
--행 162
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,87,to_date('21-03-09', 'yy-mm-dd'),'파이썬에서 a.m으로 구성되어있는 시간데이터 처리');
--행 163
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,287,to_date('20-10-08', 'yy-mm-dd'),'input 함수를 쓰고싶어요. 도와주세요');
--행 164
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,5,to_date('21-05-01', 'yy-mm-dd'),'c언어 처리되지 않은 예외가 throw됨: 쓰기 액세스 위반입니다.');
--행 165
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,202,to_date('21-04-22', 'yy-mm-dd'),'아두이노 코드 오류 질문 expected unqualified-id before ''.'' token');
--행 166
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,137,to_date('19-11-17', 'yy-mm-dd'),'파이썬 문자열을 이어 붙이는 걸 모르겠음.');
--행 167
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,253,to_date('21-12-15', 'yy-mm-dd'),'최대값을 구하는 함수에서 -9999가 들어가는 이유');
--행 168
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,182,to_date('21-07-18', 'yy-mm-dd'),'recyclerview에 viewholder 질문드립니다.');
--행 169
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,47,to_date('19-05-16', 'yy-mm-dd'),'pymysql update 에러입니다.');
--행 170
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,106,to_date('20-02-13', 'yy-mm-dd'),'반복문인 for 가 왜 들어가야 하는지 이해가 안 갑니다.');
--행 171
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,259,to_date('19-06-27', 'yy-mm-dd'),'데이터베이스 배우는 고1입니다. 연습문제 해답 알려주실분 계신가요..');
--행 172
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,70,to_date('21-12-15', 'yy-mm-dd'),'c++ this nullptr 엑세스 함수 오류');
--행 173
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,155,to_date('19-03-14', 'yy-mm-dd'),'파이썬 왕초보입니다 아예 구도를 어떻게 잡아야 할지 모르겠어서 그런데 의사코드같은 걸로 구조를 좀 설명해주실 수 있을까요??');
--행 174
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,298,to_date('21-10-04', 'yy-mm-dd'),'파이썬 베지에 곡선 그리기');
--행 175
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,263,to_date('20-04-28', 'yy-mm-dd'),'binary search tree 질문있습니다.');
--행 176
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,191,to_date('20-11-22', 'yy-mm-dd'),'node.js "callback is not a function" 에러 질문');
--행 177
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,284,to_date('21-01-05', 'yy-mm-dd'),'hex() takes no arguments (1 given) 에러 발생 관련');
--행 178
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,131,to_date('20-12-13', 'yy-mm-dd'),'<파이썬> 색의 rgb를 보고 빨주노초파남보흰검 중 하나로 판별하기');
--행 179
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,159,to_date('20-12-25', 'yy-mm-dd'),'jsp에 sql 데이터 를 가져와서 뿌리는 방법에 대한 질문입니다');
--행 180
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,28,to_date('20-05-19', 'yy-mm-dd'),'timeout오류가 나는데 어디가 잘못된 걸까요??');
--행 181
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,130,to_date('21-11-26', 'yy-mm-dd'),'소수 만들기 코드 중 어디가 잘못된 것인지 모르겠습니다.');
--행 182
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,174,to_date('21-01-16', 'yy-mm-dd'),'flask로 앱 만든거 실행파일로 만들어서 공유할수 있게 하는방법 있나요?');
--행 183
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,109,to_date('20-04-22', 'yy-mm-dd'),'파이썬 입문 강의 보면서 문제 풀다가 답은 찾았는데 이유를 모르겠어서 질문드립니다');
--행 184
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,138,to_date('19-05-19', 'yy-mm-dd'),'jsp파일 안에서 javascript 변수 불러오기');
--행 185
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,130,to_date('19-06-06', 'yy-mm-dd'),'python reqeusts로 실행시 expected string or bytes-like object 오류가 계속 나는데요 원인을 모르겠습니다.');
--행 186
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,281,to_date('21-12-23', 'yy-mm-dd'),'데이터 베이스 질문) 관계대수 그, 중 조인에 대하여 질문을 드립니다.');
--행 187
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,206,to_date('20-02-06', 'yy-mm-dd'),'[html/css] web 화면설계 질문');
--행 188
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,37,to_date('19-04-04', 'yy-mm-dd'),'[코랩-파이썬]found input variables with inconsistent numbers of samples 오류메세지 해결');
--행 189
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,28,to_date('19-12-09', 'yy-mm-dd'),'c언어 linked list 문제에서 nullptr 오류 관련 질문입니다');
--행 190
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,140,to_date('19-09-15', 'yy-mm-dd'),'for문에서 출력된 값 활용가능한가요?');
--행 191
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,293,to_date('20-08-20', 'yy-mm-dd'),'getelementbyid와getelementbyclassname 질문입니다.');
--행 192
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,11,to_date('20-01-05', 'yy-mm-dd'),'pytorch 초급 코드 질문(linear regression)');
--행 193
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,104,to_date('19-02-24', 'yy-mm-dd'),'사이드 탭을 여는 경우 다른 탭이 열릴 때 완전히 닫히기 - java script');
--행 194
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,48,to_date('21-11-12', 'yy-mm-dd'),'크롤링해서 긁어온 값을 웹페이지에 출력 질문');
--행 195
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,89,to_date('19-03-18', 'yy-mm-dd'),'코린이질문받아주세요');
--행 196
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,76,to_date('20-03-02', 'yy-mm-dd'),'파이썬 딕셔너리 검색 질문입니다');
--행 197
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,183,to_date('21-04-06', 'yy-mm-dd'),'파이썬 포맷 정렬');
--행 198
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,117,to_date('19-02-12', 'yy-mm-dd'),'파이썬 파일쓰기 write() 함수 사용');
--행 199
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,243,to_date('19-10-17', 'yy-mm-dd'),'html 시스템 안에서 링크');
--행 200
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,275,to_date('20-03-13', 'yy-mm-dd'),'c++ self reference');
--행 201
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,266,to_date('21-03-01', 'yy-mm-dd'),'고1 파이썬중간고사 살려주세요ㅠ');
--행 202
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,45,to_date('19-06-07', 'yy-mm-dd'),'서버 배포시, 파일안에 암호가 들어 있어도 괜찮은지');
--행 203
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,151,to_date('21-03-06', 'yy-mm-dd'),'다시 수정하여 질문 드립니다. list 에서 특정 파일 추출');
--행 204
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,260,to_date('20-12-03', 'yy-mm-dd'),'안드로이드 빌드 에러..');
--행 205
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,146,to_date('19-07-12', 'yy-mm-dd'),'c++ union 메모리 질문입니다');
--행 206
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,67,to_date('20-12-23', 'yy-mm-dd'),'로그인 되어있는 id값이 화면에 안 나옵니다.');
--행 207
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,5,to_date('21-07-14', 'yy-mm-dd'),'주피터노트북 질문입니다. 폴더내 다수의 csv파일을 불러와서 합치는 방법 질문');
--행 208
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,69,to_date('21-09-18', 'yy-mm-dd'),'안녕하세요 hello java 질문입니다..ㅠㅠ');
--행 209
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,134,to_date('21-08-21', 'yy-mm-dd'),'어떻게 선형회귀분석 dataset에서 기존 독립변수들 중 일부를 제외시키고 회귀분석할 수 있나요??');
--행 210
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,236,to_date('19-11-19', 'yy-mm-dd'),'셀레니움_페이지 분석도구에서 요소는 있는데 검색을 해보면 요소가 없다고 합니다.');
--행 211
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,234,to_date('20-02-11', 'yy-mm-dd'),'random_state 값 선택');
--행 212
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,6,to_date('19-09-01', 'yy-mm-dd'),'애나그램(anagram) 게임 c++ 오류발생 원인');
--행 213
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,293,to_date('21-08-01', 'yy-mm-dd'),'파이썬 초보 csv파일 파이썬으로 읽어 여자인 사람만 뽑기');
--행 214
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,124,to_date('21-05-04', 'yy-mm-dd'),'[타입스크립트] <htmlinputelement>는 string만 된다구??? (초보주의 !!)');
--행 215
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,85,to_date('21-11-09', 'yy-mm-dd'),'파이썬 리스트 랜덤 추출을 할 때, 난수 n의 개수만큼 랜덤 추출 (코드 봐 주세요...)');
--행 216
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,233,to_date('21-09-28', 'yy-mm-dd'),'requests 모듈을 이용하여 크롤링 할 때 json decode error가 뜨는 상황입니다');
--행 217
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,221,to_date('21-08-11', 'yy-mm-dd'),'파이썬 변수값 저장방법 질문');
--행 218
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,186,to_date('20-12-01', 'yy-mm-dd'),'c언어 배열 문제 부탁드립니다...');
--행 219
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,191,to_date('20-06-03', 'yy-mm-dd'),'__str__ 메서드가 실행이 안되고 attribute error가 발생합니다..');
--행 220
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,221,to_date('21-09-17', 'yy-mm-dd'),'함수의 수행시간을 θ-표기법으로 표현하는 방법');
--행 221
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,187,to_date('19-12-25', 'yy-mm-dd'),' 위치를 기록하는 동안 액세스 위반이 발생했습니다..');
--행 222
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,193,to_date('20-11-06', 'yy-mm-dd'),'c언어 전위, 후위연산 (++x, y--) 질문');
--행 223
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,114,to_date('20-03-12', 'yy-mm-dd'),'파이썬 랜덤워크에서의 평균거리');
--행 224
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,248,to_date('19-05-05', 'yy-mm-dd'),'어떻게 조합해야 할지 모르겠습니다. 파이썬 딕셔너리');
--행 225
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,114,to_date('19-12-05', 'yy-mm-dd'),'파이썬으로 코딩을 하는데 문제가 생겼습니다. typeerror: ''<='' not supported between instances of ''int'' and ''nonetype''');
--행 226
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,14,to_date('20-03-09', 'yy-mm-dd'),'cmd nodejs 질문드립니다.');
--행 227
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,112,to_date('19-05-08', 'yy-mm-dd'),'파이썬 리스트 in연산자 여러개 검사하려고 합니다.');
--행 228
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,22,to_date('21-03-14', 'yy-mm-dd'),'파이썬 표준편차,,');
--행 229
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,170,to_date('21-05-19', 'yy-mm-dd'),'딕셔너리 값 출력할때 {}이랑 '' 없애는법좀 알려주세요');
--행 230
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,295,to_date('21-08-21', 'yy-mm-dd'),'main에서 반환형 메서드를 독립적으로 쓸 수 있나요?');
--행 231
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,190,to_date('19-01-02', 'yy-mm-dd'),'flask 파이썬 진행상황 사용자에게 노출 어떻게 하면 되나요?');
--행 232
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,271,to_date('20-11-17', 'yy-mm-dd'),'다른 탭에서도 todo list를 사용할 수 있는 방법이 있을까요 ? - javascript');
--행 233
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,215,to_date('19-01-22', 'yy-mm-dd'),'파이썬 터틀에서 선 색상을 리스트로 나타내기');
--행 234
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,121,to_date('19-05-03', 'yy-mm-dd'),'c++ cstdlib 없이도 atoi가 에러 없이 수행되는 이유가 궁금합니다.');
--행 235
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,228,to_date('21-09-08', 'yy-mm-dd'),'php 정수의 오버플로우 타입 변환에 관해 질문하고 싶습니다.');
--행 236
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,127,to_date('20-04-10', 'yy-mm-dd'),'c언어 값에 22라는 숫자가 있으면 count를 1씩 증가시키는 코드');
--행 237
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,184,to_date('21-01-11', 'yy-mm-dd'),'c언어 주급계산 코드 작성 좀 도와주세요.');
--행 238
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,194,to_date('21-01-23', 'yy-mm-dd'),'js 모듈 jsp에 적용 질문');
--행 239
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,234,to_date('21-01-22', 'yy-mm-dd'),'c 홀수이면 배열의 앞에서부터 채워나가고 짝수이면 뒤에서부터 채우기');
--행 240
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,143,to_date('20-06-06', 'yy-mm-dd'),'예외가 throw됨: 읽기 액세스 위반입니다. 처리되지 않은 예외가 throw됨: 읽기 액세스 위반입니다. 두개가 뜹니다.');
--행 241
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,179,to_date('19-01-03', 'yy-mm-dd'),'pandas 특정 기간(window) 선택 후 연도별로 필요한 정보 각각 추출 방법');
--행 242
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,121,to_date('21-03-22', 'yy-mm-dd'),'c++ vector');
--행 243
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,109,to_date('19-09-26', 'yy-mm-dd'),'c++ setw 출력이 이상한데');
--행 244
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,12,to_date('19-02-22', 'yy-mm-dd'),'파이썬 셀레니움 headless 모드로 하다가 마지막 결과만 창으로 띄우기');
--행 245
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,43,to_date('19-09-16', 'yy-mm-dd'),'html 화면 크기를 늘리면 backgroud 이미지랑 텍스트랑 분리되는데 함께 움직이게 하려면 어떻게 해야 할까요?');
--행 246
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,126,to_date('21-12-27', 'yy-mm-dd'),'통계문제인데 x(엑스바)=1.9 median=2인데 여기서 자녀수가 1명 더많은 한 가구가 이사왔을때의 평균과 중앙값을 모르겠습니다 ㅠㅠ 도와주세요');
--행 247
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,79,to_date('20-04-06', 'yy-mm-dd'),'c++ 이용한 후위표식수식');
--행 248
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,284,to_date('21-07-11', 'yy-mm-dd'),'c언어로 2차방정식 해 구하는 것 좀 도와주세요');
--행 249
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,202,to_date('19-12-07', 'yy-mm-dd'),'c언어 이진탐색트리 삽입코드가 작동이 안됩니다.');
--행 250
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,138,to_date('19-12-08', 'yy-mm-dd'),'flask 웹에서 입력받고 처리하는 로딩시간동안 진행상황을 웹에 표시를 해주라하는데 랜더링 되는 도중에 진행도확인을 보여줄수 있는 방법이 잇나요?');
--행 251
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,238,to_date('21-02-01', 'yy-mm-dd'),'flask로 개발중인데 웹페이지에서 버튼 누르면 지금 화면을 pdf파일로 이미지 따올수있나요?');
--행 252
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,204,to_date('19-08-06', 'yy-mm-dd'),'tkinter에서 간단한 계산 함수에서 계속 오답입니다만 나옵니다.');
--행 253
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,283,to_date('21-09-26', 'yy-mm-dd'),'파이썬 리스트 중복제거 !');
--행 254
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,16,to_date('20-11-08', 'yy-mm-dd'),'자동차 속도를 구하는 문제인데 결과값이 안나와요');
--행 255
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,62,to_date('21-04-18', 'yy-mm-dd'),'파이썬으로 받은 시리얼데이터를 파싱해서 리스트로 저장하고싶습니다.');
--행 256
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,128,to_date('20-01-25', 'yy-mm-dd'),'c언어 문자열 찾기, strstr 구현하기');
--행 257
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,247,to_date('19-08-12', 'yy-mm-dd'),'c언어 배열문제');
--행 258
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,175,to_date('19-02-01', 'yy-mm-dd'),'pygame mac 전체화면 하는법');
--행 259
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,176,to_date('21-09-26', 'yy-mm-dd'),'python script를 통해 주가를 가져오려 합니다');
--행 260
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,103,to_date('20-11-08', 'yy-mm-dd'),'안드로이드 스튜디오 라이브러리를 받지 못하고 있습니다.');
--행 261
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,113,to_date('19-09-25', 'yy-mm-dd'),'파이썬 turtle 로 하트모양 만들기');
--행 262
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,86,to_date('20-07-25', 'yy-mm-dd'),'[react 질문] 리덕스툴킷(createasyncthunk), axios를 사용해서 crud를 구현하는데 update가 잘 안되서 질문드려요 !!');
--행 263
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,27,to_date('19-08-17', 'yy-mm-dd'),'b2a5 명령을 4비트열로 어떻게 쓰나요...???');
--행 264
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,8,to_date('19-10-12', 'yy-mm-dd'),'flask 활용해서 분석결과 이미지가 웹상에서 안바뀌어요');
--행 265
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,84,to_date('20-08-15', 'yy-mm-dd'),'(컴퓨터의 구성과 자료처리-기계어 파트)주소98에서 a2까지면 a가 10이니까 주소가 98에서 102까지 인가요???');
--행 266
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,211,to_date('21-02-18', 'yy-mm-dd'),'pdfsimpli');
--행 267
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,235,to_date('19-09-03', 'yy-mm-dd'),'html하고 css 연동이 안되요. 제발 알려주세요.');
--행 268
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,279,to_date('21-08-02', 'yy-mm-dd'),'glob와 관련된 \\ 문제가 발생했습니다. `\`가 아닌 `\\`가 출력됨.');
--행 269
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,267,to_date('19-12-17', 'yy-mm-dd'),'c언어공부중인데 return에 대한 궁금증입니다.');
--행 270
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,134,to_date('21-12-16', 'yy-mm-dd'),'자바스크립트 작동 관련 질문');
--행 271
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,224,to_date('19-03-26', 'yy-mm-dd'),'윈도우 api 질문');
--행 272
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,26,to_date('19-04-06', 'yy-mm-dd'),'c언어 문자 5개를 입력받아서 대문자인지 소문자인지 혹은 영문자가 아닌지 판별하는 프로그램 간단한 질문입니다.');
--행 273
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,179,to_date('21-02-05', 'yy-mm-dd'),'openpyxl 행 또는 열 삭제 시 문의사항');
--행 274
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,287,to_date('21-02-11', 'yy-mm-dd'),'파이썬 플라스크 기본적인 코드를 작성하였는데 404에러가 발생');
--행 275
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,33,to_date('20-11-28', 'yy-mm-dd'),'자바 초보입니다... 메서드로 분리한 성적 처리 프로그램 작성 질문드려요ㅜㅜ');
--행 276
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,221,to_date('19-05-15', 'yy-mm-dd'),'딕셔너리에서 키 추출해서 리스트 만드는 법');
--행 277
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,133,to_date('20-05-01', 'yy-mm-dd'),'c언어 초보입니다 이문제만 3시간 잡고 있네요 ㅠㅠ');
--행 278
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,15,to_date('19-04-14', 'yy-mm-dd'),'json 저장 코드를 2개를 넣으면 꼬입니다.');
--행 279
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,202,to_date('19-12-18', 'yy-mm-dd'),'파이썬 기초 print(trump_tweet(text)) 에서 nameerror: name ''text'' is not defined');
--행 280
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,9,to_date('19-07-20', 'yy-mm-dd'),'자바 처음배우는사람입니다. 학원에서 배웁니다. 혹시 한줄씩 해석해줄사람있으신가요 ?...case4:밖에 이해 못하겠네요.');
--행 281
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,0,to_date('21-04-11', 'yy-mm-dd'),'파이썬 초보인데 문자와 숫자를 함께 입력받은 후에 문자를 숫자만큼 출력하려면 어떻게해야 하나요?');
--행 282
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,87,to_date('21-08-19', 'yy-mm-dd'),'파이썬 replace 질문 있습니다!');
--행 283
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,54,to_date('21-07-21', 'yy-mm-dd'),'pyqt5) qgraphicsview의 루프 안에서 만들어진 그림을 실시간으로 반영하고 싶습니다.');
--행 284
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,14,to_date('21-08-19', 'yy-mm-dd'),'[셀레니움]htm 문서 이름까지는 알아 냈습니다. 이제 그것들을 하나씩 클릭하려면 어떻게 해야 하나요?');
--행 285
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,277,to_date('21-12-08', 'yy-mm-dd'),'파이썬 텍스트파일에서 텍스트 출력하기');
--행 286
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,212,to_date('19-08-02', 'yy-mm-dd'),'python에서 def으로 정의후에 이 정의한 값을 바꾸고 싶을 때는 어떻게하나요');
--행 287
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,109,to_date('20-09-28', 'yy-mm-dd'),'넘파이 배열 안 문자열 수정 잘 아시는 분?');
--행 288
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,247,to_date('20-05-05', 'yy-mm-dd'),'반환값?출력값?');
--행 289
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,100,to_date('21-01-10', 'yy-mm-dd'),'[셀레니움] 링크 선택을 어떻게 하는지 모르겠어요.');
--행 290
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,289,to_date('20-12-09', 'yy-mm-dd'),'c언어 if(word==apple) 에서 식별자 apple이 정의되어 있지 않다는 메세지가 발생');
--행 291
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,200,to_date('21-12-07', 'yy-mm-dd'),'파이썬 넘파이 잘 다루시는분 np.unique 질문드립니다.');
--행 292
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,245,to_date('19-10-13', 'yy-mm-dd'),'python에서 os.getcwd() 값이 상위 폴더로 나옵니다.');
--행 293
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,77,to_date('19-04-14', 'yy-mm-dd'),'for 문에서 range 관련하여 질문있습니다!');
--행 294
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,154,to_date('20-12-12', 'yy-mm-dd'),'python 초보인데 트위터 웹크롤링 중 typeerror ( getoldtweets3 패키지 사용)가 나는데 도와주세요');
--행 295
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,278,to_date('20-06-26', 'yy-mm-dd'),'파이썬 왕초보 6000을 어떻게 다섯자리로 표현해야하는지 모르겠습니다.');
--행 296
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,218,to_date('21-02-19', 'yy-mm-dd'),'파이썬으로 만든 프로그램 저장 질문');
--행 297
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,264,to_date('20-10-09', 'yy-mm-dd'),'파이썬 명단관리 프로그램 질문');
--행 298
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,241,to_date('20-11-11', 'yy-mm-dd'),'파이썬 a.pop()만 실행 했을 때에는 결과값이 출력 되는데, 반복문 코드에서는 print안으로 넣어야만 출력값이 나옵니다.');
--행 299
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,253,to_date('21-05-19', 'yy-mm-dd'),'파이썬 윈도우 실행 상태에서 버튼 바꾸기 질문입니다');
--행 300
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,242,to_date('21-05-18', 'yy-mm-dd'),'파이썬 윈도우 실행 질문');
--행 1
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,133,to_date('21-09-22', 'yy-mm-dd'),'c 문자열과 특정 문자를 입력받아 특정 문자 이전의 문자를 출력하는 코드');
--행 2
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,299,to_date('21-03-02', 'yy-mm-dd'),'c 날짜범위를 입력받는 방법');
--행 3
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,181,to_date('21-12-27', 'yy-mm-dd'),'c언어 과제 문자열에서 찾는 문자열의 이전 문자들을 리턴');
--행 4
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,290,to_date('20-11-03', 'yy-mm-dd'),'파이썬 리스트 관련 질문입니다.');
--행 5
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,272,to_date('20-03-17', 'yy-mm-dd'),'요즘 많이 사용하는 오라클 데이터베이스 버젼이 무엇인가요??? (저는 대학교 다닐 때와 졸업 후 개인적으로 공부할 때 11g를 사용했습니다!!!)');
--행 6
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,211,to_date('19-02-15', 'yy-mm-dd'),'파이썬 질문이요! 하다가 도저히 안되서');
--행 7
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,59,to_date('19-02-17', 'yy-mm-dd'),'파이썬기초 국가별 iso2코드를 대륙명으로 변환하기');
--행 8
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,200,to_date('20-04-12', 'yy-mm-dd'),'c언어 텍스트 입출력 질문');
--행 9
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,93,to_date('21-05-15', 'yy-mm-dd'),'++연산자로 시간 출력하기');
--행 10
insert into tblQuestion (question_seq, student_seq, question_date, question_content) values (question_seq.nextVal,173,to_date('20-06-23', 'yy-mm-dd'),'pygame mask 충돌');

commit;