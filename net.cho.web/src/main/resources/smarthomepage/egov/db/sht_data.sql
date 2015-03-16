

-- ID Generation
insert into IDS(TABLE_NAME,NEXT_ID) values ( 'BBS_ID',1);
insert into IDS(TABLE_NAME,NEXT_ID) values ( 'FILE_ID',1);
insert into IDS(TABLE_NAME,NEXT_ID) values ( 'SCHDUL_ID',1);
insert into IDS(TABLE_NAME,NEXT_ID) values ( 'TMPLAT_ID',1);
   

insert into COMMON_CLASS_CODE(CL_CODE,CL_CODE_NM,CL_CODE_DC,USE_AT,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('LET','전자정부 프레임워크 경량환경 템플릿','전자정부 프레임워크 경량환경 템플릿','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');

insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM001','등록구분','게시판, 커뮤니티, 동호회 등록구분코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM003','업무구분','업무구분코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM' );
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM004','게시판유형','게시판유형구분코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM005','템플릿유형','템플릿유형구분코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM009','게시판속성','게시판 속성','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM019','일정중요도','일정중요도 낮음/보통/높음 상태구분','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM030','일정구분','일정구분 코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');
insert into COMMON_CODE(CODE_ID,CODE_ID_NM,CODE_ID_DC,USE_AT,CL_CODE,FRST_REGIST_PNTTM,FRST_REGISTER_ID,LAST_UPDT_PNTTM,LAST_UPDUSR_ID) values ('COM031','반복구분','일정 반복구분 코드','Y','LET','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM');


INSERT INTO LETTCCMMNDETAILCODE VALUES('COM001','REGC01','단일 게시판 이용등록','단일 게시판 이용등록','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM001','REGC07','게시판사용자등록','게시판사용자등록','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM003','BBS','게시판','게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM004','BBST01','일반게시판','일반게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM004','BBST02','익명게시판','익명게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM004','BBST03','공지게시판','공지게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM004','BBST04','방명록','방명록','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM005','TMPT01','게시판템플릿','게시판템플릿','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM009','BBSA01','유효게시판','유효게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM009','BBSA02','갤러리','갤러리','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM009','BBSA03','일반게시판','일반게시판','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM019','A','높음','높음','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM019','B','보통','보통','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM019','C','낮음','낮음','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM030','1','회의','회의','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM030','2','세미나','세미나','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM030','3','강의','강의','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM030','4','교육','교육','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM030','5','기타','기타','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM031','1','당일','당일','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM031','2','반복','반복','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM031','3','연속','연속','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTCCMMNDETAILCODE VALUES('COM031','4','요일반복','요일반복','Y','2011-08-31 00:00:00.000000000','SYSTEM','2011-08-31 00:00:00.000000000','SYSTEM')
INSERT INTO LETTNAUTHORGROUPINFO VALUES('GROUP_00000000000000','기본 그룹입니다','2011-08-31','기본 그룹')
INSERT INTO LETTNBBSMASTER VALUES('BBSMSTR_AAAAAAAAAAAA','공지사항','공지사항게시판','BBST03','BBSA03','Y','Y',2,5242880,'Y','TMPLAT_BOARD_DEFAULT','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000')
INSERT INTO LETTNBBSMASTER VALUES('BBSMSTR_BBBBBBBBBBBB','갤러리','갤러리게시판','BBST01','BBSA02','Y','Y',2,5242880,'Y','TMPLAT_BOARD_DEFAULT','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000')
INSERT INTO LETTNBBSUSE VALUES('BBSMSTR_AAAAAAAAAAAA','SYSTEM_DEFAULT_BOARD','Y','REGC01','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000')
INSERT INTO LETTNBBSUSE VALUES('BBSMSTR_BBBBBBBBBBBB','SYSTEM_DEFAULT_BOARD','Y','REGC01','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000','2011-08-31 12:00:00.000000000','USRCNFRM_00000000000')
INSERT INTO LETTNEMPLYRINFO VALUES('admin','ORGNZT_0000000000000','관리자','JfQ7FIatlaE5jj7rPYO8QBABX8yb7bNbQy4AKY1QIfc=','','','F','','','관리자 주소','','','','','','','','','','','','GROUP_00000000000000','00000000','P','USRCNFRM_00000000000','','2011-08-31 00:00:00.000000000')
INSERT INTO LETTNTMPLATINFO VALUES('TMPLAT_BOARD_DEFAULT','게시판 기본템플릿','/css/egovframework/cop/bbs/egovbbsTemplate.css','Y','TMPT01','SYSTEM','2011-08-31 00:00:00.000000000',NULL,NULL)
INSERT INTO IDS VALUES('BBS_ID',1)
INSERT INTO IDS VALUES('FILE_ID',1)
INSERT INTO IDS VALUES('SAMPLE',1)
INSERT INTO IDS VALUES('SCHDUL_ID',1)
INSERT INTO IDS VALUES('TMPLAT_ID',1)
