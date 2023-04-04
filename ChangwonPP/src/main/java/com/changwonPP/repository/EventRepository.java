package com.changwonPP.repository;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.Model;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_Multiple;

public interface EventRepository {
	List<Event> getAllEvent();
	void setNewEvent(Event event, Event_Multiple event_files) throws IOException;
	void clickEvent(String number, Model model);
	List<Event> getLimitEvent();
}
