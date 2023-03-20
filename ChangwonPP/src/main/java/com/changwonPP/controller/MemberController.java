package com.changwonPP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.changwonPP.domain.Member;
import com.changwonPP.repository.MemberRepositoryImpl;

@Controller // 멤버와 관련된 로그인, 회원가입 등 Mapping 설정
public class MemberController {
	@Autowired // 회원가입할 때 사용할 DAO 객체 생성
	private MemberRepositoryImpl memberDAO; 
	
	@GetMapping("/AddMember") // 회원가입 버튼 클릭시 페이지 매핑
	public String AddMemberMethod(@ModelAttribute("NewMember") Member member) {

		return "Add_Member";
	}

	@PostMapping("/AddMemberSubmit") // 회원가입 처리 기능
	public String AddNewMemberMethod(@ModelAttribute("NewMember") Member member) {
		memberDAO.setNewMember(member);
		return "redirect:/";
	}

	@GetMapping("/Login") // 로그인 버튼 클릭시 페이지 매핑
	public String LoginMethod() {
		return "Login";
	}

	@PostMapping("/Login") // 로그인 처리 기능
	public String ProcessLoginMethod() {
		return "redirect:/";
	}

	@GetMapping("/Find_ID") // 아이디찾기 기능
	public String IDMethod() {
		return "Find_ID";
	}

	@GetMapping("/Find_PW") // 비밀번호 찾기 기능
	public String PWMethod() {
		return "Find_PW";
	}
}