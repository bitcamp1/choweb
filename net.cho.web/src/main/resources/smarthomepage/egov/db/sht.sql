DROP TABLE IDS CASCADE CONSTRAINTS;
CREATE TABLE IDS  (
  TABLE_NAME varchar2(20) NOT NULL,
  NEXT_ID number(30,0)DEFAULT 0 NOT NULL ,
  CONSTRAINT IDS_PK PRIMARY KEY (TABLE_NAME)
);
DROP TABLE COMMON_CLASS_CODE CASCADE CONSTRAINTS;
CREATE TABLE COMMON_CLASS_CODE (
  CL_CODE char(3) NOT NULL,
  CL_CODE_NM varchar2(60) ,
  CL_CODE_DC varchar2(200) ,
  USE_AT char(1) ,
  FRST_REGIST_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT CLASS_CODE_PK PRIMARY KEY (CL_CODE)
) ;
DROP TABLE COMMON_CODE CASCADE CONSTRAINTS;
CREATE TABLE COMMON_CODE  (
  CODE_ID varchar2(6) NOT NULL,
  CODE_ID_NM varchar2(60) ,
  CODE_ID_DC varchar2(200) ,
  USE_AT char(1) ,
  CL_CODE char(3) ,
  FRST_REGIST_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT COMMON_CODE_PK PRIMARY KEY (CODE_ID),
  CONSTRAINT COMMON_CODE_FK_CLASS_CODE FOREIGN KEY (CL_CODE) REFERENCES COMMON_CLASS_CODE (CL_CODE)
) ;
DROP TABLE COMMON_DETAIL_CODE CASCADE CONSTRAINTS;
CREATE TABLE COMMON_DETAIL_CODE  (
  CODE_ID varchar2(6) NOT NULL,
  CODE varchar2(15) NOT NULL,
  CODE_NM varchar2(60) ,
  CODE_DC varchar2(200) ,
  USE_AT char(1) ,
  FRST_REGIST_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT DETAIL_CODE_PK PRIMARY KEY (CODE_ID,CODE),
  CONSTRAINT DETAIL_CODE_FK_COMMON_CODE FOREIGN KEY (CODE_ID) REFERENCES COMMON_CODE (CODE_ID)
) ;
DROP TABLE ORGNZT CASCADE CONSTRAINTS;
CREATE TABLE ORGNZT  (
  ORGNZT_ID char(20) DEFAULT '' NOT NULL,
  ORGNZT_NM varchar2(20) NOT NULL,
  ORGNZT_DC varchar2(100) ,
  CONSTRAINT ORGNZT_PK PRIMARY KEY (ORGNZT_ID)
) ;
DROP TABLE AUTHOR_GROUP CASCADE CONSTRAINTS;
CREATE TABLE AUTHOR_GROUP  (
  GROUP_ID char(20) DEFAULT '' NOT NULL,
  GROUP_NM varchar2(60) NOT NULL,
  GROUP_CREAT_DE char(20) NOT NULL,
  GROUP_DC varchar2(100) ,
  CONSTRAINT AUTHOR_GROUP_PK PRIMARY KEY (GROUP_ID)
) ;

	
DROP TABLE EMPLYR CASCADE CONSTRAINTS;
CREATE TABLE EMPLYR  (
  EMPLYR_ID varchar2(20) NOT NULL,
  ORGNZT_ID char(20) ,
  USER_NM varchar2(60) NOT NULL,
  PASSWORD varchar2(200) NOT NULL,
  EMPL_NO varchar2(20) ,
  IHIDNUM varchar2(200) ,
  SEXDSTN_CODE char(1) ,
  BRTHDY char(20) ,
  FXNUM varchar2(20) ,
  HOUSE_ADRES varchar2(100) ,
  PASSWORD_HINT varchar2(100) NOT NULL,
  PASSWORD_CNSR varchar2(100) NOT NULL,
  HOUSE_END_TELNO varchar2(4) ,
  AREA_NO varchar2(4) ,
  DETAIL_ADRES varchar2(100) ,
  ZIP varchar2(6) ,
  OFFM_TELNO varchar2(20) ,
  MBTLNUM varchar2(20) ,
  EMAIL_ADRES varchar2(50) ,
  OFCPS_NM varchar2(60) ,
  HOUSE_MIDDLE_TELNO varchar2(4) ,
  GROUP_ID char(20) ,
  PSTINST_CODE char(8) ,
  EMPLYR_STTUS_CODE varchar2(15) NOT NULL,
  ESNTL_ID char(20) NOT NULL,
  CRTFC_DN_VALUE varchar2(20) ,
  SBSCRB_DE DATE ,
  CONSTRAINT EMPLYR_PK PRIMARY KEY (EMPLYR_ID),
  CONSTRAINT EMPLYR_FK_AUTHOR_GROUP FOREIGN KEY (GROUP_ID) REFERENCES AUTHOR_GROUP (GROUP_ID) ON DELETE CASCADE,
  CONSTRAINT EMPLYR_FK_ORGNZT FOREIGN KEY (ORGNZT_ID) REFERENCES ORGNZT (ORGNZT_ID) ON DELETE CASCADE
) ;


