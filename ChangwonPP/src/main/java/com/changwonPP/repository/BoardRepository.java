package com.changwonPP.repository;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.changwonPP.domain.Board;
import com.changwonPP.domain.Criteria;

public interface BoardRepository {
	void addNewPost(Board board, HttpServletRequest req);
	void searchPostDetail(String  num, Model model);
	void getPerPageBorardList(int page, Model model);
	int getBoardListCnt() throws Exception;
	List<Map<String, Object>> getBoardList(Criteria cri) throws Exception;
}
