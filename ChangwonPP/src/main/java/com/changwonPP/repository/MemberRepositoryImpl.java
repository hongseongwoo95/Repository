package com.changwonPP.repository;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.changwonPP.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository {

	private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성

	@Autowired // JdbcTemplate 사용을 위한 DataSource 주입
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}

	private List<Member> listOfMembers = new ArrayList<Member>(); // 모든 회원정보를 담을 수 있는 DAO를 ArrayList 형식으로 객체 생성

	@Override // 모든 회원 정보를 가져오는 기능(나중에 관리자가 회원관리할 때 사용할 예정)
	public List<Member> getAllMemberList() { // DB의 member 테이블에 등록된 모든 회원 목록을 조회하여 회원 목록을 리턴하는 메서드
		String SQL = "select * from member";
		List<Member> listOfMembers = template.query(SQL, new MemberRowMapper()); // 목록 리턴이기때문에 query 메서드를 사용.
		return listOfMembers;
	}

	@Override // 회원가입 기능 구현
	public void addNewMember(Member member) { 
		// DB에 데이터를 삽입할 때 들어가는 데이터 3개 사이에 "-"를 넣고 변수로 처리해서 아래에서 넣을 수 있게 함
		String m_birthday = member.getM_birthday1() + "-" + member.getM_birthday2() + "-" + member.getM_birthday3();
		String m_phone = member.getM_phone1() + "-" + member.getM_phone2() + "-" + member.getM_phone3();

		String SQL = "Insert INTO member(m_id, m_pw, m_name, m_birthday, m_mail, m_phone, m_sex)"
				+ " VALUES (?,?,?,?,?,?,?)";

		template.update(SQL, member.getM_id(), member.getM_pw(), member.getM_name(), m_birthday, member.getM_mail(),
				m_phone, member.getM_sex());
	}

	@Override // 로그인 처리 기능 구현
	public void Login(Member member, HttpServletRequest req) {
	    String SQL = "select * from member where m_id=? and m_pw=?"; 
	    
	    try {
	        Member chkmember = template.queryForObject(SQL, new Object[]{member.getM_id(), member.getM_pw()}, new MemberRowMapper());
	        // SQL 구문의 m_id와 m_pw에 입력하는 값을 매핑해서 가져오기 위해 Object 클래스 사용.

	        if (chkmember != null && chkmember.getM_id().equals(member.getM_id())) { // 받아온 값이 null이 아니거나 view에서 입력한 값과 SQL 구문으로 조회한 값이 일치하면 if 실행
	            String id = chkmember.getM_id(); // m_id 값 가져오기
	            System.out.println("로그인 성공");
		        System.out.println("입력한 아이디: " + member.getM_id());
		        System.out.println("입력한 비밀번호: " + member.getM_pw());
	            HttpSession session = req.getSession(true);
	            session.setAttribute("m_id", id); // 세션에 m_id 저장
	        } 
	        else {
	            System.out.println("로그인 실패");
		        System.out.println("입력한 아이디: " + member.getM_id());
		        System.out.println("입력한 비밀번호: " + member.getM_pw());
	        }
	    } 
	    catch (Exception e) {
	        System.out.println("database에 일치하는 회원정보가 없습니다.");
	        System.out.println("입력한 아이디: " + member.getM_id());
	        System.out.println("입력한 비밀번호: " + member.getM_pw());
	    }
	}

	@Override // 로그아웃 처리 기능 구현
	public void Logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false); // 세션이 없을 경우 새로운 세션을 생성하지 않고 null을 리턴
	    if (session != null) { // 세션이 null이 아니면 invalidate() 메서드를 호출해서  세션을 삭제하는 기능
	        session.invalidate(); 
	    }
		
	}
	
}
