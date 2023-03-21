package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/Cardnews")
	public String CardnewsMethod() {
		return "Cardnews";
	}
	
	@GetMapping("/EventPage")
	public String EventMethod() {
		return "Event_Page";
	}
	
	
	@GetMapping("/Bus")
	public String BusMethod() {
		return "Bus";
	}
	
	@GetMapping("/MarketMain")
	public String MarketMainMethod() {
		return "Market_Main";
	}
}
