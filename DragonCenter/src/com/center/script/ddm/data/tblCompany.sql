--
drop table tblcompany;
drop sequence company_seq;
--
create table tblCompany (
	company_seq NUMBER,
	company_name varchar2(50) NOT NULL,
	company_tel varchar2(20) NOT NULL,
	area_seq NUMBER NOT NULL
);

create sequence company_seq;

ALTER TABLE tblCompany
	ADD CONSTRAINT tblc_company_seq_pk PRIMARY KEY (company_seq);

alter table tblCompany
    add constraint tblc_area_seq_fk foreign key(area_seq) references tblArea(area_seq);



--실제
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)비스아이티','070-453-9430',10);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)바루소프트','070-9701-2685',8);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'케이비즈소프트','070-1337-2163',20);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'보안그룹모비딕','070-3316-5636',8);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'엠에스링크앤솔루션','070-6957-9471',18);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'주식회사 넷아이디','070-5661-8127',5);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'싸이버로지텍','070-9214-7223',3);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)userve','070-6614-9392',20);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'이노라이브 주식회사','070-8492-7142',17);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주) 이베리','070-3933-6848',12);

--더미

insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'이비즈테크','010-2544-6287',14);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'이비즈테크','010-2042-4441',14);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)씨아이피시스템','010-6596-4793',17);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)이씨케이교육','010-7306-3442',17);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)우리소프트','010-1099-1416',22);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)양파소프트','010-3247-6752',22);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)팬소프트','010-8549-5993',1);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'디유넷','010-1053-6815',13);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'지성아이티','010-7670-8335',17);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'브레인즈스퀘어','010-7031-6115',4);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)바이텍씨스템','010-3911-6469',79);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'스마트물류(주)','010-5915-4990',93);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)룩엔에스','010-7385-4490',79);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'아임에버','010-8621-8716',86);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'시에프코리아','010-1768-8980',85);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'지트지디에스지점','010-1742-7312',92);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)아프로시스','010-3652-9960',79);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)시에프라인','010-1683-4873',95);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)시에프라인','010-7932-3550',95);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'순 ( s t l )','010-4918-4782',79);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'네트원정보통신','010-4317-6400',53);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'주식회사 탑이디에스','010-9938-3472',53);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'성언시스템','010-9051-3648',54);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)케이엔제이','010-7959-4464',139);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'ktng','010-2178-9320',69);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'지엔소프트(주)','010-5554-3511',65);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'에이원네트웍스','010-6984-4514',66);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)솔리드이엔지','010-5600-9714',67);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)온웨어','010-1136-2383',34);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'solutionk','010-7456-7863',157);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'드림포트(주)','010-7476-6993',36);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)모든정보','010-8139-1354',38);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)미래에스앤에스','010-1328-8300',41);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'드림포트(주)','010-8010-9828',33);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)아람씨앤씨','010-8166-8688',71);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주) 세림공업','010-7922-8102',73);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'코스텍','010-7030-3319',74);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)정호이앤씨','010-8683-3111',71);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)링크','010-6204-7649',72);
insert into tblCompany (company_seq,company_name,company_tel,area_seq) values (company_seq.nextVal,'(주)온웨어','010-5918-8396',34);