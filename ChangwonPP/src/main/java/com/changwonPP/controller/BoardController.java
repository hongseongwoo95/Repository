package com.changwonPP.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.changwonPP.domain.Board;
import com.changwonPP.repository.BoardRepositoryImpl;

@Controller
public class BoardController {
	
	@Autowired // 게시글 관리에 사용할 DAO 객체 생성
	private BoardRepositoryImpl boardDAO; 

	@GetMapping("/Board")
	public String BoardMethod(Model model) {
	    List<Board> listOfBoards = boardDAO.getAllBoardList(); // boardDAO에 있는 메서드로 모든 게시글 목록을 가져와서 변수에 담음
	    model.addAttribute("boardList", listOfBoards); // 변수에 담긴 값의 키를 boardList로 지정하고 model에 담는다.
	    return "Board";
	}
	
	@GetMapping("/Post") // 게시글 페이지에서 글쓰기 버튼을 클릭하면 글쓰기 페이지로 넘기는 mapping
	public String PostMethod(@ModelAttribute("NewPost") Board board, HttpServletRequest req) {
		return "Board_Post";
	}
	
	@PostMapping("/Post")
	public String NewPostMethod(@ModelAttribute("NewPost") Board board, HttpServletRequest req) {
		boardDAO.addNewPost(board, req);
		return "redirect:/Board";
	}
}
