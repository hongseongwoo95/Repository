package com.changwonPP.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.changwonPP.domain.Member;
import com.changwonPP.repository.MemberRepository;

@Controller // 멤버와 관련된 로그인, 회원가입 등 Mapping 설정
public class MemberController {
	@Autowired // 멤버 관리에 사용할 DAO 객체 생성
	private MemberRepository memberDAO; 
	
	@GetMapping("/AddMember") // 회원가입 버튼 클릭시 페이지 매핑
	public String addMemberMethod(@ModelAttribute("NewMember") Member member) {
		return "Add_Member";
	}

	@PostMapping("/AddMemberSubmit") // 회원가입 처리 기능
	public String addNewMemberMethod(@ModelAttribute("NewMember") Member member) {
		memberDAO.addNewMember(member); 
		return "redirect:/";
	}

	@GetMapping("/Login") // 로그인 버튼 클릭시 페이지 매핑
	public String loginMethod(@ModelAttribute("Login") Member member) {
		return "Login";
	}

	@PostMapping("/LoginSubmit") // 로그인 기능
	public String loginSubmitMethod(@ModelAttribute("Login") Member member, HttpServletRequest req) {
		memberDAO.Login(member, req); 
		return "redirect:/";
	}
	
	@GetMapping("/Logout") // 로그아웃 기능
	public String logoutMethod(HttpServletRequest req) {
		memberDAO.Logout(req); 
		return "redirect:/";
	}
	
	@GetMapping("UpdateMember") // 회원수정 기능
	public String updateMemberMethod(@ModelAttribute("Update") Member member) {
		return "Update_Member";
	}

	@GetMapping("/FindID") // 아이디찾기 기능
	public String findiDMethod() {
		return "Find_ID";
	}

	@GetMapping("/FindPW") // 비밀번호 찾기 기능
	public String findpWMethod() {
		return "Find_PW";
	}
}