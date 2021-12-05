drop table tblEnrollment cascade constraints purge;
drop sequence enrollment_seq;
create table tblEnrollment (
    enrollment_seq number not null, 
    oc_seq number not null,
    student_seq number not null
);

create sequence enrollment_seq;

alter table tblEnrollment
    add constraint tble_enrollment_seq_pk primary key(enrollment_seq);
alter table tblEnrollment
    add constraint tble_oc_seq_fk foreign key (oc_seq) references tblOpenCourse(oc_seq);
alter table tblEnrollment
    add constraint tble_student_seq_fk foreign key (student_seq) references tblStudent(student_seq);   


insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,1);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,2);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,3);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,4);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,5);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,6);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,7);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,8);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,9);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,10);

insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,296);
--행 2
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,81);
--행 3
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,13);
--행 4
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,186);
--행 5
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,243);
--행 6
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,12);
--행 7
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,280);
--행 8
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,130);
--행 9
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,238);
--행 10
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,175);
--행 11
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,239);
--행 12
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,205);
--행 13
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,88);
--행 14
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,146);
--행 15
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,183);
--행 16
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,164);
--행 17
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,65);
--행 18
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,252);
--행 19
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,55);
--행 20
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,96);
--행 21
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,199);
--행 22
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,79);
--행 23
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,209);
--행 24
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,82);
--행 25
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,36);
--행 26
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,127);
--행 27
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,175);
--행 28
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,14);
--행 29
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,297);
--행 30
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,209);
--행 31
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,196);
--행 32
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,85);
--행 33
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,284);
--행 34
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,20);
--행 35
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,300);
--행 36
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,194);
--행 37
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,51);
--행 38
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,182);
--행 39
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,272);
--행 40
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,265);
--행 41
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,232);
--행 42
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,135);
--행 43
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,57);
--행 44
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,82);
--행 45
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,274);
--행 46
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,152);
--행 47
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,196);
--행 48
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,47);
--행 49
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,253);
--행 50
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,203);
--행 51
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,1);
--행 52
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,40);
--행 53
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,289);
--행 54
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,257);
--행 55
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,169);
--행 56
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,267);
--행 57
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,64);
--행 58
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,162);
--행 59
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,68);
--행 60
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,181);
--행 61
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,141);
--행 62
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,115);
--행 63
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,200);
--행 64
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,69);
--행 65
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,178);
--행 66
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,219);
--행 67
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,147);
--행 68
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,22);
--행 69
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,162);
--행 70
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,218);
--행 71
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,58);
--행 72
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,156);
--행 73
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,149);
--행 74
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,87);
--행 75
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,293);
--행 76
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,258);
--행 77
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,119);
--행 78
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,275);
--행 79
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,57);
--행 80
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,226);
--행 81
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,74);
--행 82
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,13);
--행 83
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,2);
--행 84
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,286);
--행 85
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,196);
--행 86
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,128);
--행 87
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,40);
--행 88
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,176);
--행 89
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,161);
--행 90
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,236);
--행 91
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,236);
--행 92
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,153);
--행 93
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,190);
--행 94
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,245);
--행 95
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,280);
--행 96
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,257);
--행 97
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,148);
--행 98
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,133);
--행 99
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,243);
--행 100
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,82);
--행 101
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,235);
--행 102
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,64);
--행 103
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,287);
--행 104
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,5);
--행 105
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,159);
--행 106
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,148);
--행 107
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,224);
--행 108
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,120);
--행 109
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,156);
--행 110
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,42);
--행 111
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,7);
--행 112
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,4);
--행 113
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,115);
--행 114
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,113);
--행 115
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,252);
--행 116
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,98);
--행 117
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,53);
--행 118
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,129);
--행 119
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,155);
--행 120
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,121);
--행 121
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,31);
--행 122
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,211);
--행 123
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,23);
--행 124
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,201);
--행 125
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,238);
--행 126
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,75);
--행 127
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,5);
--행 128
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,247);
--행 129
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,297);
--행 130
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,116);
--행 131
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,208);
--행 132
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,101);
--행 133
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,284);
--행 134
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,147);
--행 135
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,36);
--행 136
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,30);
--행 137
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,187);
--행 138
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,41);
--행 139
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,240);
--행 140
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,83);
--행 141
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,274);
--행 142
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,294);
--행 143
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,107);
--행 144
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,166);
--행 145
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,160);
--행 146
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,268);
--행 147
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,33);
--행 148
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,166);
--행 149
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,225);
--행 150
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,106);
--행 151
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,106);
--행 152
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,106);
--행 153
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,63);
--행 154
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,26);
--행 155
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,48);
--행 156
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,219);
--행 157
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,64);
--행 158
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,156);
--행 159
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,202);
--행 160
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,287);
--행 161
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,121);
--행 162
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,260);
--행 163
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,130);
--행 164
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,213);
--행 165
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,153);
--행 166
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,295);
--행 167
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,297);
--행 168
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,288);
--행 169
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,287);
--행 170
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,205);
--행 171
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,85);
--행 172
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,141);
--행 173
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,103);
--행 174
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,168);
--행 175
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,141);
--행 176
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,275);
--행 177
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,198);
--행 178
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,246);
--행 179
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,183);
--행 180
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,132);
--행 181
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,218);
--행 182
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,70);
--행 183
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,173);
--행 184
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,290);
--행 185
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,242);
--행 186
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,233);
--행 187
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,186);
--행 188
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,116);
--행 189
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,164);
--행 190
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,31);
--행 191
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,204);
--행 192
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,96);
--행 193
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,139);
--행 194
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,197);
--행 195
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,55);
--행 196
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,20);
--행 197
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,254);
--행 198
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,230);
--행 199
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,35);
--행 200
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,272);
--행 201
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,197);
--행 202
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,263);
--행 203
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,180);
--행 204
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,8);
--행 205
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,78);
--행 206
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,165);
--행 207
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,191);
--행 208
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,234);
--행 209
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,284);
--행 210
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,264);
--행 211
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,231);
--행 212
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,94);
--행 213
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,56);
--행 214
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,122);
--행 215
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,119);
--행 216
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,20);
--행 217
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,40);
--행 218
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,215);
--행 219
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,26);
--행 220
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,283);
--행 221
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,149);
--행 222
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,140);
--행 223
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,262);
--행 224
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,172);
--행 225
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,8);
--행 226
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,185);
--행 227
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,171);
--행 228
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,130);
--행 229
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,285);
--행 230
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,139);
--행 231
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,128);
--행 232
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,86);
--행 233
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,167);
--행 234
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,277);
--행 235
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,14);
--행 236
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,216);
--행 237
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,177);
--행 238
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,181);
--행 239
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,100);
--행 240
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,129);
--행 241
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,7,195);
--행 242
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,11);
--행 243
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,110);
--행 244
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,75);
--행 245
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,237);
--행 246
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,165);
--행 247
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,161);
--행 248
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,241);
--행 249
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,184);
--행 250
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,74);
--행 251
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,13,1);
--행 252
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,40);
--행 253
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,217);
--행 254
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,187);
--행 255
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,137);
--행 256
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,167);
--행 257
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,1);
--행 258
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,168);
--행 259
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,156);
--행 260
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,17,173);
--행 261
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,129);
--행 262
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,109);
--행 263
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,172);
--행 264
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,187);
--행 265
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,60);
--행 266
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,278);
--행 267
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,216);
--행 268
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,1);
--행 269
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,12,232);
--행 270
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,18);
--행 271
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,192);
--행 272
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,143);
--행 273
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,1,42);
--행 274
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,142);
--행 275
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,2,148);
--행 276
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,179);
--행 277
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,14,266);
--행 278
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,280);
--행 279
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,10,223);
--행 280
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,20,280);
--행 281
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,6,293);
--행 282
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,192);
--행 283
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,198);
--행 284
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,4,53);
--행 285
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,8,2);
--행 286
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,297);
--행 287
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,170);
--행 288
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,18,43);
--행 289
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,16,170);
--행 290
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,3,104);
--행 291
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,105);
--행 292
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,183);
--행 293
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,9,216);
--행 294
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,19,252);
--행 295
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,172);
--행 296
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,5,12);
--행 297
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,29);
--행 298
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,163);
--행 299
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,15,202);
--행 300
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,11,58);


--실제 수강신청 (인원초과)
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,270);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,271);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,272);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,273);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,274);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,275);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,276);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,277);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,278);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,279);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,280);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,281);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,282);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,283);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,284);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,285);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,286);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,287);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,288);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,289);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,290);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,291);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,292);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,293);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,294);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,295);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,296);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,297);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,298);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,21,299);

--실제 수강신청 인원 아직 안참
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,170);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,171);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,172);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,173);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,174);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,175);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,176);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,177);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,178);
insert into tblEnrollment (enrollment_seq, oc_seq, student_seq) values (enrollment_seq.nextVal,22,179);

commit;