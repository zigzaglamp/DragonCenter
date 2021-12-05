create table tblStudent (
    student_seq number not null,
    student_name varchar2(20) not null,
    student_ssn varchar2(14) not null,
    student_tel varchar2(30) not null,
    student_coursenum number not null
);

create sequence student_seq;

alter table tblStudent
    add constraint tbls_student_seq_pk primary key(student_seq);

alter table tblStudent
    add constraint tbls_student_ssn_uq unique(student_ssn);
    
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'류소리','951219-2213985','010-7447-8983',5);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'서진환','901116-1737816','010-4042-3999',3);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'탁경아','940213-2937414','010-6162-2161',1); -- 시연 학생
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'제갈인우','971205-1917991','010-4925-8871',2);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'류지성','901002-1279588','010-9161-7778',4);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'배성빈','940115-1245324','010-1116-1512',1);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'류승하','961213-2663254','010-2928-2226',2);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'사공영수','991015-1281333','010-4854-4900',3);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'홍철민','911012-1394614','010-7553-3233',1);
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum)  values (student_seq.nextVal,'전세호','910209-1936562','010-9322-5042',1);

--행 1
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임전지','750914-1949635','010-3131-6325',5);
--행 2
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄선광','710615-1537558','010-9544-3389',5);
--행 3
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김제하','741012-2997635','010-3990-2919',4);
--행 4
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지성형','820714-2525288','010-4725-1857',4);
--행 5
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방경연','740907-1535741','010-7937-2012',1);
--행 6
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전지종','831102-1656457','010-9083-1229',2);
--행 7
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최열승','770527-1719539','010-2070-5797',5);
--행 8
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이하준','920622-1946419','010-7341-7446',2);
--행 9
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오전승','820613-1172441','010-9791-3420',4);
--행 10
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최경하','980314-1794151','010-6563-7964',3);
--행 11
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임재구','750613-1262475','010-4002-8902',4);
--행 12
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최하종','970409-1356842','010-7794-4851',3);
--행 13
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한유광','910601-2783812','010-2705-6463',3);
--행 14
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안민성','830628-2251914','010-6119-6034',4);
--행 15
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전지하','890308-2674558','010-1400-5272',5);
--행 16
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽종경','721110-2732584','010-4832-6061',5);
--행 17
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최석광','750116-2539625','010-7818-3840',1);
--행 18
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄구승','700816-2956849','010-4881-5197',1);
--행 19
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정조전','850910-2941739','010-6142-6373',3);
--행 20
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안유희','700728-1326515','010-8439-3680',2);
--행 21
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방준효','920904-2295633','010-5650-4399',4);
--행 22
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지민유','810621-2578854','010-8797-5242',2);
--행 23
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박형민','990402-2975477','010-9902-7525',3);
--행 24
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박민효','810507-1761148','010-5417-6053',3);
--행 25
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이연선','771126-1846562','010-6058-4536',2);
--행 26
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김광지','771121-2755184','010-2387-6334',2);
--행 27
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심전현','960416-1394849','010-6885-6866',1);
--행 28
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임구석','800707-2723511','010-1602-3100',5);
--행 29
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이하열','870918-1964939','010-6835-7939',5);
--행 30
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이현선','700904-1264887','010-4369-7780',4);
--행 31
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김하효','710313-2772981','010-7409-4957',4);
--행 32
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주연구','870628-2661193','010-6120-6197',4);
--행 33
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안광종','711101-1468695','010-9984-9945',1);
--행 34
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방선연','880428-1259485','010-4881-6135',1);
--행 35
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지제유','970421-1123133','010-4068-1987',4);
--행 36
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전연','941020-1723138','010-8136-6107',3);
--행 37
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박연민','780610-2499816','010-5512-8186',2);
--행 38
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽하진','700502-1956541','010-2635-8324',1);
--행 39
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유구경','760925-2421634','010-4276-9044',5);
--행 40
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정형석','770907-1281351','010-9666-1702',3);
--행 41
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김은구','840216-1821694','010-3469-4496',4);
--행 42
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김민유','750527-1257433','010-5370-8631',1);
--행 43
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이경성','990825-1295731','010-8208-5196',3);
--행 44
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한구제','830307-1167463','010-9528-6381',5);
--행 45
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임연선','960909-2877787','010-3785-1412',4);
--행 46
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박전조','830107-1225248','010-5651-4360',3);
--행 47
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전광열','720310-1536535','010-1308-1039',1);
--행 48
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김진수','720602-2564583','010-6464-2200',2);
--행 49
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김진민','740716-2185961','010-4694-8012',5);
--행 50
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심전승','751012-2539666','010-4843-8211',3);
--행 51
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김유수','810417-1864446','010-5498-2355',5);
--행 52
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한경지','760612-2129866','010-1075-3058',2);
--행 53
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김연하','790424-1934648','010-4057-9359',5);
--행 54
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최성지','900620-2382571','010-1176-4947',3);
--행 55
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄지연','970322-1639884','010-3405-5956',4);
--행 56
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김민구','941112-1744773','010-7884-5634',2);
--행 57
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄연석','711111-1918723','010-6812-7594',5);
--행 58
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오조광','920101-2733879','010-5693-1702',3);
--행 59
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방재승','720503-1439321','010-1862-4748',1);
--행 60
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오민하','770402-2651474','010-6273-4167',5);
--행 61
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김전경','810319-1337953','010-1313-9237',5);
--행 62
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이진유','850204-1411722','010-5370-8976',1);
--행 63
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄하승','910421-2925562','010-5998-9293',3);
--행 64
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방연종','880910-2336893','010-3301-6603',4);
--행 65
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지전수','790113-1276375','010-3134-7212',4);
--행 66
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오광조','861217-2799774','010-4341-1281',1);
--행 67
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전선열','840325-1558226','010-6554-1694',5);
--행 68
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박전석','850801-2217949','010-3639-4728',3);
--행 69
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주민구','920423-2256125','010-1456-9292',3);
--행 70
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심성진','940806-2117463','010-3318-3567',3);
--행 71
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유진유','800717-1372252','010-5093-5693',1);
--행 72
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전경수','830105-2751655','010-2111-9002',3);
--행 73
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오승연','780611-1624687','010-5730-9517',4);
--행 74
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지석준','870820-1846683','010-6466-3004',5);
--행 75
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박지희','850506-2835835','010-1922-4089',2);
--행 76
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임구유','820327-1181372','010-6747-9779',2);
--행 77
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주현조','750603-1772524','010-7321-1771',2);
--행 78
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박영조','871002-2296825','010-3186-4893',4);
--행 79
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽승하','950521-1498772','010-6128-7274',3);
--행 80
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조하은','820208-2519762','010-8871-5142',5);
--행 81
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오조재','730917-2423312','010-5975-3441',4);
--행 82
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김진열','790528-1855514','010-7478-2604',4);
--행 83
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정수현','810215-2325551','010-9138-9731',2);
--행 84
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박광연','990717-2886684','010-2968-9608',3);
--행 85
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유열경','880324-2721192','010-1302-5242',4);
--행 86
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유선제','760616-2728749','010-3993-5838',4);
--행 87
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지광승','950314-2621371','010-8145-8309',4);
--행 88
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한유연','960501-1882519','010-1723-2483',3);
--행 89
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유연효','750222-2655457','010-9477-4843',4);
--행 90
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조재유','900120-1149517','010-7746-8461',2);
--행 91
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정전현','760822-1246582','010-6603-8428',1);
--행 92
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김연준','750313-2426362','010-4073-4673',4);
--행 93
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전영준','820524-1846369','010-2305-5360',5);
--행 94
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전열경','770104-1911524','010-3014-6270',2);
--행 95
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이경현','971109-2833369','010-9656-6732',1);
--행 96
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이경진','891107-2954773','010-6795-3078',4);
--행 97
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이유은','950812-2413525','010-6904-5406',2);
--행 98
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심전연','701003-2572117','010-8406-3905',3);
--행 99
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한희전','980524-2171937','010-7736-1057',3);
--행 100
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오은광','720216-1739948','010-4179-8349',4);
--행 101
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김희열','850120-2445874','010-5200-2795',5);
--행 102
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이영광','911113-1623843','010-8143-1964',4);
--행 103
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방준열','990506-1954552','010-4611-8765',3);
--행 104
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임재현','830827-1364468','010-8195-1988',3);
--행 105
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한조전','740319-1422735','010-2405-1977',2);
--행 106
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박지지','781003-2929344','010-1773-5454',5);
--행 107
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄석효','970705-2576278','010-2564-1905',2);
--행 108
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한하광','960228-2655396','010-6506-8900',4);
--행 109
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김하유','970621-2367725','010-5330-9942',3);
--행 110
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정제영','710708-2716884','010-6528-3877',4);
--행 111
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안하조','780401-2617433','010-5116-8507',5);
--행 112
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지현성','891122-2489923','010-8341-6367',1);
--행 113
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이경영','900614-1582211','010-1816-7898',1);
--행 114
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전선연','860528-1558968','010-4311-4057',5);
--행 115
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지지은','701212-1452485','010-4143-4276',4);
--행 116
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽현하','840612-1178998','010-6888-9253',3);
--행 117
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안경전','781208-2778355','010-8045-4196',3);
--행 118
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김구광','870220-2425235','010-4590-3845',3);
--행 119
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조성열','750616-2864979','010-6158-5844',2);
--행 120
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방광경','780103-2544795','010-9998-8944',3);
--행 121
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조전연','941124-1932724','010-7077-1143',5);
--행 122
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방전영','810925-1444898','010-4228-8736',1);
--행 123
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최조제','990808-2384498','010-6466-2044',2);
--행 124
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오종재','871014-1779212','010-4025-5836',4);
--행 125
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안구광','980627-2959999','010-9609-6534',1);
--행 126
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주민희','930424-2132796','010-3607-7602',5);
--행 127
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박희은','900109-1472245','010-9000-2527',2);
--행 128
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안현하','910923-1948562','010-8854-8796',2);
--행 129
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유종하','800817-1321485','010-8854-1037',3);
--행 130
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박열성','820306-1387644','010-1336-3551',4);
--행 131
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김경구','770312-1675943','010-3097-4164',3);
--행 132
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정은구','720413-2836891','010-4838-9441',2);
--행 133
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최종은','980323-2349345','010-1361-6101',1);
--행 134
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽재전','890826-2424844','010-5340-9810',4);
--행 135
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정석열','711009-1837493','010-6587-7158',5);
--행 136
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강진선','881222-1282672','010-1501-5678',1);
--행 137
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박유광','971203-1716925','010-1345-3384',2);
--행 138
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽민연','770811-1194585','010-5111-2909',4);
--행 139
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김광연','831116-2537643','010-5669-9340',1);
--행 140
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심선승','780217-2824494','010-6759-6819',5);
--행 141
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전효경','971115-2745519','010-9110-1865',5);
--행 142
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김승종','730308-2248712','010-1879-5451',3);
--행 143
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박재구','820924-1795544','010-8900-9417',2);
--행 144
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조성전','950904-2199587','010-7088-5762',4);
--행 145
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유효승','880622-2256891','010-6843-3160',2);
--행 146
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박구광','920725-1869957','010-8859-7391',2);
--행 147
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최연하','820713-1135928','010-1773-1795',5);
--행 148
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최희현','811205-2368912','010-5014-3645',3);
--행 149
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오승연','700824-1727143','010-4225-2346',3);
--행 150
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이효재','830413-1278728','010-4946-1772',5);
--행 151
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정제지','821202-2694478','010-1375-8666',4);
--행 152
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조하효','750917-1839671','010-3890-4153',1);
--행 153
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지선조','900313-1792217','010-8412-8926',5);
--행 154
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박영연','780201-1599488','010-8117-6753',4);
--행 155
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안희영','760215-2269528','010-2305-2145',4);
--행 156
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주제성','890422-2851783','010-2797-1784',5);
--행 157
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지형은','881028-2858479','010-9509-1639',4);
--행 158
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전지광','801004-2549866','010-7697-5709',4);
--행 159
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지연종','790501-1653855','010-7170-7736',2);
--행 160
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정성수','701108-2177639','010-5556-6735',5);
--행 161
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전유광','990225-2734279','010-2215-5517',3);
--행 162
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임재지','731003-2286133','010-3130-9845',5);
--행 163
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄영종','950607-2265479','010-8667-2845',2);
--행 164
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한조영','850419-2686869','010-1948-1708',1);
--행 165
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이조종','770315-2789118','010-8958-6591',4);
--행 166
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안재효','941118-2745932','010-2830-8405',4);
--행 167
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조은광','951016-1732957','010-6836-9837',1);
--행 168
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이진구','820416-1613291','010-2437-5558',5);
--행 169
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽성열','821018-2744626','010-9831-9443',4);
--행 170
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정은현','780926-2583541','010-5969-3648',5);
--행 171
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조제선','950928-1336756','010-5482-9511',4);
--행 172
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김민재','940725-1581215','010-2563-1883',5);
--행 173
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김경승','711128-2695697','010-1732-8397',2);
--행 174
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽현성','951012-2551239','010-9463-8324',2);
--행 175
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임수연','980509-2696378','010-1838-1824',3);
--행 176
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안형전','940903-2263258','010-7371-8317',5);
--행 177
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유광하','891115-2461116','010-4468-4686',4);
--행 178
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박석유','770805-2627386','010-4178-8769',1);
--행 179
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임광수','701228-2844128','010-6822-2523',2);
--행 180
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임수구','790717-1812781','010-1348-2332',4);
--행 181
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽열제','700707-2744858','010-4300-7270',3);
--행 182
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안열효','961012-1972782','010-8582-2011',3);
--행 183
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전준수','760720-1776947','010-7757-5208',2);
--행 184
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한하조','730605-1566317','010-3416-8152',3);
--행 185
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유준연','950308-2576986','010-2099-4641',2);
--행 186
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조열민','950421-2986959','010-4116-5753',1);
--행 187
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최종민','711110-2256847','010-1550-1731',4);
--행 188
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주하은','790604-1469518','010-2882-6216',4);
--행 189
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조전희','981013-2515541','010-6430-2055',4);
--행 190
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박하연','720701-1321797','010-9766-5471',4);
--행 191
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오효성','860306-2598988','010-8375-9412',5);
--행 192
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방승수','950601-2846248','010-3891-5310',4);
--행 193
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박은선','870311-2116473','010-7481-5502',2);
--행 194
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한경효','930411-1597113','010-8237-3787',3);
--행 195
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전석','950617-2715669','010-3657-6763',3);
--행 196
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박현선','780810-1949393','010-7158-2003',3);
--행 197
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방지지','851006-2349532','010-9016-4688',2);
--행 198
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정민형','751107-2546616','010-8297-3663',2);
--행 199
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강현하','991002-2672426','010-3170-9298',5);
--행 200
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이선지','981005-1913739','010-4778-2385',5);
--행 201
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄은제','990605-2497827','010-4908-9756',5);
--행 202
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이제승','741025-2286793','010-7276-3474',2);
--행 203
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이연지','900612-1375135','010-3636-5309',5);
--행 204
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방종영','750124-2335168','010-4829-5075',1);
--행 205
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강하재','790517-1937459','010-1165-8509',3);
--행 206
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이승석','801025-1421434','010-9589-4771',3);
--행 207
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임광종','750415-2467635','010-3455-1547',1);
--행 208
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전희','960221-1813418','010-4682-7870',4);
--행 209
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주하유','850423-2886261','010-1459-4194',5);
--행 210
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한영경','720417-2899969','010-7951-1888',3);
--행 211
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한현진','760420-1445792','010-2982-4013',5);
--행 212
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽전연','820417-2553457','010-6012-9628',2);
--행 213
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심하구','990719-1752628','010-9827-5008',2);
--행 214
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안경지','701109-1935682','010-7678-6882',4);
--행 215
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄유민','930426-1539617','010-8548-5039',5);
--행 216
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박열연','880312-2823387','010-8053-6393',1);
--행 217
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주민유','910424-2427318','010-4254-4194',3);
--행 218
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심수전','870824-2294825','010-3949-5707',2);
--행 219
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽유진','970524-1327583','010-8704-9259',2);
--행 220
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박재진','870602-1648964','010-2189-6609',3);
--행 221
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조민희','710815-2957665','010-1038-9009',5);
--행 222
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한경지','790322-1892788','010-9677-6183',5);
--행 223
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽승지','930226-2826784','010-5921-3711',2);
--행 224
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강승영','801217-1183396','010-1334-9314',5);
--행 225
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방현열','810425-2438365','010-3495-2762',3);
--행 226
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정형조','820816-1927299','010-6848-8705',3);
--행 227
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한하형','781028-1363382','010-8477-7734',4);
--행 228
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이종준','770725-1433672','010-8688-3781',1);
--행 229
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이현준','850922-1578266','010-4127-8542',1);
--행 230
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안진하','850901-2439935','010-5619-1414',2);
--행 231
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정영전','880807-2354853','010-2772-2720',4);
--행 232
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전구','850405-1591943','010-5129-5861',2);
--행 233
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박하현','750822-1926919','010-1379-6657',2);
--행 234
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이성연','900802-2239597','010-4529-5595',2);
--행 235
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄진연','971208-2241555','010-5828-7108',5);
--행 236
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'지조성','840925-2512833','010-1255-1655',3);
--행 237
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김현연','920308-1829798','010-3457-6591',1);
--행 238
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김하연','920213-1179472','010-6113-8862',3);
--행 239
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'임효준','720902-2392575','010-6171-7967',3);
--행 240
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강유석','821128-2768453','010-9843-1090',1);
--행 241
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정석전','790309-2854449','010-5818-6037',5);
--행 242
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김준지','890821-1685876','010-5840-4583',2);
--행 243
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주종하','860705-1857952','010-6439-5464',1);
--행 244
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이제석','900517-1615458','010-4184-4210',4);
--행 245
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전지','940228-2911124','010-9331-3862',5);
--행 246
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정은형','820123-1226725','010-6563-6568',4);
--행 247
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박희유','751207-1824872','010-6491-8845',3);
--행 248
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조하구','810516-2117593','010-3175-8422',1);
--행 249
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조하재','851025-2241767','010-3578-6975',3);
--행 250
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김희희','830511-2154458','010-1992-3971',4);
--행 251
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박전은','910506-1125863','010-6177-8527',1);
--행 252
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한승선','740605-1153455','010-9241-7005',1);
--행 253
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박유영','950108-1796312','010-4206-5026',2);
--행 254
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이전광','780814-2766993','010-9726-5119',2);
--행 255
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전준열','910107-1292879','010-3974-4015',4);
--행 256
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전연형','700124-1351321','010-2380-8294',4);
--행 257
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이민구','910309-2986896','010-3131-8963',2);
--행 258
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오전제','760128-2144437','010-3845-7852',1);
--행 259
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄연은','821025-2158198','010-8001-3773',4);
--행 260
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'조경연','821121-1121847','010-9291-1624',2);
--행 261
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김유경','710108-2376455','010-3722-1291',5);
--행 262
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'전조연','901208-2317296','010-6277-6634',2);
--행 263
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방희지','951023-2366589','010-5660-7625',5);
--행 264
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'주조민','760201-1551759','010-8896-9371',4);
--행 265
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정승은','830708-2223312','010-4622-4599',4);
--행 266
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄진하','740613-2953539','010-4037-3317',4);
--행 267
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방형승','820411-2859972','010-9493-5268',4);
--행 268
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박경열','701022-1129668','010-9097-3764',1);
--행 269
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강열광','720310-1756842','010-1772-2078',4);
--행 270
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'강연전','931209-1353169','010-7984-2532',1);
--행 271
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최전하','960927-2286776','010-7407-3582',1);
--행 272
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄현지','971201-2496959','010-1409-2459',5);
--행 273
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박구승','790506-2329297','010-1331-1331',5);
--행 274
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안성광','730210-1167138','010-7978-4622',3);
--행 275
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박수영','780107-2777859','010-2077-6420',3);
--행 276
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김제민','760328-2633473','010-9754-6786',1);
--행 277
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박경석','860426-1441651','010-1266-7173',2);
--행 278
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이영수','900704-2533758','010-8361-2199',2);
--행 279
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽준효','770813-1695314','010-9021-6830',3);
--행 280
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김하형','730417-2463431','010-7777-8983',3);
--행 281
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유하선','970210-2789155','010-4042-3754',2);
--행 282
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한성하','970922-1151933','010-6165-2161',1);
--행 283
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김민재','820204-2753454','010-4936-8871',2);
--행 284
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'유연전','730708-1291123','010-9161-5578',2);
--행 285
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안하광','841106-2596436','010-9816-1512',4);
--행 286
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'곽열준','920607-1771458','010-2928-5726',5);
--행 287
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'정효유','840319-2179778','010-4854-4910',5);
--행 288
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'이연효','700303-2855963','010-7553-3224',1);
--행 289
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'박재성','780919-1341638','010-2093-5042',2);
--행 290
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'엄열연','990324-1737381','010-2818-9035',3);
--행 291
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'심현민','760128-1485583','010-8010-8919',3);
--행 292
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방석형','790905-1493712','010-1380-5428',4);
--행 293
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'최수진','830322-1793389','010-5166-8993',1);
--행 294
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오경경','730521-1121675','010-3183-9210',5);
--행 295
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'김유열','870626-2976653','010-4947-2090',2);
--행 296
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방연성','761109-2841837','010-9639-7087',5);
--행 297
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'안성경','990614-2531752','010-9946-7666',1);
--행 298
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'방수수','840626-2284768','010-5441-3838',4);
--행 299
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'오승연','911017-2357523','010-3141-8462',1);
--행 300
insert into tblStudent (student_seq, student_name, student_ssn, student_tel, student_coursenum) values (student_seq.nextVal,'한연하','751108-2922915','010-5767-6708',4);

commit;