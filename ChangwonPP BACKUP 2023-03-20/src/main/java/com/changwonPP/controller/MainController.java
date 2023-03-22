package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/Board_Info")
	public String BoardInfoMethod() {
		return "Board_Info";
	}
	
	@GetMapping("/Cardnews")
	public String CardnewsMethod() {
		return "Cardnews";
	}
	
	@GetMapping("/Event_Page")
	public String EventMethod() {
		return "Event_Page";
	}
	
	@GetMapping("/Board_Employ")
	public String BoardEmployMethod() {
		return "Board_Employ";
	}
	
	@GetMapping("/Bus")
	public String BusMethod() {
		return "Bus";
	}
	
	@GetMapping("/Market_Main")
	public String MarketMainMethod() {
		return "Market_Main";
	}
}
