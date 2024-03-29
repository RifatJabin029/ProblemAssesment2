--------------------------------------------------------
--  File created - Tuesday-May-04-2021   
--------------------------------------------------------
DROP TABLE "CALL_CAL_IPDR" cascade constraints;
--------------------------------------------------------
--  DDL for Table CALL_CAL_IPDR
--------------------------------------------------------

  CREATE TABLE "CALL_CAL_IPDR" 
   (	"CALL_ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"STARTTIME" TIMESTAMP (6), 
	"ENDTIME" TIMESTAMP (6), 
	"MSISDN" VARCHAR2(11 BYTE), 
	"ULVOLUME" NUMBER(10,0), 
	"DLVOLUME" NUMBER(10,0), 
	"DOMAIN" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0017920
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0017920" ON "CALL_CAL_IPDR" ("CALL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CALL_CAL_IPDR
--------------------------------------------------------

  ALTER TABLE "CALL_CAL_IPDR" MODIFY ("CALL_ID" NOT NULL ENABLE);
  ALTER TABLE "CALL_CAL_IPDR" MODIFY ("STARTTIME" NOT NULL ENABLE);
  ALTER TABLE "CALL_CAL_IPDR" MODIFY ("ENDTIME" NOT NULL ENABLE);
  ALTER TABLE "CALL_CAL_IPDR" MODIFY ("MSISDN" NOT NULL ENABLE);
  ALTER TABLE "CALL_CAL_IPDR" ADD PRIMARY KEY ("CALL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
