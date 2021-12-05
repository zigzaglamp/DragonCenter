   
 create table tblAnswer (
    question_seq number not null,
    teacher_seq number not null,
    answer_regdate date default sysdate not null,
    answer_content varchar2(300) not null
);

alter table tblAnswer
    add constraint tbla_question_seq_pk primary key(question_seq);
alter table tblAnswer
    add constraint tbla_question_seq_fk foreign key(question_seq) references tblQuestion(question_seq);
alter table tblAnswer
    add constraint tbla_teacher_seq_fk foreign key(teacher_seq) references tblTeacher(teacher_seq);


insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) 
     values (1,1,to_date('19-02-02', 'yy-mm-dd'),'아래 코드를 보자. 지금까지 무수히 많은 예제에서 사용했던 코드다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (2,1,to_date('19-02-02', 'yy-mm-dd'),'이것이 화면에 어떤 내용을 출력하는 것이라는 건 이미 알고 있다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (3,1,to_date('19-02-02', 'yy-mm-dd'),' 하지만 도대체 우리가 정의한 적이 없는 이 명령은 무엇일까?를 생각해볼 때가 왔다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (4,1,to_date('19-02-02', 'yy-mm-dd'),'문법적으로 봤을 때 println은 메소드가 틀림없다. 그런데 메소드 앞에 Sytem.out이 있다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (5,1,to_date('19-02-03', 'yy-mm-dd'),'System은 클래스이고 out은 그 클래스의 필드(변수)이다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (6,1,to_date('19-02-03', 'yy-mm-dd'),'API란 자바 시스템을 제어하기 위해서 자바에서 제공하는 명령어들을 의미한다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (7,1,to_date('19-02-03', 'yy-mm-dd'),'Java SE(JDK)를 설치하면 자바 시스템을 제어하기 위한 API를 제공한다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (8,1,to_date('19-02-03', 'yy-mm-dd'),'자바 개발자들은 자바에서 제공한 API를 이용해서 자바 애플리케이션을 만들게 된다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (9,1,to_date('19-02-04', 'yy-mm-dd'),'패키지 java.lang.*의 클래스들도 자바에서 제공하는 API 중의 하나라고 할 수 있다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content)
      values (10,1,to_date('19-02-04', 'yy-mm-dd'),'API가 무엇인지 궁금하다면 아래의 동영상을 시청하자.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (11,1,to_date('20-06-23', 'yy-mm-dd'),'간단한 방법으로는 아래와 같이 find 함수의 2번째 인자 (시작 위치) 값을 넘겨서 처리하실 수 있습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (12,1,to_date('19-12-25', 'yy-mm-dd'),'visual studio code 가 아닌 다른 ide (파이참 등) 에서 실행하시는 경우 출력결과가 조금 다를 수 있습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (13,5,to_date('21-08-23', 'yy-mm-dd'),'네 맞습니다. 연습 삼아 써보시라고 한 것이지, 어차피 랜덤으로 샘플링 하는거라 실제로는 셔플 동작은 없어도 됩니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (14,3,to_date('20-08-07', 'yy-mm-dd'),'네 가능합니다. 아래 예제 코드를 참고해주세요.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (15,5,to_date('20-04-19', 'yy-mm-dd'),'함수 내에서 어떤 동작을 수행하고 나서 값을 반환해주는 게 return 을 통해서 가능합니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (16,1,to_date('20-10-16', 'yy-mm-dd'),'정규식 (regular expression) 을 이용해서 다음과 같이 할 수 있습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (17,2,to_date('21-03-28', 'yy-mm-dd'),'파일을 열고 닫지 않아도 동작은 할 수 있지만 소스코드 내 다른 곳에서 똑같은 파일에 접근하는 경우 이미 파일이 열려 있으면 lock 상태가 되기 때문');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (18,5,to_date('19-03-15', 'yy-mm-dd'),'소스코드 작성중인 파일명을 pickle.py 로 하셨을텐데 my_pickle.py 등과 같이 변경해주셔야 합니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (19,10,to_date('21-09-27', 'yy-mm-dd'),'pickle.dump 를 통해 생성된 파일은 에디터에서 읽을 수 있는 텍스트 형태가 아닌 바이너리 형태로 저장되므로 읽을 수 없는 것이 맞습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (20,10,to_date('19-12-08', 'yy-mm-dd'),'읽어오는 방법에 rb 가 있고 rt 가 있습니다. 이는 binary 와 text 의 줄임말입니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (21,4,to_date('21-12-09', 'yy-mm-dd'),'쉽게 구분짓자면 클래스 내의 메소드를 정의할 때는 self 를 적으시고, 클래스 외부의 일반 함수를 정의하실 때에는 self 없이 해주시면 됩니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (22,7,to_date('19-02-26', 'yy-mm-dd'),'유닛은 생성되고 나서 전쟁을 할 때만 필요할 때마다 1시로 공격, 5시로 공격 등 방향을 지정합니다. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (23,4,to_date('20-05-06', 'yy-mm-dd'),'본 영상에 나오는 표지 제목 및 설명 중 "연산자 오버로딩"은 잘못된 워딩이며 "메소드 오버라이딩"이 올바른 표현입니다. 강의 오류이며 혼란을 드려 대단히 죄송합니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (24,1,to_date('21-05-11', 'yy-mm-dd'),'다중 상속 코드를 작성했을 때, super() 를 쓰면 순서상 맨 "처음" 클래스(예제에서는 flyable) 에 대해서 __init__ 함수가 호출 됩니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (25,5,to_date('21-05-23', 'yy-mm-dd'),'5이상 20이하의 값을 얻기 위해서 randint(5, 20) 이나 randrange(5, 21) 로 작성해야 합니다. 강의 오류이며 혼란을 드려 대단히 죄송합니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (26,1,to_date('21-01-03', 'yy-mm-dd'),'__str__ 이 없어도 msg 에 입력한 값이 동일하게 출력됩니다. 하지만 만약 에러 메시지를 개발자가 변경하여 ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (27,1,to_date('21-02-17', 'yy-mm-dd'),' 하단에 나오는 버전 정보가 다를텐데, vscode 에서 버전 나오는 부분 클릭하셔서 터미널에 나오는 버전과 같은 것');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (28,1,to_date('21-01-02', 'yy-mm-dd'),'파이썬 설치할때 add python 3.x to path 부분 체크가 안되었나봐요. 아래 링크의 설명을 따라 환경변수 설정을 직접 해주셔도 되구요');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (29,3,to_date('19-05-04', 'yy-mm-dd'),'실수로 한 줄 실행 단축키(shift + enter)가 눌려진 모양이네요. ');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (30,1,to_date('20-01-21', 'yy-mm-dd'),'한 줄 전체 선택은 shift + home (커서 위치로부터 앞으로) 또는 shift + end (커서 위치로부터 뒤로) 를 통해 가능합니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (31,1,to_date('20-07-22', 'yy-mm-dd'),'그래서 일종의 약속으로 정한 것이 있는데, 다른 사람과 함께 작업하기 위해, 또는 미래의 자신이 코드를 알아보기 쉽게 하도록 위해');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (32,6,to_date('20-07-14', 'yy-mm-dd'),'만약 6/3 을 해도 정수 2가 아닌 2.0 으로 출력이 됩니다. 이를 피하려면, 아래와 같이 // 를 하거나 (소수점 버림) int 로 감싸면 (정수형으로 변환) 됩니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (33,5,to_date('21-11-28', 'yy-mm-dd'),'화면 축소는 ctrl 과 - 버튼을 함께, 화면 확대는 ctrl 과 + 버튼을 함께 누르면 됩니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (34,10,to_date('20-10-08', 'yy-mm-dd'),'cls (의미 : clear screen) 라고 입력하시면 됩니다. 맥에서는 clear 라고 해주세요.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (35,1,to_date('19-02-20', 'yy-mm-dd'),'예제와 같이 소스코드 내용과 함께 에러메시지가 나타난다면 그 바로 윗 문장의 닫는 괄호 ) 가 누락되었을 가능성이 가장 큽니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (36,1,to_date('20-08-25', 'yy-mm-dd'),'들여쓰기에 tab 과 space 가 혼용되었을 가능성이 있습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (37,3,to_date('21-09-07', 'yy-mm-dd'),'if, while, for, def 등 : 으로 끝나는 문장 다음에 나타나는 들여쓰기 중 잘못된 부분이 있어서 그렇습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (38,6,to_date('20-05-13', 'yy-mm-dd'),'키보드의 backspace 근처(왼쪽이나 아래)에 있습니다. |, \ 등의 문자가 그려져 있는 키 입니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (39,5,to_date('19-09-01', 'yy-mm-dd'),'아래 링크의 설명을 따라 설정을 변경해주세요.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (40,4,to_date('21-02-07', 'yy-mm-dd'),'두 사람이 있습니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (41,4,to_date('19-04-14', 'yy-mm-dd'),'java란 무엇인가?');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (42,8,to_date('21-07-21', 'yy-mm-dd'),'먼저 위키백과에 작성되어있는 내용입니다.');
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (43,10,to_date('20-10-14', 'yy-mm-dd'),'자바(java)는 자바로 기술된 프로그램 개발 및 실행을 할 수 있는 소프트웨어 모임의 총칭이다.');
--행 43
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (43,10,to_date('20-10-14', 'yy-mm-dd'),'자바(java)는 자바로 기술된 프로그램 개발 및 실행을 할 수 있는 소프트웨어 모임의 총칭이다. 자바 프로그램은 운영체제나 하드웨어에 의존하지 않는 바이트 코드(중간 언어)인 추상적인 코드로 구현된다. 따라서, 자바 프로그램을 실행하기 위해서는 자바 가상 머신(jvm)과 개발에 필요한 표준 라이브러리 세트와 컴파일러의 환경만 맞추면 자바 프로그램은 모든 환경에서 동일하게 동작한다. 이러한 실행환경과 개발환경을 제공하는 것이 자바 플랫폼이다.');
--행 44
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (44,1,to_date('21-04-03', 'yy-mm-dd'),'위의 내용만으로는 이해하기 힘든 부분이 있기에, 제가 생각하는 자바에 대한 부분을 정리해보도록 하겠습니다.');
--행 45
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (45,4,to_date('21-12-19', 'yy-mm-dd'),'객체지향프로그래밍(oop:object oriented programming) 언어이다.');
--행 46
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (46,4,to_date('21-06-24', 'yy-mm-dd'),'그로인해 유지보수가 쉽고 직관적인 코드 분석이 가능하다.');
--행 47
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (47,5,to_date('19-04-08', 'yy-mm-dd'),'분산 네트워크 기술을 지원한다.');
--행 48
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (48,4,to_date('20-05-18', 'yy-mm-dd'),'자바에는 tcp/ip 라이브러리가 기본적으로 포함되어있고, http 프로토콜을 지원.');
--행 49
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (49,2,to_date('19-09-10', 'yy-mm-dd'),'멀티쓰레딩을 지원한다.');
--행 50
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (50,5,to_date('20-12-21', 'yy-mm-dd'),'동일한 쓰레드를 동시에 수행할 수 있다.');
--행 51
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (51,8,to_date('19-11-26', 'yy-mm-dd'),'사용자 인터페이스 쓰레드와 장시간 계산이 필요한 쓰레드가 동시에 필요할 때 효과적이다.');
--행 52
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (52,9,to_date('20-08-24', 'yy-mm-dd'),'이식성이 높다.');
--행 53
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (53,8,to_date('19-09-25', 'yy-mm-dd'),'자바가상머신(jvm)에서 작동하기 때문에 운영체제 (ex. window, linux)의 종류에 상관없이 작동한다.');
--행 54
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (54,9,to_date('21-11-01', 'yy-mm-dd'),'자동 메모리 관리(garbage collecter)');
--행 55
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (55,4,to_date('19-10-19', 'yy-mm-dd'),'사용하지 않는 객체는 자동으로 메모리에서 체크하고 반환해준다.');
--행 56
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (56,2,to_date('20-02-13', 'yy-mm-dd'),'동적 로딩 지원.');
--행 57
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (57,4,to_date('19-02-02', 'yy-mm-dd'),'프로그램 실행시 모든 클래스가 로딩되지 않고, 필요한 시점에 클래스를 로딩하여 사용할 수 있다.');
--행 58
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (58,6,to_date('21-06-09', 'yy-mm-dd'),'그러므로 애플리케이션의 변경사항도 비교적 적은 작업만으로 처리할 수 있다.');
--행 59
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (59,5,to_date('21-02-01', 'yy-mm-dd'),'그렇다면 jvm이란 무엇일까?');
--행 60
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (60,3,to_date('20-06-02', 'yy-mm-dd'),'jvm이란?');
--행 61
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (61,1,to_date('21-12-11', 'yy-mm-dd'),'java virtual machine의 약자입니다.');
--행 62
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (62,5,to_date('20-07-23', 'yy-mm-dd'),'말그대로 자바를 실행하기 위한 가상 기계이고,');
--행 63
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (63,9,to_date('20-05-05', 'yy-mm-dd'),'자바 프로그램을 실행시키기 위해서 반드시 필요한 요소입니다.');
--행 64
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (64,10,to_date('21-12-27', 'yy-mm-dd'),'어플리케이션을 제작할 때 사용자가 페이지 요소를 조작할 수 있도록 페이지의 버튼, 텍스트, 이미지 등에 이벤트를 붙여야 할 때가 있습니다. ');
--행 65
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (65,8,to_date('20-04-23', 'yy-mm-dd'),'<ul id="todo-app">');
--행 66
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (66,1,to_date('20-01-07', 'yy-mm-dd'),'<li class="item">walk the dog</li>');
--행 67
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (67,10,to_date('20-11-02', 'yy-mm-dd'),'<li class="item">pay bills</li>');
--행 68
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (68,3,to_date('20-06-26', 'yy-mm-dd'),'<li class="item">make dinner</li>');
--행 69
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (69,3,to_date('19-10-07', 'yy-mm-dd'),'<li class="item">code for one hour</li>');
--행 70
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (70,6,to_date('21-11-13', 'yy-mm-dd'),'htmlcopy');
--행 71
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (71,5,to_date('20-05-08', 'yy-mm-dd'),'그렇다면 아마 대부분이 아래와 같이 구현할 것입니다.');
--행 72
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (72,2,to_date('19-02-18', 'yy-mm-dd'),'document.addeventlistener(''domcontentloaded'', function() {');
--행 73
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (73,6,to_date('19-11-18', 'yy-mm-dd'),'let app = document.getelementbyid(''todo-app'');');
--행 74
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (74,9,to_date('21-11-28', 'yy-mm-dd'),'et items = app.getelementsbyclassname(''item'');');
--행 75
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (75,7,to_date('21-09-25', 'yy-mm-dd'),' // 각 아이템에 이벤트 리스너를 등록합니다.');
--행 76
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (76,5,to_date('21-07-02', 'yy-mm-dd'),'for (let item of items) {');
--행 77
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (77,7,to_date('20-02-10', 'yy-mm-dd'),'item.addeventlistener(''click'', function() {');
--행 78
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (78,4,to_date('21-03-04', 'yy-mm-dd'),'alert(''you clicked on item: '' + item.innerhtml);');
--행 79
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (79,5,to_date('20-08-03', 'yy-mm-dd'),'예를 들어, 면접에서 면접관이 todo 리스트 어플리케이션 제작에 대해 질문하는 경우 “해당 리스트의 아이템에 대해서 사용자가 클릭할 때 이벤트가 일어나도록 구현하라” 라고 하면서 아래와 같은 샘플을 주겠죠.');
--행 80
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (80,7,to_date('19-06-18', 'yy-mm-dd'),'다이어그램에 표시할 정보들을 개인화 할 수 있습니다. ');
--행 81
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (81,4,to_date('20-02-19', 'yy-mm-dd'),'뿐만 아니라 표시된 정보들은 그 위치에서 직접 편집할 수도 있습니다.');
--행 82
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (82,5,to_date('19-02-15', 'yy-mm-dd'),'note! 보기 설정은 각 다이어그램별로 저장됩니다.');
--행 83
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (83,4,to_date('19-11-22', 'yy-mm-dd'),'테이블명과 컬럼에 대한 이름, 타입 등 다양한 항목들을 용도에 따라 표시할 수 있습니다. ');
--행 84
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (84,5,to_date('20-10-04', 'yy-mm-dd'),'기본 프리셋');
--행 85
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (85,4,to_date('19-07-09', 'yy-mm-dd'),'미리 설정된 보기 구성을 사용할 수 있습니다.');
--행 86
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (86,1,to_date('19-10-08', 'yy-mm-dd'),'툴바에서 표기부분의  버튼을 눌러서 exerd 기본을 선택합니다.');
--행 87
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (87,5,to_date('21-10-18', 'yy-mm-dd'),'exerd 기본 프리셋은 .erd 파일을 생성했을 때 적용되는 기본 구성입니다. ');
--행 88
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (88,7,to_date('21-03-15', 'yy-mm-dd'),'툴바에서 표기부분의  버튼을 눌러서 엔티티 모드를 선택합니다.');
--행 89
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (89,5,to_date('21-10-04', 'yy-mm-dd'),'컬럼이름과 도메인만 표시되어 초기 논리모델링 작업에 유용한 프리셋입니다.');
--행 90
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (90,4,to_date('19-05-11', 'yy-mm-dd'),'컬럼이름, 도메인, 데이터타입이 표시되도록 설정되어 있습니다.');
--행 91
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (91,8,to_date('20-01-21', 'yy-mm-dd'),'툴바에서 표기부분의 버튼을 눌러서 e-r 개요 모드를 선택합니다.');
--행 92
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (92,3,to_date('19-05-28', 'yy-mm-dd'),'테이블명과 주석만 표시되어 전체적인 e-r 을 한눈에 파악하기 용이 합니다.');
--행 93
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (93,4,to_date('20-08-10', 'yy-mm-dd'),'툴바에서 표기부분의  버튼을 눌러서 논리/물리 동시편집를 선택합니다.');
--행 94
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (94,8,to_date('20-07-07', 'yy-mm-dd'),'논리명과 물리명이 동시에 편집할 수 있는 구성입니다.');
--행 95
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (95,9,to_date('21-05-20', 'yy-mm-dd'),'테이블 헤더 표시');
--행 96
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (96,4,to_date('21-01-20', 'yy-mm-dd'),'컬럼에 표시된 셀들의 헤더에 대한 표시여부를 설정할 수 있습니다.');
--행 97
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (97,7,to_date('19-11-26', 'yy-mm-dd'),'툴바에서 테이블 헤더 보이기 버튼을 선택합니다. 다시 누르면 설정이 토글됩니다.');
--행 98
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (98,2,to_date('21-09-08', 'yy-mm-dd'),'헤더에서 항목을 선택하고 좌우로 드레그하면 위치를 이동할 수 있습니다.');
--행 99
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (99,4,to_date('20-11-04', 'yy-mm-dd'),'컬럼의 다양한 정보들에 대한 표시여부를 메뉴에서 간단히 설정할 수 있습니다.');
--행 100
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (100,3,to_date('19-04-13', 'yy-mm-dd'),'툴바에서 표기부분의 버튼을 눌러서 컬럼 보이기 하위 메뉴 항목을 선택합니다.');
--행 101
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (101,4,to_date('21-07-27', 'yy-mm-dd'),'추가적인 상세한 항목들을 설정하거나 설정한 보기 구성을 프리셋으로 저장하여 다른 다이어그램에도 적용할 수 있습니다.');
--행 102
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (102,5,to_date('20-07-16', 'yy-mm-dd'),'툴바에서 다이어그램 편집기 설정 버튼을 선택하면 설정 대화상자가 나타납니다.');
--행 103
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (103,6,to_date('19-01-13', 'yy-mm-dd'),'테이블 이름과 주석 및 셀 표시 방법등을 설정할 수 있습니다.');
--행 104
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (104,7,to_date('20-01-22', 'yy-mm-dd'),'설정한 보기 구성을 새로운 이름으로 저장할 수 있습니다.');
--행 105
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (105,9,to_date('20-01-06', 'yy-mm-dd'),'새로 만들어진 프리셋은 메뉴에 표시되어 다른 다이어그램에도 간단히 적용할 수 있습니다.');
--행 106
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (106,9,to_date('20-10-02', 'yy-mm-dd'),'jdk 11 이상의 eclipse 버전에서 exerd를 플러그인 방식으로 설치하여 사용할 때, oracle 포워드 엔지니어링의 설정 값을 로드하지 못하는 문제가 수정되었습니다.');
--행 107
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (107,2,to_date('20-03-23', 'yy-mm-dd'),'환경설정 > exerd > 모델 검사 항목에서 dbms별 특화된 모델 검사를 지원하지 않는 경우, 항목에 노출되지 않도록 수정하였습니다.');
--행 108
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (108,3,to_date('20-05-15', 'yy-mm-dd'),'용어사전에 용어가 등록되어 있음에도, 검토기능 수행 시 ''등록되지 않은 용어''로 잘못된 검토 결과를 반환하는 문제점을 수정하였습니다.');
--행 109
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (109,7,to_date('19-11-22', 'yy-mm-dd'),'등록정보에서 현재 exerd버전과 라이센스 등록 시 주의사항을 안내하는 문구를 추가하여 사용자의 라이센스 등록 실수를 줄일 수 있게 되었습니다.');
--행 110
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (110,7,to_date('20-01-02', 'yy-mm-dd'),'파일 비교시 비교가 정상적으로 진행되지 않던 문제를 수정하였습니다.');
--행 111
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (111,6,to_date('19-04-24', 'yy-mm-dd'),'exerd메뉴 → about exerd → 온라인 포럼 선택시, exerd포럼 사이트에서 토마토시스템 기술지원사이트로 이동하도록 수정하였습니다.');
--행 112
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (112,2,to_date('20-02-04', 'yy-mm-dd'),'oracle dbms에서 리버스 엔지니어링 할 때, long 형식의 컬럼을 못가져오는 문제점을 수정하였습니다.');
--행 113
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (113,1,to_date('19-10-05', 'yy-mm-dd'),'postgresql dbms에서 리버스 엔지니어링을 할 때, 파티션 테이블을 가져오지 못하는 문제점을 수정하였습니다.');
--행 114
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (114,1,to_date('20-07-10', 'yy-mm-dd'),'cubrid dbms에서 리버스 엔지니어링이 실패하는 문제점을 수정하였습니다.');
--행 115
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (115,4,to_date('21-08-06', 'yy-mm-dd'),'sql server dbms에서 스키마 생성 및 편집, 포워드 엔지니어링 및 리버스 엔지니어링을 지원합니다.');
--행 116
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (116,4,to_date('21-12-04', 'yy-mm-dd'),'oracle dbms에서 테이블 스페이스를 삭제할 수 없던 문제를 수정하였습니다.');
--행 117
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (117,1,to_date('19-02-22', 'yy-mm-dd'),'파일 비교 시, 현재 워크스페이스에 존재하지 않는 파일을 비교할 경우, 파일 비교 기능을 수행할 수 없던 오류를 수정하였습니다.');
--행 118
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (118,8,to_date('20-06-25', 'yy-mm-dd'),'cubrid 9.x dbms에서 dba권한을 가진 계정으로 리버스 엔지니어링이 정상적으로 동작하지 않던 문제를 수정하였습니다.');
--행 119
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (119,7,to_date('19-09-17', 'yy-mm-dd'),'oracle dbms에서 리버스 엔지니어링이 정상적으로 동작하지 않던 문제를 수정하였습니다.');
--행 120
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (120,7,to_date('21-10-14', 'yy-mm-dd'),'테이블 다이어그램을 인쇄할 때 가독성이 떨어지는 문제를 보완하기 위해, 프린터 인쇄 설정에서 ''테이블 이름을 선명하게 출력'' 기능이 신규로 추가되었습니다.');
--행 121
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (121,4,to_date('19-12-23', 'yy-mm-dd'),'작성한 erd파일을 png확장자의 이미지로 생성 할 수 있습니다. 상단의 액자 모양의 토글을 클릭하거나, 다이어그램 에디터 → 우클릭 → 이미지로 내보내기를 통하여 사용할 수 있습니다.');
--행 122
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (122,7,to_date('19-03-12', 'yy-mm-dd'),'exerd 파일을 생성할 때, 파일 생성 과정과 도메인 옵션 선택과정을 분리하여 진행하도록 변경되었습니다.');
--행 123
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (123,10,to_date('20-09-20', 'yy-mm-dd'),'oracle dbms 기반의 exerd 파일에서 테이블 속성의 일부 ui를 개선하였습니다.');
--행 124
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (124,5,to_date('19-02-03', 'yy-mm-dd'),'도메인 가져오기기능에서 손상된 excel 파일을 불러올 때, 이를 사용자에게 알리도록 개선 하였습니다.');
--행 125
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (125,7,to_date('20-03-16', 'yy-mm-dd'),'java 11이상 버전에서 oracle dbms의 포워드 엔지니어링 기능이 정상적으로 동작하지 않던 문제가 수정되었습니다.');
--행 126
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (126,7,to_date('21-03-13', 'yy-mm-dd'),'모델 퍼스펙티브에서 데이터베이스의 뷰를 제거하였을 때, 업무영역의 뷰가 제거되지 않던 문제가 수정되었습니다.');
--행 127
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (127,7,to_date('21-02-19', 'yy-mm-dd'),'exerd 파일 생성 시, 기본 도메인의 데이터 타입 길이가 올바르게 표시되지 않던 문제가 수정되었습니다.');
--행 128
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (128,7,to_date('20-01-08', 'yy-mm-dd'),'도메인 가져오기 기능을 통해 excel 파일을 불러올 때 일부 ui가 올바르게 표시되지 않던 문제가 수정되었습니다.');
--행 129
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (129,5,to_date('19-08-21', 'yy-mm-dd'),'샘플 예제(pos.exerd)에 작성되어있는 테이블 이름이 oracle dbms에서 예약어로 사용하는 이름과 일치하여 야기되는 문제를 방지하기 위해 수정되었습니다.');
--행 130
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (130,8,to_date('21-02-17', 'yy-mm-dd'),'샘플 예제(study.exerd) 파일을 우클릭 → 내보내기 → exerd → 템플릿 할 때 발생하는 오류가 수정되었습니다.');
--행 131
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (131,6,to_date('20-04-02', 'yy-mm-dd'),'일부 오탈자가 수정되었습니다.');
--행 132
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (132,3,to_date('21-02-04', 'yy-mm-dd'),'oracle, postgresql dbms의 스키마 시퀀스를 편집할 때, 편집중이던 속성 값이 사라지는 문제점을 수정하였습니다.');
--행 133
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (133,3,to_date('21-06-19', 'yy-mm-dd'),'일부 linux 환경에서 exerd 파일이 열리지 않던 문제점을 수정하였습니다.');
--행 134
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (134,2,to_date('20-08-11', 'yy-mm-dd'),'macos에서 다이어그램 내 테이블의 위치를 조정할 때, 성능이 저하되는 문제가 개선되었습니다.');
--행 135
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (135,8,to_date('21-03-13', 'yy-mm-dd'),'sqlserver dbms에서 storedprocedure의 ''코맨트 생성(코맨트가 없을 경우 논리 이름 사용)'' 옵션을 사용할 때, 자동으로 생성되는 확장 속성의 레벨타입이 잘못 지정되어 있는 문제점을 수정하였습니다.');
--행 136
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (136,9,to_date('20-08-09', 'yy-mm-dd'),'exerd 환경설정에서 cubrid dbms의 파티션 속성에 대한 명명 규칙을 지정할 수 있습니다.');
--행 137
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (137,2,to_date('21-03-23', 'yy-mm-dd'),'.exerd 파일 내에서 테이블을 복사 및 붙여넣기를 하였을 때, 컬럼의 데이터타입의 길이가 누락되는 문제를 수정하였습니다.');
--행 138
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (138,10,to_date('21-05-11', 'yy-mm-dd'),'테이블의 물리속성을 수정할 때 간헐적으로 exerd가 중단되며, 반영이 안되던 문제를 수정하였습니다.');
--행 139
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (139,8,to_date('20-12-16', 'yy-mm-dd'),'그 외 소소한 버그를 수정하였습니다.');
--행 140
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (140,5,to_date('21-01-10', 'yy-mm-dd'),'cubrid 9.0 ~ 9.3 / 10.1 ~ 10.2 버전을 지원합니다.');
--행 141
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (141,1,to_date('19-05-28', 'yy-mm-dd'),'exerd 환경설정 메뉴 중 일부 글자가 깨져 보이는 문제를 수정하였습니다.');
--행 142
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (142,7,to_date('19-06-13', 'yy-mm-dd'),'tibero 4,5 버전에서 펑션, 프로시저, 트리거에 대하여 리버스 엔지니어링을 시도할 때 오류가 발생하는 문제를 수정하였습니다.');
--행 143
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (143,3,to_date('19-09-07', 'yy-mm-dd'),'postgresql에서 지원하는 인덱스 메서드 설정 속성 중 일부 인덱스 메서드 선택 결과가 반영되지 않던 문제를 수정하였습니다.');
--행 144
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (144,1,to_date('21-04-22', 'yy-mm-dd'),'3.2.2 버전에서 일부 erd 파일이 열리지 않는 문제를 수정하였습니다.');
--행 145
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (145,8,to_date('19-01-11', 'yy-mm-dd'),'일부 메뉴가 올바르게 표시되지 않는 문제점을 수정하였습니다.');
--행 146
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (146,8,to_date('20-01-13', 'yy-mm-dd'),'mysql서버의 리버스 엔지니어링 시 definer 컬럼에 ''@''구분자가 없는 뷰일경우 오류가 발생하던 문제가 수정되었습니다.');
--행 147
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (147,5,to_date('20-04-09', 'yy-mm-dd'),'용어 사전을 이용한 합성어 입력 옵션이 세분화되었습니다. 합성어 입력 옵션은 환경설정의 exerd > 다이어그램 에디터 > 편집 자동화 항목에서 설정할 수 있습니다.');
--행 148
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (148,2,to_date('21-05-07', 'yy-mm-dd'),'합성어 사용 여부를 설정할 수 있습니다.');
--행 149
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (149,6,to_date('21-12-13', 'yy-mm-dd'),'구분자를 사용하지 않은 단어에 대해 합성어 생성 시 구분자를 사용하지 않을 수 있습니다.');
--행 150
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (150,3,to_date('21-08-17', 'yy-mm-dd'),'용어 사전에 등록되어 있지 않은 단어를 합성어 생성 시 그대로 사용할 수 있습니다.');
--행 151
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (151,9,to_date('20-12-08', 'yy-mm-dd'),'완벽하게 일치하는 단어와 합성어 구성 요소가 모두 존재할 경우 합성어를 우선하여 사용할 수 있습니다.');
--행 152
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (152,6,to_date('20-12-14', 'yy-mm-dd'),'구분자로 등록되어 있지 않은 언더바(_)나 공백 문자( ) 등에 대해 합성어를 적용할 수 있습니다.');
--행 153
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (153,3,to_date('20-06-27', 'yy-mm-dd'),'이름에 대한 검토 항목이 세분화 되었습니다. 이름에 대한 검토는 편집 자동화 옵션에 영향을 받습니다.');
--행 154
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (154,8,to_date('20-11-25', 'yy-mm-dd'),'논리명, 물리명에 대해 별도로 용어정책을 위반했는지 검사할 수 있습니다.');
--행 155
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (155,2,to_date('19-09-26', 'yy-mm-dd'),'용어 사전에 등록되지 않은 단어가 사용되었는지 검사할 수 있습니다. 편집 자동화 옵션에 의해 용어 사전에 등록되지 않은 단어도 모델 검사를 통과할 수 있습니다.');
--행 156
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (156,1,to_date('19-11-28', 'yy-mm-dd'),'exerd 파일이 열려있는 상태에서 "close all perspectives" 메뉴를 이용하여 퍼스펙티브를 닫을때 오류가 발생하던 문제가 수정되었습니다.');
--행 157
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (157,6,to_date('19-07-03', 'yy-mm-dd'),'티베로에 대한 리버스엔지니어링 시 펑션, 프로시저, 트리거를 올바르게 가져오지 못하는 문제가 수정되었습니다.');
--행 158
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (158,1,to_date('20-05-02', 'yy-mm-dd'),'검토 시 환경 설정에 지정된 구분자가 아닌 언더바(_)로만 검토가 이루어지던 문제가 수정되었습니다.');
--행 159
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (159,10,to_date('21-07-07', 'yy-mm-dd'),'참조 객체에 대한 비교/병합이 올바르게 이루어지지 않던 문제가 해결되었습니다.');
--행 160
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (160,8,to_date('20-04-13', 'yy-mm-dd'),'워크스페이스 최상위에 존재하는 파일을 비교할 수 없던 문제가 수정되었습니다.');
--행 161
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (161,8,to_date('20-09-15', 'yy-mm-dd'),'exerd 파일의 구조가 동일할 경우 높은 버전에서 작성된 exerd 파일을 낮은 버전에서 열 수 있습니다.');
--행 162
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (162,4,to_date('20-05-08', 'yy-mm-dd'),'xscript에서 채크 제약사항을 가져올 수 있습니다.');
--행 163
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (163,2,to_date('21-03-09', 'yy-mm-dd'),'정의된 xscript 중 도메인 역공학 스크립트를 실행하면 오류가 발생하던 문제가 수정되었습니다.');
--행 164
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (164,3,to_date('20-10-08', 'yy-mm-dd'),'컬럼 이름 입력 시 접두어/접미어를 한글로 입력할 경우 용어 사전이 올바르게 반영되지 않던 문제가 수정되었습니다.');
--행 165
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (165,9,to_date('21-05-01', 'yy-mm-dd'),'postgresql에서 인덱스의 코멘트 ddl구문이 올바르게 생성되지 않던 문제가 수정되었습니다.');
--행 166
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (166,2,to_date('21-04-22', 'yy-mm-dd'),'활성화되지 않은 외래 키 인덱스에 대한 "너무 긴 이름", "예약어 사용", "중복된 이름" 검토가 동작하지 않도록 수정되었습니다.');
--행 167
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (167,1,to_date('19-11-17', 'yy-mm-dd'),'새로운 데이터베이스와 더욱 다양하고 고급스러운 기능들이 추가될 예정입니다.');
--행 168
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (168,1,to_date('21-12-15', 'yy-mm-dd'),'* exerd 3.0.0 버전은 2.x 버전의 모든 기능을 포함하고 있습니다.');
--행 169
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (169,1,to_date('21-07-18', 'yy-mm-dd'),'mysql 연결 정보에서 연결 속성을 추가할 수 있습니다.');
--행 170
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (170,6,to_date('19-05-16', 'yy-mm-dd'),'mysql 5.8 버전을 지원합니다.');
--행 171
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (171,6,to_date('20-02-13', 'yy-mm-dd'),'용어 사전과 도메인의 가져오기 기능에 엑셀 2007(.xlsx) 형식이 추가되었습니다. 엑셀 2007 형식을 사용할 경우 65,536 이상의 행을 가져올 수 있습니다.');
--행 172
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (172,10,to_date('19-06-27', 'yy-mm-dd'),'테이블에만 지원되던 사용자 정의 속성을 컬럼 및 인덱스 등 다른 항목에서도 사용할 수 있습니다.');
--행 173
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (173,10,to_date('21-12-15', 'yy-mm-dd'),'xscript에서 업무영역을 가져올 수 있습니다.');
--행 174
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (174,10,to_date('19-03-14', 'yy-mm-dd'),'db2의 테이블 물리속성에 인덱스 테이블 스페이스를 지정할 수 있습니다.');
--행 175
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (175,5,to_date('21-10-04', 'yy-mm-dd'),'jdk 7, 8 버전 사용 시 일부 파일에서 비교/병합 기능이 올바르게 작동하지 않던 문제가 수정되었습니다.');
--행 176
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (176,8,to_date('20-04-28', 'yy-mm-dd'),'macos에서 속성 대화상자를 이용하여 속성을 편집하고 ok 버튼을 선택하여 내용을 반영할 때 편집 중이던 속성의 값이 반영되지 않던 문제가 수정되었습니다.');
--행 177
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (177,9,to_date('20-11-22', 'yy-mm-dd'),'도메인의 이름을 빈 문자열로 생성할 수 없도록 변경되었습니다.');
--행 178
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (178,8,to_date('21-01-05', 'yy-mm-dd'),'일부 프린터에서 기본 프린터 정보를 가져오지 못하는 현상이 해결되었습니다.');
--행 179
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (179,4,to_date('20-12-13', 'yy-mm-dd'),'오라클의 인덱스 물리속성인 sorted의 기본 값이 true로 변경되었습니다.');
--행 180
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (180,1,to_date('20-12-25', 'yy-mm-dd'),'db2 포워드 엔지니어링 시 테이블의 테이블 스페이스에 대한 ddl 구문이 생성되지 않던 문제가 해결되었습니다.');
--행 181
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (181,3,to_date('20-05-19', 'yy-mm-dd'),'모델 뷰에서 다이어그램의 하위 요소로 테이블이 표시됩니다.');
--행 182
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (182,9,to_date('21-11-26', 'yy-mm-dd'),'용어 사전의 내용을 일괄적으로 반영할때 물리 이름을 기준으로 논리 이름을 생성할 수 있습니다.');
--행 183
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (183,3,to_date('21-01-16', 'yy-mm-dd'),'postgresql 9.0, 10.2 버전을 지원합니다.');
--행 184
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (184,8,to_date('20-04-22', 'yy-mm-dd'),'postgresql 9.6 이상 버전을 리버스 엔지니어링할 때 일부 인덱스 컬럼을 가져올 수 없는 문제가 수정되었습니다.');
--행 185
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (185,10,to_date('19-05-19', 'yy-mm-dd'),'sql server 2016, 2017 버전을 지원합니다.');
--행 186
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (186,6,to_date('19-06-06', 'yy-mm-dd'),'모델 뷰에서 팝업 메뉴를 이용하여 업무영역, 다이어그램, 테이블, 뷰, 펑션, 프로시저를 개별로 정렬할 수 있습니다.');
--행 187
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (187,10,to_date('21-12-23', 'yy-mm-dd'),'모델 뷰의 정렬 기능이 뷰, 펑션, 프로시저도 함께 정렬합니다.');
--행 188
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (188,9,to_date('20-02-06', 'yy-mm-dd'),'용어 정책 위반에 대한 검토 시 용어 구분자가 환경설정에 지정된 구분자를 사용하도록 수정되었습니다.');
--행 189
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (189,7,to_date('19-04-04', 'yy-mm-dd'),'검토 뷰에서 용어 정책 위반에 대한 자동 수정 기능이 환경설정에 지정된 구분자를 사용하도록 수정되었습니다.');
--행 190
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (190,1,to_date('19-12-09', 'yy-mm-dd'),'db2로 작성된 문서에서 테이블의 속성 대화상자에 인덱스 목록이 표시되지 않던 문제가 수정되었습니다.');
--행 191
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (191,9,to_date('19-09-15', 'yy-mm-dd'),'최신 버전인 eclipse oxygen에 플러그인으로 설치 시 용어 사전 편집기가 열리지 않던 문제가 수정되었습니다.');
--행 192
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (192,9,to_date('20-08-20', 'yy-mm-dd'),'단독 실행 버전의 기본 jre가 1.6에서 1.8로 변경되었습니다.');
--행 193
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (193,5,to_date('20-01-05', 'yy-mm-dd'),'썸네일 뷰에서 테이블의 색상을 좀 더 쉽게 확인할 수 있습니다.');
--행 194
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (194,9,to_date('19-02-24', 'yy-mm-dd'),'eclipse mars.2 이상에서 플러그인으로 설치 시 파일을 열 수 없던 문제가 수정되었습니다.');
--행 195
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (195,8,to_date('21-11-12', 'yy-mm-dd'),'오라클의 속성 대화상자에서 유니크 제약사항 없이 유니크 인덱스만 존재할 경우 외래키를 맺을 수 없던 문제가 해결되었습니다.');
--행 196
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (196,5,to_date('19-03-18', 'yy-mm-dd'),'속성 대화상자에서 숫자를 편집하는 텍스트 박스들의 값을 초기값으로 지정할 수 없던 문제가 해결되었습니다.');
--행 197
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (197,4,to_date('20-03-02', 'yy-mm-dd'),'postgresql에 대한 리버스 엔지니어링 수행 시 관리자 계정이 아닐 경우 ''전체 스키마 가져오기''에서 접속한 계정에 대한 소유 권한을 이용하는 방식에서 접속 권한을 이용하는 방식으로 변경되었습니다.');
--행 198
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (198,3,to_date('21-04-06', 'yy-mm-dd'),'리버스엔지니어링으로 생성된 파일에서 다이어그램 자동 생성 기능을 사용할 수 없었던 문제가 해결되었습니다.');
--행 199
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (199,3,to_date('19-02-12', 'yy-mm-dd'),'2.4.4 버전에서 일부 다이어그램이 누락되던 현상이 해결되었습니다.');
--행 200
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (200,8,to_date('19-10-17', 'yy-mm-dd'),'다이어그램 사본 만들기로 생성된 다이어그램이 포함된 파일을 열 수 없던 문제가 해결되었습니다.');
--행 201
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (201,5,to_date('20-03-13', 'yy-mm-dd'),'업무영역을 지원합니다. 이제 같은 스키마에 있는 테이블도 영역별로 분류가 가능합니다.');
--행 202
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (202,3,to_date('21-03-01', 'yy-mm-dd'),'다이어그램이 업무영역의 하위 구성요소로 포함됩니다.');
--행 203
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (203,6,to_date('19-06-07', 'yy-mm-dd'),'다이어그램을 제거하지 않고 닫을 수 있습니다. 닫힌 다이어그램은 모델 뷰에서 다이어그램을 더블 클릭하여 열 수 있습니다.');
--행 204
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (204,9,to_date('21-03-06', 'yy-mm-dd'),'mysql 5.7 버전을 지원합니다.');
--행 205
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (205,3,to_date('20-12-03', 'yy-mm-dd'),'xscript에서 ctrl+/ 단축키를 이용하여 선택된 라인을 주석 처리할 수 있습니다.');
--행 206
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (206,6,to_date('19-07-12', 'yy-mm-dd'),'컬럼에서 지정된 도메인의 데이터 타입을 재지정하였을 경우에 대한 검토 기능과 자동 수정 기능이 추가되었습니다.');
--행 207
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (207,3,to_date('20-12-23', 'yy-mm-dd'),'컬럼에 도메인이 지정되어 있지 않을 경우에 대한 검토 기능이 추가되었습니다.');
--행 208
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (208,7,to_date('21-07-14', 'yy-mm-dd'),'음수 페이지의 인쇄 미리보기와 인쇄 기능에 대한 오류가 수정되었습니다.');
--행 209
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (209,2,to_date('21-09-18', 'yy-mm-dd'),'오라클에서 지원하는 시퀀스의 일부 속성을 지정할 수 없던 문제가 해결되었습니다.');
--행 210
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (210,4,to_date('21-08-21', 'yy-mm-dd'),'특정 버전의 sql server 파일이 열리지 않던 문제가 수정되었습니다.');
--행 211
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (211,1,to_date('19-11-19', 'yy-mm-dd'),'uuid를 이용한 비교에서 비교와 관련 없는 모델이 비교 대상에서 제외되었습니다.');
--행 212
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (212,9,to_date('20-02-11', 'yy-mm-dd'),'xscript로 작성된 테이블 보고서 html 파일을 엑셀에서 열었을때 자연스럽게 표시됩니다.');
--행 213
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (213,5,to_date('19-09-01', 'yy-mm-dd'),'postgresql의 물리 속성을 지원합니다.');
--행 214
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (214,8,to_date('21-08-01', 'yy-mm-dd'),'검색 결과뷰에서 모두 펼치기, 모두 접기 기능 추가');
--행 215
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (215,10,to_date('21-05-04', 'yy-mm-dd'),'컬럼 검색시 기본 값을 이용하여 검색 가능');
--행 216
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (216,10,to_date('21-11-09', 'yy-mm-dd'),'검색시 스키마, 다이어그램 범위 지정 가능');
--행 217
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (217,6,to_date('21-09-28', 'yy-mm-dd'),'모델 뷰에서 모델 개수가 표시됩니다.');
--행 218
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (218,5,to_date('21-08-11', 'yy-mm-dd'),'오라클에서 시퀀스를 지원합니다.');
--행 219
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (219,6,to_date('20-12-01', 'yy-mm-dd'),'유럽 국가의 언어로 설치된 윈도우에서 이클립스에 플러그인으로 설치시 파일이 열리지 않는 문제 수정.');
--행 220
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (220,3,to_date('20-06-03', 'yy-mm-dd'),'포워드 엔지니어링 수행시 오류를 무시하고 모든 구문을 수행 할 수 있습니다.');
--행 221
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (221,10,to_date('21-09-17', 'yy-mm-dd'),'postgresql 2.4.0에서 리버스엔지니어링으로 생성된 파일이 최신 버전에서 열리지 않는 문제 수정.');
--행 222
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (222,8,to_date('19-12-25', 'yy-mm-dd'),'postgresql 물리 속성 tablespace를 지원합니다.');
--행 223
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (223,10,to_date('20-11-06', 'yy-mm-dd'),'postgresql version 9.x의 물리 속성 tablespace를 지원합니다.');
--행 224
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (224,1,to_date('20-03-12', 'yy-mm-dd'),'table 또는 index의 물리속성에서 tablespace를 지정할 수 있습니다.');
--행 225
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (225,6,to_date('19-05-05', 'yy-mm-dd'),'모델뷰의 database속성에서 tablespace를 추가 하거나 삭제 할 수 있습니다.');
--행 226
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (226,5,to_date('19-12-05', 'yy-mm-dd'),'postgresql을 지원합니다.');
--행 227
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (227,1,to_date('20-03-09', 'yy-mm-dd'),'postgresql version 9.x의 리버스엔지니어링, 포워드엔지니어링을 지원합니다.');
--행 228
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (228,5,to_date('19-05-08', 'yy-mm-dd'),'새 exerd 파일을 만들거나 리버스엔지니어링을 실행하면 타겟 dbms를 선택할 수 있습니다.');
--행 229
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (229,9,to_date('21-03-14', 'yy-mm-dd'),'sql server를 리버스 엔지니어링 할 때, 프로시저의 내용이 많을 경우 프로시저의 내용 중 일부만 가져오는 문제가 수정되었습니다.');
--행 230
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (230,6,to_date('21-05-19', 'yy-mm-dd'),'mysql 최신 jdbc 드라이버인 mysql connector 5.1.38을 지원합니다.');
--행 231
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (231,2,to_date('21-08-21', 'yy-mm-dd'),'exerd를 최신 버전으로 업데이트하지 않고 mysql 최신드라이버를 사용하는 방법');
--행 232
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (232,5,to_date('19-01-02', 'yy-mm-dd'),'방법 1: exerd 설치 폴더 하위의 jre 폴더를 삭제한 후 jdk 8 (x86) 버전 설치 폴더 하위에 있는 jre 폴더를 exerd 하위 폴더로 복사');
--행 233
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (233,6,to_date('20-11-17', 'yy-mm-dd'),'방법 2: exerd 설치 폴더 하위의 jre 폴더를 삭제한 후 jre 8 (x86) 버전 설치 폴더를 exerd 하위 폴더로 복사한 후 jre로 이름 변경');
--행 234
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (234,3,to_date('19-01-22', 'yy-mm-dd'),'방법 3: jdk 혹은 jre 8 (x86) 버전을 설치하여 시스템 기본으로 지정 후 exerd 설치 폴더 하위의 jre 폴더 삭제');
--행 235
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (235,5,to_date('19-05-03', 'yy-mm-dd'),'jdk 혹은 jre 8 버전 사용 (설치된 이클립스의 아키텍처에 따라 x86 및 x64용 jdk 혹은 jre 사용)');
--행 236
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (236,10,to_date('21-09-08', 'yy-mm-dd'),'exerd와 이클립스는 하위 폴더에 jre 폴더가 존재할 경우 해당 jre를 이용하여 실행되고 없을 경우 시스템 기본 jre를 이용하여 실행됩니다.');
--행 237
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (237,3,to_date('20-04-10', 'yy-mm-dd'),'exerd 단독 실행버전은 하위 호환성을 위해 jre 5 버전을 사용하며 jre 8 버전용인 mysql connector 5.1.38 버전은 특정 부분을 일부 우회하여 지원하고 있습니다.');
--행 238
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (238,5,to_date('21-01-11', 'yy-mm-dd'),'오라클에서 리버스 엔지니어링 시 function-based index의 맴버 컬럼 중 expression을 사용하지 않은 컬럼을 가져오지 못하는 문제');
--행 239
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (239,5,to_date('21-01-23', 'yy-mm-dd'),'erwin 파일 가져오기 시 컬럼의 순서를 물리 모델에 지정된 순서로 가져오도록 변경');
--행 240
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (240,8,to_date('21-01-22', 'yy-mm-dd'),'템플릿의 관계 정의서에서 인덱스가 활성화 된 외래 키의 이름이 인덱스의 이름으로 표시되는 문제');
--행 241
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (241,5,to_date('20-06-06', 'yy-mm-dd'),'기존 도메인을 모두 삭제 하고 특정한 도메인 구성을 가져올 경우 도메인 가져오기 다이얼로그 멈추는 현상');
--행 242
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (242,7,to_date('19-01-03', 'yy-mm-dd'),'mysql에서 리버스 엔지니어링 시 기본 값으로 current_timestamp on update current_timestamp가 지정된 컬럼의 on update 구문이 누락되는 문제');
--행 243
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (243,4,to_date('21-03-22', 'yy-mm-dd'),'service pack 2까지 지원하던 sql server 2005를 그 이하 버전인 sql server 2005 rtm (9.00.1399) 버전까지 확대하여 하위 호환성을 제공');
--행 244
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (244,9,to_date('19-09-26', 'yy-mm-dd'),'기타 소소한 버그 수정');
--행 245
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (245,6,to_date('19-02-22', 'yy-mm-dd'),'201015일 윈도우 업데이트 반영 후 출력 시 테이블 이름이 출력되지 않는 문제');
--행 246
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (246,2,to_date('19-09-16', 'yy-mm-dd'),'오라클 리버스 엔지니어링 시 데이터타입 nvarchar2의 길이를 절반만 가져오는 문제');
--행 247
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (247,6,to_date('21-12-27', 'yy-mm-dd'),'기타 소소한 버그 수정');
--행 248
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (248,9,to_date('20-04-06', 'yy-mm-dd'),'sql server 2014 버전을 지원합니다.');
--행 249
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (249,7,to_date('21-07-11', 'yy-mm-dd'),'오라클 리버스 엔지니어링 시 varchar2(char)의 길이를 byte 값으로 변경하여 가져오는 문제');
--행 250
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (250,2,to_date('19-12-07', 'yy-mm-dd'),'논리명 자동 입력 옵션이 켜있더라도, 물리명 입력시 논리명이 이미 용어사전에 일치하는 경우, 일치하는 첫번째 논리명으로 강제 변경시키지 않습니다.');
--행 251
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (251,1,to_date('19-12-08', 'yy-mm-dd'),'논리명 입력시, 컨텐트 어시스트가 사용자의 의도를 방해하지 않습니다. 논리명이 비어 있는 경우에만 물리명에 일치하는 논리명 조합을 제안하며, 그외의 경우, 논리 용어 전체에 따라 제안합니다.');
--행 252
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (252,2,to_date('21-02-01', 'yy-mm-dd'),'물리명 입력후, 논리명이 자동으로 입력된 경우, 논리명 충돌이 날 경우, 더 이상 실패하지 않고, 숫자를 매기게 됩니다.');
--행 253
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (253,9,to_date('19-08-06', 'yy-mm-dd'),'sql server 인덱스 생성시 파일 그룹이 지정되어 있을 경우 with 옵션의 내용이 존재하지 않더라도 with이 생성되는 문제가 수정되었습니다.');
--행 254
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (254,4,to_date('21-09-26', 'yy-mm-dd'),'오라클 ddl 생성시 인덱스 구문에서 세미콜론이 마지막에 생성되는 문제');
--행 255
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (255,10,to_date('20-11-08', 'yy-mm-dd'),'오라클 포워드 엔지니어링 시 기본키가 없을 시 빈값의 ddl 을 실행하여 "부적합한 sql문 입니다." 메세지 출력 문제');
--행 256
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (256,9,to_date('21-04-18', 'yy-mm-dd'),'trigger를 지원합니다.');
--행 257
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (257,6,to_date('20-01-25', 'yy-mm-dd'),'각 dbms에서 트리거를 지원하는 모델(테이블,뷰,데이타베이스)을 모델뷰에서 선택하고, 속성창을 열어 트리거 속성 탭에서 추가 할 수 있습니다.');
--행 258
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (258,9,to_date('19-08-12', 'yy-mm-dd'),'function, procedure를 지원합니다.');
--행 259
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (259,5,to_date('19-02-01', 'yy-mm-dd'),'모델 뷰에서 스키마나 뷰를 선택 후 우클릭 메뉴에서 추가할 수 있습니다.');
--행 260
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (260,5,to_date('21-09-26', 'yy-mm-dd'),'모델 내보내기가 추가 되었습니다.');
--행 261
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (261,2,to_date('20-11-08', 'yy-mm-dd'),'exerd 모델를 sqlite database로 내보냅니다.');
--행 262
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (262,1,to_date('19-09-25', 'yy-mm-dd'),'테이블 논리명에 컨텐트 어시스트가 되도록 개선하였습니다.');
--행 263
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (263,8,to_date('20-07-25', 'yy-mm-dd'),'속성창의 입력 필드에서 잘못된 값을 입력하면 메세지 창이 계속 뜨는 문제를 수정하였습니다.');
--행 264
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (264,9,to_date('19-08-17', 'yy-mm-dd'),'속성창의 입력 필드에서 입력 후 1초 이후 저장 될때 커서 이동 문제를 수정하였습니다.');
--행 265
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (265,8,to_date('19-10-12', 'yy-mm-dd'),'오라클 테이블 ddl 생성시 주석에서 종료 구분자가 마지막에만 생성되는 문제를 수정하였습니다.');
--행 266
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (266,10,to_date('20-08-15', 'yy-mm-dd'),'그 외 사소한 문제를 수정하였습니다.');
--행 267
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (267,10,to_date('21-02-18', 'yy-mm-dd'),'oracle 12c를 지원합니다.');
--행 268
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (268,2,to_date('19-09-03', 'yy-mm-dd'),'view를 지원합니다.');
--행 269
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (269,4,to_date('21-08-02', 'yy-mm-dd'),'모델 뷰에서 스키마나 뷰를 선택 후 우클릭 메뉴에서 추가할 수 있습니다.');
--행 270
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (270,10,to_date('19-12-17', 'yy-mm-dd'),'모든 기능을 메뉴에서 확인할 수 있도록 개선하였습니다.');
--행 271
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (271,6,to_date('21-12-16', 'yy-mm-dd'),'인쇄 설정에 스타일 옵션이 추가 되었습니다.');
--행 272
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (272,3,to_date('19-03-26', 'yy-mm-dd'),'erwin 가져오기 후 테이블 위치 관련 문제가 수정되었습니다.');
--행 273
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (273,5,to_date('19-04-06', 'yy-mm-dd'),'그 외 사소한 문제를 수정하였습니다.');
--행 274
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (274,4,to_date('21-02-05', 'yy-mm-dd'),'mysql 5.6을 지원합니다.');
--행 275
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (275,10,to_date('21-02-11', 'yy-mm-dd'),'다이어그램 툴바의 정의 된 스크립트에 "csv로 내보내기"가 추가되었습니다.');
--행 276
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (276,8,to_date('20-11-28', 'yy-mm-dd'),'x스크립트에서 용어사전 접근이 가능합니다.');
--행 277
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (277,5,to_date('19-05-15', 'yy-mm-dd'),'다이어그램의 테이블에서 논리명 입력시 첫번째로 보여주는 물리명을 자동 입력되게 수정되었습니다.');
--행 278
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (278,5,to_date('20-05-01', 'yy-mm-dd'),'mysql의 테이블 속성에서 character set과 collation의 속성에 빈 값이 추가되었습니다.');
--행 279
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (279,3,to_date('19-04-14', 'yy-mm-dd'),'용어사전의 편집 상자를 스크롤해도 이동하지 않도록 고정하였습니다.');
--행 280
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (280,2,to_date('19-12-18', 'yy-mm-dd'),'환경 설정에서 “물리명을 대문자로 변환”의 기본값을 "사용 안함"으로 수정하였습니다.');
--행 281
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (281,2,to_date('19-07-20', 'yy-mm-dd'),'erwin import의 저장 폴더 선택 대화상자에서 폴더 선택이 쉽도록 수정하였습니다.');
--행 282
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (282,1,to_date('21-04-11', 'yy-mm-dd'),'네비게이터에서 .exerd 확장자 파일의 특성을 열었을 때 mysql 탭이 나오는 문제를 수정하였습니다.');
--행 283
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (283,3,to_date('21-08-19', 'yy-mm-dd'),'용어사전의 오름차순과 내림차순의 순서가 바뀌었던 문제를 수정하였습니다.');
--행 284
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (284,10,to_date('21-07-21', 'yy-mm-dd'),'오라클 - 리버스 엔지니어링 시 잘못된 데이타 길이 값이 가져오는 문제를 수정하였습니다.');
--행 285
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (285,10,to_date('21-08-19', 'yy-mm-dd'),'오라클 연결 설정에서 지정한 포트가 기본 포트로 변경 되는 문제를 수정하였습니다.');
--행 286
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (286,10,to_date('21-12-08', 'yy-mm-dd'),'그 외 사소한 문제를 수정하였습니다.');
--행 287
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (287,2,to_date('19-08-02', 'yy-mm-dd'),'강력한 exerd 스크립트 엔진인, xscript 엔진이 탑재 되었습니다. javascript를 기반으로한 이 엔진은 가장 진보적이고 헌신적인 지원을 갖춘 훌륭한 에디터와 함께 제공됩니다. (자세히)');
--행 288
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (288,8,to_date('20-09-28', 'yy-mm-dd'),'이제 다이어그램 편집시 여러 테이블을 선택하고 정렬 툴바 도구들을 이용할 수 있습니다.');
--행 289
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (289,8,to_date('20-05-05', 'yy-mm-dd'),'테이블 속성 대화상자에 사용자 정의 속성이 추가되었습니다.');
--행 290
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (290,2,to_date('21-01-10', 'yy-mm-dd'),'사용자 정의 속성은 데이터베이스에 반영되지 않지만 xscript를 이용하여 활용 할 수 있습니다.');
--행 291
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (291,6,to_date('20-12-09', 'yy-mm-dd'),'mysql의 모든 물리 속성을 지원합니다..');
--행 292
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (292,10,to_date('21-12-07', 'yy-mm-dd'),'mysql은 정의 된 스펙 중 구현되어 있지 않은 항목이 많아 mysql data definition의 내용을 충분히 숙지하고있어야합니다.');
--행 293
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (293,10,to_date('19-10-13', 'yy-mm-dd'),'예1: 채크 제약사항의 구문은 사용가능하지만 반영되지 않습니다.');
--행 294
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (294,6,to_date('19-04-14', 'yy-mm-dd'),'리눅스의 지원이 좀 더 안정화 되었습니다.');
--행 295
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (295,3,to_date('20-12-12', 'yy-mm-dd'),'멀티 코어 cpu 지원, 이제 exerd는 멀티 코어 cpu를 이용하여, 용어사전 연산등과 같은 복잡한 작업을 훨씬 더 빠르게 처리합니다.');
--행 296
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (296,10,to_date('20-06-26', 'yy-mm-dd'),'용어사전 개선');
--행 297
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (297,4,to_date('21-02-19', 'yy-mm-dd'),'용어사전 편집기에서 논리/물리 동의어가 곧바로 표시되며 콤마를 구분자로 곧장 입력할 수 있습니다. ');
--행 298
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (298,10,to_date('20-10-09', 'yy-mm-dd'),'용어사전을 나중에 연결한 경우에도 손쉽게 용어 정책을 일괄 적용 할 수 있습니다. ');
--행 299
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (299,3,to_date('20-11-11', 'yy-mm-dd'),'exerd 파일에 사용된 논리/물리명을 바탕으로 용어사전을 자동 생성할 수 있습니다.');
--행 300
insert into tblAnswer (question_seq, teacher_seq, answer_regdate, answer_content) values (300,8,to_date('21-05-19', 'yy-mm-dd'),'오라클의 연결 문자를 직접 입력 할 수 있습니다.');

commit;