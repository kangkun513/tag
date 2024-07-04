--DELETE FROM tcomment;
--DROP SEQUENCE tcomment_cnum_seq;
--CREATE SEQUENCE tcomment_cnum_seq;

insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('다미', TCOMMENT_CNUM_SEQ.nextval, 1, '다미다미마다미다미다.', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('다미', TCOMMENT_CNUM_SEQ.nextval, 1, '담담다맏마담담다마담', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('화니', TCOMMENT_CNUM_SEQ.nextval, 2, '화노나호나환hwanhwan', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('화니', TCOMMENT_CNUM_SEQ.nextval, 2, '하니하니하니화니', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum)
VALUES ('비니', TCOMMENT_CNUM_SEQ.nextval, 3, '바너비니비니빈이', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum)
VALUES ('비니', TCOMMENT_CNUM_SEQ.nextval, 3, '빈빈빈빈빈빈빈빈빈빈빈', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('숨숨', TCOMMENT_CNUM_SEQ.nextval, 4, '숨숨숨숨~~~', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('숨숨', TCOMMENT_CNUM_SEQ.nextval, 4, '상세구현수미파솔라도 숨~~~', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('거니', TCOMMENT_CNUM_SEQ.nextval, 5, '오오오오오', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('거니', TCOMMENT_CNUM_SEQ.nextval, 5, '대단대단대단대단대단', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('거니', TCOMMENT_CNUM_SEQ.nextval, 5, '쩔어쩔어쩔어쩔어쩔어', 2);

insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('안녕하세요 만나서 반갑습니다', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('저도 만나서 반가워요', TCOMMENT_CNUM_SEQ.nextval, 2, '하니하니화니', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('우리 친하게 지낼까요', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('고맙습니다 하지만 저는 친구가 많아요', TCOMMENT_CNUM_SEQ.nextval, 2, '하니하니화니', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('죄송합니다 감히 친구도 없는 제가', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('힘내세요 세상에 사람은 많아요', TCOMMENT_CNUM_SEQ.nextval, 2, '하니화니', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('아니요 저는 원래 고독했어요', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('흠 좀 무서운 듯', TCOMMENT_CNUM_SEQ.nextval, 2, '하니하니화니', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('근데 이거 언제까지 함?', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('이제 그만~', TCOMMENT_CNUM_SEQ.nextval, 2, '하니하니화니', 2);

select * from tcomment order by cnum desc;
select tnum, count(tnum) from tcomment group by tnum;
select * from usertable order by usernum desc;
commit;