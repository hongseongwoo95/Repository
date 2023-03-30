package com.changwonPP.controller;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.changwonPP.domain.Board;
import com.changwonPP.domain.Criteria;
import com.changwonPP.domain.Paging;
import com.changwonPP.repository.BoardRepository;

@Controller
public class BoardController {
	
	@Autowired // DAO 객체 의존성 주입
	private BoardRepository boardDAO; 
	
	@Autowired // Criteria 객체 의존성 주입
	private Criteria cri; 
	
	@Autowired // Paging 객체 의존성 주입
	private Paging paging; 

	@GetMapping("/Board") // 게시판 페이지 최초 접근시 발생하는 매핑 처리
	public String boardList(Model model) throws Exception {    
	    int boardListCnt = boardDAO.getBoardListCnt(); // 전체 게시글 갯수를 구하는 메서드를 실행하고 변수에 값 저장   
	    
	    paging.setCri(cri);
	    paging.setTotalCount(boardListCnt); // 페이징 객체에 전체 게시글 수 저장
	    boardDAO.getPerPageBorardList(1, model);

	    List<Map<String, Object>> list = boardDAO.getBoardList(cri);

	    model.addAttribute("list", list);    
	    model.addAttribute("paging", paging); 
	    return "Board";
	}
	
	@GetMapping("/Board/{num}") // 페이지 버튼을 클릭했을 때 발생하는 매핑 처리
	public String PerPageMethod(@PathVariable int num, Model model) throws Exception {	
	    int boardListCnt = boardDAO.getBoardListCnt(); // 전체 글 개수 
	    cri.setPage(num); // 현재 페이지에 num 값을 저장
	    paging.setCri(cri);
	    paging.setTotalCount(boardListCnt);   
	    
	    List<Map<String, Object>> list = boardDAO.getBoardList(cri);

	    model.addAttribute("list", list);    
	    model.addAttribute("paging", paging);
	    model.addAttribute("page", num); // view에서 현재 page와 비교해서 "이전", "다음" 버튼을 출력하려고 model에 num 값 저장
	    
	    boardDAO.getPerPageBorardList(num, model); 
	    return "Board";
	}
	
	@GetMapping("/BoardDetail/{num}") // 게시글 상세보기 기능
	public String BoardDetailMethod(@PathVariable String num, Model model) {
		
		boardDAO.searchBoardDetail(num, model);
		
		return "Board_Detail";
	}
	
	@GetMapping("/Post") // 글쓰기 클릭시 매핑
	public String PostMethod(@ModelAttribute("NewPost") Board board, HttpServletRequest req) {
		return "Board_Post";
	}
	
	@PostMapping("/Post") // 게시글 작성 기능
	public String NewPostMethod(@ModelAttribute("NewPost") Board board, HttpServletRequest req) {
		boardDAO.addNewPost(board, req);
		return "redirect:/Board";
	}
}
