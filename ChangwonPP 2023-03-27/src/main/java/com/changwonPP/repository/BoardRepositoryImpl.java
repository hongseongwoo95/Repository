package com.changwonPP.repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.changwonPP.domain.Board;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	
	private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성
	private List<Board> BoardList;
	
	@Autowired // JdbcTemplate 사용을 위한 DataSource 주입
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override // 게시판을 조회하고 각 페이지에 보여줄 게시글 갯수를 제한하는 기능
	public void getPerPageBorardList(int page, Model model){
		int numPerPage = 10; // 페이지당 출력할 게시글 수
	    int start = (page - 1) * numPerPage; // 시작 인덱스 계산 
		LocalDate now = LocalDate.now(); // 시간 계산을 위한 LocalDate 클래스 객체 생성
	    String SQL = "SELECT * FROM board ORDER BY b_num DESC LIMIT ?, ?"; // 각 페이지에서 게시글을 index 0번부터 5개씩 출력. 아래에 있는 query의 파라미터에 변수 값을 넣음으로써 작동
	    
	    List<Board> boardList = template.query(SQL, new Object[]{start, numPerPage}, new BoardRowMapper());
	    
		for(Board bdate: boardList) { // CallByReference(파라미터로 주소를 이용했기에 값이 그대로 반영됨)
			bdate.setCal_date(getPostDateOfBoard(bdate.getB_date(), now)); // 시간 계산 메서드를 호출하고 결과값을 Cal_date에 저장
		}
		
		this.BoardList = boardList; // 처음 게시글 페이지를 클릭할 때 DB에 한 번 접근하고 값을 모두 담아서 전역변수에 저장
		
		
	    model.addAttribute("boardList",boardList);
	}
	
	 // DB에서 받아온 날짜를 DATE만 남게 가공하는 기능
	public String getPostDateOfBoard(String b_date, LocalDate now) {
		String result = null; // 날짜 담을 변수 생성
		LocalDate targetDate = LocalDate.parse(b_date, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")); // 날짜만
		LocalDateTime targetDateAll = LocalDateTime.parse(b_date, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")); // 날짜+시간
		
		if(ChronoUnit.DAYS.between(targetDate, now) > 0) {
			result = targetDateAll.format(DateTimeFormatter.ofPattern("yyyy.MM.dd")); // 현재시간과 작성일을 계산해서 0보다 크면(다음 날이면) 날짜를 담음
		} 
		else {
	         result = targetDateAll.format(DateTimeFormatter.ofPattern("HH:mm")); // 현재시간과 작성일을 계산해서 0보다 작으면(오늘이면) 시간을 담음
	    }
		return result;
	}	
	
	@Override // 게시글 제목을 클릭해서 게시글 상세정보로 넘어갈 때 글 번호에 맞는 게시글을 불러오는 기능
	public void searchPostDetail(String num, Model model) {
		Board boardInfo = null; // 결과값을 담을 변수 생성
		int numInt = Integer.parseInt(num); // model에 있는 String b_num을 형변환
		
		for(Board board:BoardList) { 
			if(board.getB_num() == numInt) { // DAO 객체 안의 B_num과 model 안의 b_num이 일치하면 실행
				boardInfo = board;
				increaseViews(num);
				break;
			}
		}
		if (boardInfo != null) {
	        model.addAttribute("board", boardInfo);
		}
	}
	
	// 게시글 상세정보로 넘어갈 때 조회수를 1씩 증가시키는 기능
	public void increaseViews(String num) {
	    int numInt = Integer.parseInt(num);
	    for (Board board : BoardList) {
	        if (board.getB_num() == numInt) {
	            board.setB_views(board.getB_views() + 1); // 조회수를 1 증가시키고 결과값을 board에 set.
	            break;
	        }
	    }
    String SQL = "UPDATE board SET b_views = b_views + 1 WHERE b_num = ?";
    template.update(SQL, numInt);
	}
	
	@Override // 글쓰기 기능 구현
	public void addNewPost(Board board, HttpServletRequest req) {
	HttpSession session = req.getSession(true);	// 세션 사용하려고 세션 객체 생성
	String b_writer = (String)session.getAttribute("m_id"); // 세션에 저장된 m_id 값을 가져와서 형변환하고 변수에 담아서 database에 작성자로 저장.
	String SQL = "INSERT INTO board(b_title, b_content, b_writer) VALUES (?,?,?)";

	template.update(SQL, board.getB_title(), board.getB_content(), b_writer);

	}
	
}
