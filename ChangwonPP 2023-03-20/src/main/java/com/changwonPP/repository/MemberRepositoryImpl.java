package com.changwonPP.repository;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.changwonPP.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository {

	private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	private List<Member> listOfMembers = new ArrayList<Member>();
	
	@Override // 모든 회원 정보를 가져오는 기능(나중에 관리자가 회원관리할 때 사용할 예정)
	public List<Member> getAllMemberList() {
		return listOfMembers;
	}

	@Override // DB에 데이터를 삽입할 때 들어가는 데이터 3개 사이에 "-"를 넣고 변수로 처리해서 아래에서 넣을 수 있게 함
	public void setNewMember(Member member) {
		String m_birthday = member.getM_birthday1() + "-" + member.getM_birthday2() + "-" + member.getM_birthday3();
		String m_phone = member.getM_phone1() + "-" + member.getM_phone2() + "-" + member.getM_phone3();
		
		String SQL =  "Insert INTO member(m_id, m_pw, m_name, m_birthday, m_mail, m_phone, m_sex)"+
					  " VALUES (?,?,?,?,?,?,?)";
		
		template.update(SQL, member.getM_id(), member.getM_pw(), member.getM_name(),m_birthday, member.getM_mail(), 
		m_phone, member.getM_sex());
	}

	@Override // 로그인 처리 기능 구현
	public void ChkLogin(Member member) {
		// String SQL = "select * from Member where m_id = '"+m_id+"'"; // MYsql에서 멤버 아이디를 조회하는 쿼리문 예전에 만든거
//		Member memberInfo = null;
//		String SQL = "select count(*) from member where m_id=?";
//		int rowCount = template.
//		chklogin = template.query(SQL, )
		
	}
	
}
