package com.changwonPP.repository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.changwonPP.domain.Board;

public class BoardRepositoryImpl implements BoardRepository {
	
	private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성

	@Autowired // JdbcTemplate 사용을 위한 DataSource 주입
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override // 모든 게시글 목록을 가져오는 기능(게시판에 뿌릴 때 사용할 예정)
	public List<Board> getAllBoardList() {

		return null;
	}

	@Override // 글쓰기 기능 구현
	public void addNewPost(Board board, HttpServletRequest req) {
	HttpSession session = req.getSession(true);	
	String b_writer = (String)session.getAttribute("m_id");
	String SQL = "Insert INTO member(b_title, b_content)"
			+ " VALUES (?,?)";

	template.update(SQL, board.getB_title(), board.getB_content());

	}

}
