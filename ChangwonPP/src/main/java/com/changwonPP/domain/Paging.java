package com.changwonPP.domain;

import org.springframework.stereotype.Component;

@Component
public class Paging { // 게시판 페이지 버튼의 페이징 기능을 담당.

	private int totalCount; // 전체 게시글 개수
    private int displayPageNum = 10; // 게시판 화면에서 한번에 보여질 페이지 번호의 개수
    private int startPage; // 화면의 시작 번호
    private int endPage;  // 화면의 끝 번호
    private boolean prev; // 페이징 이전 버튼 활성화 여부
    private boolean next; // 페이징 다음 버튼 활성화 여부
	private int prevNum; //이전글의 글번호
	private int nextNum; //다음글의 글번호
    private Criteria cri;
    
    public int getTotalCount() {
    	return totalCount;
    }
    public void setTotalCount(int totalCount) {
    	this.totalCount = totalCount;
    	
    	pagingData();
    }
    private void pagingData() {
    	endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum); 
    	// endPage = (현재 페이지 번호 / 화면에 보일 페이지 번호 갯수) * 화면에 보일 페이지 번호 갯수
    	startPage = (endPage - displayPageNum) + 1;
    	// startPage = (끝 페이지 번호 - 화면에 보일 페이지 번호 갯수) + 1
    	
    	int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));    
    	if(endPage > tempEndPage) {
            endPage = tempEndPage;
        }
    	// 마지막 페이지 번호 = 총 게시글 수 / 페이지마다 보일 게시글 갯수
    	
    	prev = startPage == 1 ? false : true; 
    	// "이전" 버튼은 화면에 시작 페이지 번호 1이 존재하면 생성하지 않음.
    	next = endPage * cri.getPerPageNum() >= totalCount ? false : true; 
    	// "다음" 버튼은 끝 페이지 번호*페이지마다 보일 게시글 갯수가 총 게시글 수보다 크거나 같으면 생성하지 않음.
    }
    
    public int getDisplayPageNum() {
        return displayPageNum;
    }
 
    public void setDisplayPageNum(int displayPageNum) {
        this.displayPageNum = displayPageNum;
    }
 
    public int getStartPage() {
        return startPage;
    }
 
    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }
 
    public int getEndPage() {
        return endPage;
    }
 
    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }
 
    public boolean isPrev() {
        return prev;
    }
 
    public void setPrev(boolean prev) {
        this.prev = prev;
    }
 
    public boolean isNext() {
        return next;
    }
 
    public void setNext(boolean next) {
        this.next = next;
    }
 
    public Criteria getCri() {
        return cri;
    }
 
    public void setCri(Criteria cri) {
        this.cri = cri;
    }
    
    @Override
    public String toString() {
    	return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
                + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
    }
	public int getPrevNum() {
		return prevNum;
	}
	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}
	public int getNextNum() {
		return nextNum;
	}
	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
	
}
