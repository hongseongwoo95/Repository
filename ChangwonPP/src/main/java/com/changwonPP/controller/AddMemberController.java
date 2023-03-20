package com.changwonPP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.changwonPP.domain.Member;
import com.changwonPP.repository.MemberRepositoryImpl;

@Controller
@RequestMapping("/Add_Member")
public class AddMemberController {

	@GetMapping("")
	public String AddMemberMethod(@ModelAttribute("NewMember") Member member) {
		return "Add_Member";
	}
	
	@Autowired
	private MemberRepositoryImpl memberDAO;

	@PostMapping("/Add_Member_Submit") 
	public String AddNewMemberMethod(@ModelAttribute("NewMember") Member member) {
		memberDAO.setNewMember(member);
		return "redirect:/";
	}
}