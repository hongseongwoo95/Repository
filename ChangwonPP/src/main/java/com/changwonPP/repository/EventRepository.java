package com.changwonPP.repository;

import java.io.IOException;
import java.util.List;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_files;

public interface EventRepository {
	List<Event> getAllEvent();
	void setNewEvent(Event event, Event_files event_files) throws IOException;
}
