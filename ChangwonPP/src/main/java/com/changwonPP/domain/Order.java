package com.changwonPP.domain;

public class Order {
	private int o_number;
	private int p_number;
	private String p_img;
	private String p_name;
	private int p_price;
	private String m_name;
	private String m_phone;
	private String m_addr;
	
	public int getO_number() {
		return o_number;
	}
	public void setO_number(int o_number) {
		this.o_number = o_number;
	}
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

}


// 주소 어떻게 처리할지 고민해야함. (장바구니에는 주소가 있는데 회원가입할떄 주소를 안받았음.)
// 이걸 해결하려면 회원가입에 주소 API를 써서 주소만 받아서 db에 추가하는게 필요할거같음.