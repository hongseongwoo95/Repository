package com.changwonPP.repository;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.changwonPP.domain.Board;

public interface BoardRepository {
	void addNewPost(Board board, HttpServletRequest req);
	void searchPostDetail(String  num, Model model);
	void getPerPageBorardList(int page, Model model);
}
