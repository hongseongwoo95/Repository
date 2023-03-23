package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Board;

public class BoardRowMapper implements RowMapper<Board> {
	public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
		Board board = new Board();
		board.setB_num(rs.getInt("b_num"));
		board.setB_title(rs.getString("b_title"));
		board.setB_content(rs.getString("b_content"));
		board.setB_writer(rs.getString("b_writer"));
		board.setB_date(rs.getString("b_date"));
		board.setB_views(rs.getInt("b_views"));
		return board;
	}
}
