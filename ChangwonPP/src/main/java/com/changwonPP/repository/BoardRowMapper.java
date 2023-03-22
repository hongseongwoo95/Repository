package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Board;

public class BoardRowMapper implements RowMapper<Board> {
	public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
		Board board = new Board();
		board.setB_num(rs.getInt(1));
		board.setB_title(rs.getString(2));
		board.setB_content(rs.getString(3));
		board.setB_writer(rs.getString(4));
		board.setB_date(rs.getString(5));
		board.setB_views(rs.getInt(6));
		return board;
	}
}
