package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Event;

public class EventRowMapper implements RowMapper<Event>{
	public Event mapRow(ResultSet rs, int rowNum) throws SQLException{
		Event event = new Event();
		event.setE_number(rs.getInt("E_number"));
		event.setE_name(rs.getString("E_name"));
		event.setE_title(rs.getString("E_title"));
		event.setE_date1(rs.getString("E_date1"));
		event.setE_date2(rs.getString("E_date2"));
		event.setE_addr(rs.getString("E_addr"));
		event.setE_telephone(rs.getString("E_telephone"));
		event.setE_money(rs.getString("E_money"));
		return event;
	}
}
