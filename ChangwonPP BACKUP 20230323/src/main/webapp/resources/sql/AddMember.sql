charset utf8;
USE changwonPP;

create table member(
	m_id varchar(10) primary key not null,
    m_pw varchar(10),
    m_name varchar(10),
    m_birthday varchar(10),
    m_mail varchar(20),
    m_phone varchar(11),
    m_sex varchar(2)
    )default charset=utf8;
    
insert into product values('1','스프링 공작소','50000','새상품','1000','창원시 마산회원구 양덕동 2길','사지마세요');