DROP TABLE BBS_TMPLAT CASCADE CONSTRAINTS;
CREATE TABLE BBS_TMPLAT  (
  TMPLAT_ID char(20) DEFAULT '' NOT NULL,
  TMPLAT_NM varchar2(255) ,
  TMPLAT_COURS varchar2(2000) ,
  USE_AT char(1) ,
  TMPLAT_SE_CODE char(6) ,
  FRST_REGISTER_ID varchar2(20) ,
  FRST_REGIST_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  CONSTRAINT BBS_TMPLAT_PK PRIMARY KEY (TMPLAT_ID)
) ;
DROP TABLE BBS_MASTER CASCADE CONSTRAINTS;
CREATE TABLE BBS_MASTER  (
  BBS_ID char(20) NOT NULL,
  BBS_NM varchar2(255) NOT NULL,
  BBS_INTRCN varchar2(2400) ,
  BBS_TY_CODE char(6) NOT NULL,
  BBS_ATTRB_CODE char(6) NOT NULL,
  REPLY_POSBL_AT char(1) ,
  FILE_ATCH_POSBL_AT char(1) NOT NULL,
  ATCH_POSBL_FILE_NUMBER number(2,0) NOT NULL,
  ATCH_POSBL_FILE_SIZE number(8,0) ,
  USE_AT char(1) NOT NULL,
  TMPLAT_ID char(20) ,
  FRST_REGISTER_ID varchar2(20) NOT NULL,
  FRST_REGIST_PNTTM DATE NOT NULL,
  LAST_UPDUSR_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  CONSTRAINT BBS_MASTER_PK PRIMARY KEY (BBS_ID)
) ;
DROP TABLE BBS_USE CASCADE CONSTRAINTS;
CREATE TABLE BBS_USE  (
  BBS_ID char(20) NOT NULL,
  TRGET_ID char(20) DEFAULT '' NOT NULL,
  USE_AT char(1) NOT NULL,
  REGIST_SE_CODE char(6) ,
  FRST_REGIST_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) NOT NULL,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT BBS_USE_PK PRIMARY KEY (BBS_ID,TRGET_ID),
  CONSTRAINT BBS_USE_FK_BBS_MASTER FOREIGN KEY (BBS_ID) REFERENCES BBS_MASTER (BBS_ID)
) ;

