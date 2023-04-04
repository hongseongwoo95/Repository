package com.changwonPP.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.News;
import com.changwonPP.repository.EventRepository;
import com.changwonPP.repository.NewsRepository;

@Controller
public class MainController {
	@Autowired // 게시글 관리에 사용할 DAO 객체 생성
	private EventRepository EventDAO;
	@Autowired
	private NewsRepository newsDAO;

	@GetMapping("/") // 프로젝트를 run했을 때 기본적으로 표시되는 메인 페이지 Mapping
	   public String MainMethod(Model model) {
	      List<Event> listOfEvent = EventDAO.getLimitEvent();
	      List<News> listOfNews = newsDAO.getLimitNews();
	         model.addAttribute("EventList", listOfEvent);
	         model.addAttribute("NewsList", listOfNews);
	      return "Main_Page";
	   }
    
    @GetMapping("/AboutCompany")
    public String AboutCompanyMethod() {
       return "AboutCompany";
    }
}
