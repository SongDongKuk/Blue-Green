create table notice_board(
	num number,
	title varchar(60),
	writer varchar(50),
	contents varchar(500),
	write_date date,
	hits number
);

select * from notice_board;
drop table notice_board;
create sequence num start with 1 increment by 1;
drop sequence num;

update notice_board set hits=hits+1 where num=31;
