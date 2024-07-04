CREATE TABLE "MYPAGE" 
(	"IDX" NUMBER(*,0), 
    "USERNUM" NUMBER(*,0), 
    "TNUM" NUMBER(*,0), 
    "TLIKE" NUMBER(*,0), 
    "CNUM" NUMBER(*,0), 
    "CLIKE" NUMBER(*,0), 
    "REPORT" NUMBER(*,0), 
    "TITLE" VARCHAR2(200 BYTE), 
	"LNUM" NUMBER(*,0), 
	"SCRAP" NUMBER, 
     CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDX")
);

DELETE FROM mypage;
DROP SEQUENCE mypage_idx_seq;
create SEQUENCE mypage_idx_seq;
commit;


