package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Event;

public class EventRowMapper implements RowMapper<Event>{
	public Event mapRow(ResultSet rs, int rowNum) throws SQLException{
		Event event = new Event();
		event.setE_number(rs.getInt("e_number"));
		event.setE_name(rs.getString("e_name"));
		event.setE_title(rs.getString("e_title"));
		event.setE_date1(rs.getString("e_date1"));
		event.setE_date2(rs.getString("e_date2"));
		event.setE_addr(rs.getString("e_addr"));
		event.setE_agency(rs.getString("e_agency"));
		event.setE_telephone(rs.getString("e_telephone"));
		event.setE_money(rs.getString("e_money"));
		event.setE_mapX(rs.getDouble("e_mapX"));
		event.setE_mapY(rs.getDouble("e_mapY"));
		return event;
	}
}
