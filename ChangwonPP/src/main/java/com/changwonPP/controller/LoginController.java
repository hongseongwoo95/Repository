package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Login")
public class LoginController {
	
	@GetMapping("")
	public String LoginMethod() {
		System.out.println("로그인 페이지 들어옴");
		return "Login";
	}
	@PostMapping("/Login")
	public String LoginMethod2() {
		System.out.println("로그인까지 들어옴");
		return "";
	}
	
	@GetMapping("/Find_ID")
	public String IDMethod() {
		System.out.println("아이디 찾기 들어옴");
		return "Find_ID";
	}
	
	@GetMapping("/Find_PW")
	public String PWMethod() {
		return "Find_PW";
	}
}