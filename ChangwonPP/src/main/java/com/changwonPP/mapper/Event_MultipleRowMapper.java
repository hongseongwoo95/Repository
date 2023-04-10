package com.changwonPP.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Event_Multiple;

public class Event_MultipleRowMapper implements RowMapper<Event_Multiple>{

   @Override
   public Event_Multiple mapRow(ResultSet rs, int rowNum) throws SQLException {
      Event_Multiple Multiple=new Event_Multiple();
      Multiple.setId(rs.getInt("Id"));
      Multiple.setE_number(rs.getString("e_number"));
      Multiple.setFile_name(rs.getString("File_name"));
      return Multiple;
   }

}