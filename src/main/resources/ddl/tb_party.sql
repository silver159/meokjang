  CREATE TABLE "TJOEUNIT"."TB_PARTY" 
   (	"PARTY_ID" NUMBER(*,0) NOT NULL ENABLE, 
	"MEMBER_ID" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"FOOD_CATEGORY" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"LOCAL_CATEGORY" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"SUBJECT" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"CONTENTS" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"MAP" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEALED_AT" TIMESTAMP (6) NOT NULL ENABLE, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"THUMBNAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"LIMITNUM" NUMBER(*,0) NOT NULL ENABLE, 
	"STATUS" VARCHAR2(100 BYTE) DEFAULT '일반' NOT NULL ENABLE, 
	 CONSTRAINT "PARTY_PK" PRIMARY KEY ("PARTY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "TB_PARTY_FK1" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "TJOEUNIT"."TB_MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

delete from TB_PARTY;
drop sequence TB_PARTY_idx_seq;
create sequence TB_PARTY_idx_seq;
