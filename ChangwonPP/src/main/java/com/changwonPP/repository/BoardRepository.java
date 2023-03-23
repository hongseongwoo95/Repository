package com.changwonPP.repository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.changwonPP.domain.Board;

public interface BoardRepository {
	List<Board> getAllBoardList();
	void addNewPost(Board board, HttpServletRequest req);
	void searchPostDetail(String  num, Model model);
}
