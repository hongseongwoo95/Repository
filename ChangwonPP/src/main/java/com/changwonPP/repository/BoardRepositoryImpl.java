package com.changwonPP.repository;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.changwonPP.domain.Board;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	
	private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성

	@Autowired // JdbcTemplate 사용을 위한 DataSource 주입
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override // 모든 게시글 정보를 가져오는 기능
	public List<Board> getAllBoardList() { // DB의 member 테이블에 등록된 모든 회원 목록을 조회하여 회원 목록을 리턴하는 메서드
		String SQL = "select * from board";
		List<Board> listOfBoards = template.query(SQL, new BoardRowMapper()); // 목록 리턴이기때문에 query 메서드를 사용.
		return listOfBoards;
	}

	@Override // 글쓰기 기능 구현
	public void addNewPost(Board board, HttpServletRequest req) {
	HttpSession session = req.getSession(true);	// 세션 사용하려고 세션 객체 생성
	LocalDate b_date = LocalDate.now(); // 게시글 작성 시 작성 시간을 database에 저장하기 위해서 LocalDate 클래스 사용
	String b_writer = (String)session.getAttribute("m_id"); // 세션에 저장된 m_id 값을 가져와서 형변환하고 변수에 담아서 database에 작성자로 저장.
	String SQL = "Insert INTO board(b_title, b_content, b_writer, b_date) VALUES (?,?,?,?)";

	template.update(SQL, board.getB_title(), board.getB_content(), b_writer, b_date);

	}

}
