

-- 강의실 6개
create table tblRoom
(
	room_seq number,
	room_name varchar2(20) not null,
	room_capacity number not null
);

create sequence room_seq;

alter table tblRoom
    add constraint tblr_room_seq_pk primary key(room_seq);
alter table tblRoom
    add constraint tblr_room_capacity_ck check(room_capacity in (26,30));
    
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 30);
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 30);
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 30);
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 26);
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 26);
insert into tblRoom(room_seq, room_name, room_capacity) values (room_seq.nextval, room_seq.nextval || '강의실', 26);

commit;