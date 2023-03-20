package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Event_Controller {

	@GetMapping("/Event_Info")
	public String EventMethod() {
		return "Event_Info";
	}
}
