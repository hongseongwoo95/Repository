package com.changwonPP.repository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.changwonPP.domain.Member;

public interface MemberRepository {
	List<Member> getAllMemberList();
	void addNewMember(Member member);
	void Login(Member member, HttpServletRequest req);
	void Logout(HttpServletRequest req);
}
