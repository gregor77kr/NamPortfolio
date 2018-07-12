CREATE SEQUENCE member_seq
start with 1
increment by 1
NOMAXVALUE;
commit;

/** sequence 확인 
SELECT member_seq.nextval
FROM dual; 

sequence int -> char 변환 확인 
SELECT TO_CHAR(member_seq.nextval) FROM DUAL; **/

/** 테이블 생성 **/
CREATE TABLE member(
MEM_NO varchar2(20) primary key,
USER_ID varchar2(20) not null unique check(length(user_id) between 8 AND 15),
PASSWD varchar2(20) not null check(length(passwd) between 10 AND 20),
MOBILE_NUM varchar2(15) not null,
ADDRESS varchar2(50) not null,
EMAIL varchar2(20) not null,
JOIN_DATE DATE default sysdate
);

commit;


CREATE TABLE profile(
MEM_NO varchar2(20),
NICK_NAME varchar2(20) NOT NULL UNIQUE,
PR_IMAGE varchar2(20) default 'default.jpg',
EMAIL_YN varchar2(2) default '2',
INTRO varchar2(50) 
);

commit;

CREATE TABLE board_master(
MEM_NO varchar2(20),
BOARD_NO varchar2(20),
BOARD_NAME varchar2(20),
PUB_YN varchar2(1) default '2');

commit;

CREATE TABLE friend(
MEM_NO varchar2(20),
FRI_MEM_NO varchar2(20)
);

commit;

/** 샘플 데이터 INSERT **/

INSERT INTO MEMBER VALUES (TO_CHAR(MEMBER_SEQ.NEXTVAL), 'greatch1', 'dkdldhsehdgml90', '010-3059-2222',
'서울시 동대문구', '7837167@naver.com', sysdate);

select *
from member;

/** foreign key 추가 **/
alter table profile add constraint profile_mem_no_fk foreign key(mem_no)
REFERENCES member(mem_no);