DROP TABLE BBS CASCADE CONSTRAINTS;
CREATE TABLE BBS (
  NTT_ID number(20,0) NOT NULL,
  BBS_ID char(20) NOT NULL,
  NTT_NO number(20,0) ,
  NTT_SJ varchar2(2000) ,
  NTT_CN CLOB,
  ANSWER_AT char(1) ,
  PARNTSCTT_NO number(10,0) ,
  ANSWER_LC number(11) ,
  SORT_ORDR number(8,0) ,
  RDCNT number(10,0) ,
  USE_AT char(1) NOT NULL,
  NTCE_BGNDE char(20) ,
  NTCE_ENDDE char(20) ,
  NTCR_ID varchar2(20) ,
  NTCR_NM varchar2(20) ,
  PASSWORD varchar2(200) ,
  ATCH_FILE_ID char(20) ,
  FRST_REGIST_PNTTM DATE NOT NULL,
  FRST_REGISTER_ID varchar2(20) NOT NULL,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT BBS_PK PRIMARY KEY (NTT_ID,BBS_ID),
  CONSTRAINT BBS_FK_BBS_MASTER FOREIGN KEY (BBS_ID) REFERENCES BBS_MASTER (BBS_ID)
) ;
DROP TABLE BBS_MASTER_OPTN CASCADE CONSTRAINTS;
CREATE TABLE BBS_MASTER_OPTN (
  BBS_ID char(20) DEFAULT '' NOT NULL,
  ANSWER_AT char(1) DEFAULT '' NOT NULL,
  STSFDG_AT char(1) DEFAULT '' NOT NULL,
  FRST_REGIST_PNTTM DATE DEFAULT SYSDATE NOT NULL,
  LAST_UPDT_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) DEFAULT '' NOT NULL,
  LAST_UPDUSR_ID varchar2(20) ,
  CONSTRAINT BBS_MASTER_OPTN_PK PRIMARY KEY (BBS_ID)
) ;
DROP TABLE ENTRPRS_MBER CASCADE CONSTRAINTS;
CREATE TABLE ENTRPRS_MBER (
  ENTRPRS_MBER_ID varchar2(20) DEFAULT '' NOT NULL,
  ENTRPRS_SE_CODE char(15) ,
  BIZRNO varchar2(10) ,
  JURIRNO varchar2(13) ,
  CMPNY_NM varchar2(60) NOT NULL,
  CXFC varchar2(50) ,
  ZIP varchar2(6) ,
  ADRES varchar2(100) ,
  ENTRPRS_MIDDLE_TELNO varchar2(4) ,
  FXNUM varchar2(20) ,
  INDUTY_CODE char(15) ,
  APPLCNT_NM varchar2(50) NOT NULL,
  APPLCNT_IHIDNUM varchar2(200) ,
  SBSCRB_DE DATE ,
  ENTRPRS_MBER_STTUS varchar2(15) ,
  ENTRPRS_MBER_PASSWORD varchar2(200) NOT NULL,
  ENTRPRS_MBER_PASSWORD_HINT varchar2(100) NOT NULL,
  ENTRPRS_MBER_PASSWORD_CNSR varchar2(100) NOT NULL,
  GROUP_ID char(20) ,
  DETAIL_ADRES varchar2(100) ,
  ENTRPRS_END_TELNO varchar2(4) ,
  AREA_NO varchar2(4) ,
  APPLCNT_EMAIL_ADRES varchar2(50) ,
  ESNTL_ID char(20) NOT NULL,
  CONSTRAINT ENTRPRS_MBER_PK PRIMARY KEY (ENTRPRS_MBER_ID),
  CONSTRAINT ENTRPRS_MBER_FK_AUTHOR_GROUP FOREIGN KEY (GROUP_ID) REFERENCES AUTHOR_GROUP (GROUP_ID) ON DELETE CASCADE
) ;
DROP TABLE ATCH_FILE CASCADE CONSTRAINTS;
CREATE TABLE ATCH_FILE (
  ATCH_FILE_ID char(20) NOT NULL,
  CREAT_DT DATE NOT NULL,
  USE_AT char(1) ,
  CONSTRAINT ATCH_FILE_PK PRIMARY KEY (ATCH_FILE_ID)
) ;
DROP TABLE FILE_DETAIL CASCADE CONSTRAINTS;
CREATE TABLE FILE_DETAIL (
  ATCH_FILE_ID char(20) NOT NULL,
  FILE_SN number(10,0) NOT NULL,
  FILE_STRE_COURS varchar2(2000) NOT NULL,
  STRE_FILE_NM varchar2(255) NOT NULL,
  ORIGNL_FILE_NM varchar2(255) ,
  FILE_EXTSN varchar2(20) NOT NULL,
  FILE_CN CLOB,
  FILE_SIZE number(8,0) ,
  CONSTRAINT FILE_DETAIL_PK PRIMARY KEY (ATCH_FILE_ID,FILE_SN),
  CONSTRAINT FILE_DETAIL_FK_ATCH_FILE FOREIGN KEY (ATCH_FILE_ID) REFERENCES ATCH_FILE (ATCH_FILE_ID)
) ;
DROP TABLE GNRL_MBER CASCADE CONSTRAINTS;
CREATE TABLE GNRL_MBER (
  MBER_ID varchar2(20) DEFAULT '' NOT NULL,
  PASSWORD varchar2(200) NOT NULL,
  PASSWORD_HINT varchar2(100) NOT NULL,
  PASSWORD_CNSR varchar2(100) NOT NULL,
  IHIDNUM varchar2(200) ,
  MBER_NM varchar2(50) NOT NULL,
  ZIP varchar2(6) ,
  ADRES varchar2(100) ,
  AREA_NO varchar2(4) ,
  MBER_STTUS varchar2(15) ,
  DETAIL_ADRES varchar2(100) ,
  END_TELNO varchar2(4) ,
  MBTLNUM varchar2(20) ,
  GROUP_ID char(20) ,
  MBER_FXNUM varchar2(20) ,
  MBER_EMAIL_ADRES varchar2(50) ,
  MIDDLE_TELNO varchar2(4) ,
  SBSCRB_DE DATE ,
  SEXDSTN_CODE char(1) ,
  ESNTL_ID char(20) NOT NULL,
  CONSTRAINT GNRL_MBER_PK PRIMARY KEY (MBER_ID),
  CONSTRAINT GNRL_MBER_FK_AUTHOR_GROUP FOREIGN KEY (GROUP_ID) REFERENCES AUTHOR_GROUP (GROUP_ID) ON DELETE CASCADE
) ;
DROP TABLE SCHDUL CASCADE CONSTRAINTS;
CREATE TABLE SCHDUL (
  SCHDUL_ID char(20) NOT NULL,
  SCHDUL_SE char(1) ,
  SCHDUL_DEPT_ID varchar2(20) ,
  SCHDUL_KND_CODE varchar2(20) ,
  SCHDUL_BEGINDE char(20) ,
  SCHDUL_ENDDE char(20) ,
  SCHDUL_NM varchar2(255) ,
  SCHDUL_CN varchar2(2500) ,
  SCHDUL_PLACE varchar2(255) ,
  SCHDUL_IPCR_CODE char(1) ,
  SCHDUL_CHARGER_ID varchar2(20) ,
  ATCH_FILE_ID char(20) ,
  FRST_REGIST_PNTTM DATE ,
  FRST_REGISTER_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  REPTIT_SE_CODE char(3) ,
  CONSTRAINT SCHDUL_PK PRIMARY KEY (SCHDUL_ID)
) ;



CREATE OR REPLACE VIEW COMVNUSERMASTER ( ESNTL_ID,USER_ID,PASSWORD,USER_NM,USER_ZIP,USER_ADRES,USER_EMAIL,GROUP_ID, USER_SE, ORGNZT_ID ) 
AS  
        SELECT ESNTL_ID, MBER_ID,PASSWORD,MBER_NM,ZIP,ADRES,MBER_EMAIL_ADRES,' ','GNR' AS USER_SE, ' ' ORGNZT_ID
        FROM LETTNGNRLMBER
    UNION ALL
        SELECT ESNTL_ID,EMPLYR_ID,PASSWORD,USER_NM,ZIP,HOUSE_ADRES,EMAIL_ADRES,GROUP_ID ,'USR' AS USER_SE, ORGNZT_ID
        FROM LETTNEMPLYRINFO
    UNION ALL
        SELECT ESNTL_ID,ENTRPRS_MBER_ID,ENTRPRS_MBER_PASSWORD,CMPNY_NM,ZIP,ADRES,APPLCNT_EMAIL_ADRES,' ' ,'ENT' AS USER_SE, ' ' ORGNZT_ID
        FROM LETTNENTRPRSMBER 
;

