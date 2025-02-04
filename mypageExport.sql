--------------------------------------------------------
--  파일이 생성됨 - 목요일-7월-04-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MYPAGE
--------------------------------------------------------

  CREATE TABLE "SUMI"."MYPAGE" 
   (	"IDX" NUMBER, 
	"TNUM" NUMBER, 
	"TLIKE" NUMBER DEFAULT 0, 
	"CLIKE" NUMBER DEFAULT 0, 
	"USERNUM" NUMBER, 
	"CNUM" NUMBER, 
	"REPORT" NUMBER DEFAULT 0, 
	"TITLE" VARCHAR2(200 BYTE), 
	"SNUM" NUMBER, 
	"LNUM" NUMBER DEFAULT 0, 
	"SCRAP" NUMBER DEFAULT 0, 
	"WRITER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SUMI.MYPAGE
SET DEFINE OFF;
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (3,2,0,0,1,null,0,'미세먼지',null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (1,null,0,1,1,4,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (2,null,0,0,1,3,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (4,null,0,0,3,4,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (5,null,0,0,2,4,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (6,2,1,0,2,null,0,null,null,1,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (7,null,0,0,2,7,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (8,null,0,0,2,6,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (9,null,0,0,2,8,1,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (10,8,0,0,1,null,0,'test8',null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (11,1,0,0,1,null,0,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (12,9,1,0,1,null,0,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (13,80,0,0,1,null,0,'test80',null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (14,null,0,1,1,21,0,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (15,null,0,1,1,22,0,null,null,0,0,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (16,65,0,0,1,null,0,'자전거의 진화: 90년대 MTB와 최신 전기 자전거의 대결',null,14,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (17,99,0,0,1,null,0,'저축은행 건전성 분석',null,57,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (18,100,0,0,1,null,0,'10컷 웹툰으로 보는 트렌트(화산귀환)',null,49,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (19,6,0,0,1,null,0,'팬덤 문화의 진화, 커뮤니티와 소비의 새로운 형태',null,34,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (20,13,0,0,1,null,0,'가상 인플루언서의 시대, 현실을 뛰어넘는 디지털 셀러브리티',null,39,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (21,42,0,0,5,null,0,'디지털 아트의 부상, NFT와 예술의 새로운 형태',null,23,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (22,15,0,0,5,null,0,'글로벌 팬데믹 이후의 여행, 안전과 모험의 균형',null,78,1,null);
Insert into SUMI.MYPAGE (IDX,TNUM,TLIKE,CLIKE,USERNUM,CNUM,REPORT,TITLE,SNUM,LNUM,SCRAP,WRITER) values (23,17,0,0,5,null,0,'저탄소 생활, 일상 속 탄소 발자국 줄이기',null,58,1,null);
--------------------------------------------------------
--  DDL for Index TAGLIKE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUMI"."TAGLIKE_PK" ON "SUMI"."MYPAGE" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MYPAGE
--------------------------------------------------------

  ALTER TABLE "SUMI"."MYPAGE" ADD CONSTRAINT "TAGLIKE_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SUMI"."MYPAGE" MODIFY ("IDX" NOT NULL ENABLE);
