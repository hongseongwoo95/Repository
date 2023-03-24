package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/") // 프로젝트를 run했을 때 기본적으로 표시되는 메인 페이지 Mapping
	public String HomeMethod() {
		return "Main_Page";
	}
}
