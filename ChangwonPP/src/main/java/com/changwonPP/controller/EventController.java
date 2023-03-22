package com.changwonPP.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	
	@Autowired // 게시글 관리에 사용할 DAO 객체 생성

	@GetMapping("/EventPage")
	public String EventMethod() {
		return "Event_Page";
	}
	
	
	@GetMapping("/EventInfo")
	public String BoardMethod() {
		return "Event_Info";
	}
	
}
