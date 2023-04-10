package com.changwonPP.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_Multiple;
import com.changwonPP.repository.EventRepository;

@Controller
public class EventController {

	@Autowired // 게시글 관리에 사용할 DAO 객체 생성
	private EventRepository EventDAO;

	@GetMapping("/Event_Upload") // 행사 업로드 매핑
	public String getEventUpload(@ModelAttribute("Event") Event event) {
		return "Event_Upload";
	}

	@PostMapping("/Event_Upload") // 다중파일 업로드 처리
	public String setEventUpload(@ModelAttribute("Event") Event event, Event_Multiple event_multiple)
			throws IOException {
		try {
			EventDAO.setNewEvent(event, event_multiple);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/EventPage";
	}

	
	@GetMapping("/EventPage") // 행사 게시판 접근시 매핑
	   public String EventMethod(Model model) {
		EventDAO.getRecentEvent(model); // 가장 최근 행사 하나만 가져와서 D-day 가공하는 메서드 호출
		List<Event> listOfEvent = EventDAO.getAllEvent();
		model.addAttribute("EventList", listOfEvent);
		return "Event_Page";
	   }
	
	@GetMapping("/EventInfo/{number}") // 행사 게시글 상세보기 기능
	   public String EventDetailMethod(@PathVariable String number, Model model) {
	      EventDAO.clickEvent(number, model);
	      model.addAttribute(number,model);
	      return "Event_Info";
	   }

}