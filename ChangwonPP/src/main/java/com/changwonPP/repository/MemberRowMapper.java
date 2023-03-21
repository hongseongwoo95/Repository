package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Member;

public class MemberRowMapper implements RowMapper<Member> { // DB를 조회해서 담아오는 값을 로그인, 회원수정 등에 이용함
	public Member mapRow(ResultSet rs, int rowNum) throws SQLException{
		Member member = new Member();
		member.setM_id(rs.getString(1));
		return member;
	}
}
