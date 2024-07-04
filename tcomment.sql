--DELETE FROM tcomment;
--DROP SEQUENCE tcomment_cnum_seq;
--CREATE SEQUENCE tcomment_cnum_seq;

insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('�ٹ�', TCOMMENT_CNUM_SEQ.nextval, 1, '�ٹ̴ٹ̸��ٹ̴ٹ̴�.', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('�ٹ�', TCOMMENT_CNUM_SEQ.nextval, 1, '���ٸ������ٸ���', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('ȭ��', TCOMMENT_CNUM_SEQ.nextval, 2, 'ȭ�볪ȣ��ȯhwanhwan', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('ȭ��', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ��ϴ��ϴ�ȭ��', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum)
VALUES ('���', TCOMMENT_CNUM_SEQ.nextval, 3, '�ٳʺ�Ϻ�Ϻ���', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum)
VALUES ('���', TCOMMENT_CNUM_SEQ.nextval, 3, '������������', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('����', TCOMMENT_CNUM_SEQ.nextval, 4, '��������~~~', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('����', TCOMMENT_CNUM_SEQ.nextval, 4, '�󼼱��������ļֶ� ��~~~', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('�Ŵ�', TCOMMENT_CNUM_SEQ.nextval, 5, '����������', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('�Ŵ�', TCOMMENT_CNUM_SEQ.nextval, 5, '��ܴ�ܴ�ܴ�ܴ��', 2);
insert into tcomment (nickname, cnum, usernum, memo, tnum) 
VALUES ('�Ŵ�', TCOMMENT_CNUM_SEQ.nextval, 5, '¿��¿��¿��¿��¿��', 2);

insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�ȳ��ϼ��� ������ �ݰ����ϴ�', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('���� ������ �ݰ�����', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ��ϴ�ȭ��', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�츮 ģ�ϰ� �������', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�����ϴ� ������ ���� ģ���� ���ƿ�', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ��ϴ�ȭ��', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�˼��մϴ� ���� ģ���� ���� ����', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�������� ���� ����� ���ƿ�', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ�ȭ��', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�ƴϿ� ���� ���� ���߾��', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�� �� ������ ��', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ��ϴ�ȭ��', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('�ٵ� �̰� �������� ��?', TCOMMENT_CNUM_SEQ.nextval, 2, 'hwanhwan', 2);
insert into tcomment (memo, cnum, usernum, nickname, tnum) 
VALUES ('���� �׸�~', TCOMMENT_CNUM_SEQ.nextval, 2, '�ϴ��ϴ�ȭ��', 2);

select * from tcomment order by cnum desc;
select tnum, count(tnum) from tcomment group by tnum;
select * from usertable order by usernum desc;
commit;