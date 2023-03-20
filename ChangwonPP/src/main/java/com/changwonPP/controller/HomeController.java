package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String HomeMethod() {
		return "Main_Page";
	}
}
