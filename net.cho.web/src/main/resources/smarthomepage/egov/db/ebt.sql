DROP TABLE EMPLYR_CHANGE_DETAIL CASCADE CONSTRAINTS;
CREATE TABLE EMPLYR_CHANGE_DETAIL (
  EMPLYR_ID varchar2(20) NOT NULL,
  CHANGE_DE DATE DEFAULT '' NOT NULL,
  ORGNZT_ID char(20) ,
  GROUP_ID char(20) ,
  EMPL_NO varchar2(20) ,
  SEXDSTN_CODE char(1) ,
  BRTHDY char(20) ,
  FXNUM varchar2(20) ,
  HOUSE_ADRES varchar2(100),
  HOUSE_END_TELNO varchar2(4) ,
  AREA_NO varchar2(4) ,
  DETAIL_ADRES varchar2(100),
  ZIP varchar2(6),
  OFFM_TELNO varchar2(20) ,
  MBTLNUM varchar2(20) ,
  EMAIL_ADRES varchar2(50) ,
  HOUSE_MIDDLE_TELNO varchar2(4) ,
  PSTINST_CODE char(8) ,
  EMPLYR_STTUS_CODE varchar2(15),
  ESNTL_ID char(20) ,
  CONSTRAINT EMPLYR_CHANGE_DETAIL_PK PRIMARY KEY (EMPLYR_ID,CHANGE_DE)
) ;

DROP TABLE LOGIN_LOG CASCADE CONSTRAINTS;
CREATE TABLE LOGIN_LOG (
  LOG_ID char(20) NOT NULL,
  CONECT_ID varchar2(20) ,
  CONECT_IP varchar2(23) ,
  CONECT_MTHD char(4) ,
  ERROR_OCCRRNC_AT char(1) ,
  ERROR_CODE char(3) ,
  CREAT_DT DATE ,
  CONSTRAINT LOGIN_LOG_PK PRIMARY KEY (LOG_ID)
) ;
DROP TABLE LOGIN_POLICY CASCADE CONSTRAINTS;
CREATE TABLE LOGIN_POLICY (
  EMPLYR_ID varchar2(20) DEFAULT '' NOT NULL,
  IP_INFO varchar2(23) NOT NULL,
  DPLCT_PERM_AT char(1) NOT NULL,
  LMTT_AT char(1) NOT NULL,
  FRST_REGISTER_ID varchar2(20) ,
  FRST_REGIST_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  CONSTRAINT LOGIN_POLICY_PK PRIMARY KEY (EMPLYR_ID)
) ;

DROP TABLE USER_ABSNCE CASCADE CONSTRAINTS;
CREATE TABLE USER_ABSNCE (
  EMPLYR_ID varchar2(20) DEFAULT '' NOT NULL,
  USER_ABSNCE_AT char(1) NOT NULL,
  FRST_REGISTER_ID varchar2(20) ,
  FRST_REGIST_PNTTM DATE ,
  LAST_UPDUSR_ID varchar2(20) ,
  LAST_UPDT_PNTTM DATE ,
  CONSTRAINT LETTNUSERABSNCE_PK PRIMARY KEY (EMPLYR_ID)
) ;
DROP TABLE SYSLOG_SUMMARY CASCADE CONSTRAINTS;
CREATE TABLE SYSLOG_SUMMARY (
  OCCRRNC_DE char(20) NOT NULL,
  SRVC_NM varchar2(255) NOT NULL,
  METHOD_NM varchar2(60) NOT NULL,
  CREAT_CO number(10,0) ,
  UPDT_CO number(10,0) ,
  RDCNT number(10,0) ,
  DELETE_CO number(10,0) ,
  OUTPT_CO number(10,0) ,
  ERROR_CO number(10,0) ,
  CONSTRAINT LETTSSYSLOGSUMMARY_PK PRIMARY KEY (OCCRRNC_DE,SRVC_NM,METHOD_NM)
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