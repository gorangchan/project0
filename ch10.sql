create table replyBoard (
	rno number primary key,
	bno number not null references board(num),
	replytext varchar2(500) not null,
	replyer varchar2(50) not null,
	regdate date not null,
	updatedate date not null
);
alter table replyBoard add(del char(1));
select * from board order by num desc;
insert into replyBoard 
	values(1,238,'1','1',sysdate,sysdate,'n');