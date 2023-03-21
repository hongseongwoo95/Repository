package com.changwonPP.repository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.changwonPP.domain.Board;

public interface BoardRepository {
	List<Board> getAllBoardList();
	void addNewPost(Board board, HttpServletRequest req);
}
