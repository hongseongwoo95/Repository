package com.changwonPP.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.changwonPP.domain.Board;
import com.changwonPP.repository.BoardRepositoryImpl;

@Controller
public class BoardController {
	
	@Autowired // 게시글 관리에 사용할 DAO 객체 생성
	private BoardRepositoryImpl boardDAO; 

	@GetMapping("/Board") // 게시판 클릭시 매핑
	public String BoardMethod(Model model) {
	    boardDAO.getPerPageBorardList(1, model);
	    return "redirect:/Board/1";
	}
	
	@GetMapping("/Board/{num}") // 각 게시판 갯수 제한하는 기능
	public String PerPageMethod(@PathVariable int num, Model model) {
		boardDAO.getPerPageBorardList(num, model);
		return "Board";
	}
	@GetMapping("/BoardDetail/{num}") // 게시글 상세보기 기능. a태그에서 el로 보낸 값이 여기로 들어옴.
	public String BoardDetailMethod(@PathVariable String num, Model model) {
		boardDAO.searchPostDetail(num, model);
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
