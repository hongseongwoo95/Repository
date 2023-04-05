package com.changwonPP.domain;

import org.springframework.stereotype.Component;

@Component
public class Criteria { // 페이지 자체를 관리하는 객체. 페이지 당 보여줄 게시글 갯수를 담당함.
	private int page; // 현재 페이지 번호
	private int perPageNum; // 페이지당 출력할 게시글 갯수
	
	public int getPageStart() { // 페이지 범위를 구하는 기능. (0~10, 10~20 .... )
		return (this.page-1)*perPageNum;
	}
	public Criteria() { //생성자에서 pageNum=1, amount=10으로 설정. 최초 게시판 접근시 1페이지는 10개 출력되게 만듬.
		this.page = 1;
		this.perPageNum = 10;
	}
	
	// 현재 페이지 번호를 구하는 getter, setter
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
		} 
		else {
			this.page = page;
		}
	}
	
	// 페이지마다 보여줄 게시글의 개수를 구하는 getter, setter
	public int getPerPageNum() {
		return perPageNum;
	}
	
	public void setPerPageNum(int perPageNum) {
		int cnt = this.perPageNum;
		
		if(perPageNum != cnt) {
			this.perPageNum = cnt;
		}
		else {
			this.perPageNum = perPageNum;
		}
	}
	
	@Override
	public String toString() {
        return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
    }
	
}
