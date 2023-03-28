package com.changwonPP.domain;

public class Board {
	private int b_num;
	private String b_title;
	private String b_content;
	private String b_writer;
	private String b_date; // 실제 게시글 작성일. 게시글 상세보기에서 볼 수 있음.
	private String cal_date; // 게시판에 표시되는 날짜에 따라 변화하는 게시글 작성일을 구현하기 위해 만든 변수. db에는 저장되지 않음.
	private int b_views;

	
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public int getB_views() {
		return b_views;
	}
	public void setB_views(int b_views) {
		this.b_views = b_views;
	}
	public String getCal_date() {
		return cal_date;
	}
	public void setCal_date(String cal_date) {
		this.cal_date = cal_date;
	}
}
