package com.changwonPP.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.changwonPP.domain.Board;
import com.changwonPP.repository.BoardRepositoryImpl;

@Controller
public class BoardController {
	
	@Autowired // 게시글 관리에 사용할 DAO 객체 생성
	private BoardRepositoryImpl boardDAO; 

	@GetMapping("/BoardInfo")
	public String BoardInfoMethod() {
		return "Board_Info";
	}
	
	@GetMapping("/PostInfo") // 게시글 페이지에서 글쓰기 버튼을 클릭하면 글쓰기 페이지로 넘기는 mapping
	public String Post_InfoMethod(@ModelAttribute("Post") Board board, HttpServletRequest req) {
		return "Admin_Post_Info";
	}
	
	@PostMapping("/BoardEmploy")
	public String BoardEmployMethod(@ModelAttribute("Post") Board board, HttpServletRequest req) {
		boardDAO.addNewPost(board, req);
		return "Board_Employ";
	}
}
