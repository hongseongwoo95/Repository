package com.changwonPP.domain;

import org.springframework.web.multipart.MultipartFile;

public class Event {
   private int e_number;
   private String e_name;
   private MultipartFile[] imgfile;
   private String e_title;
   private String e_date1;
   private String e_date2;
   private String e_addr;
   private String e_agency;
   private String e_telephone;
   private String e_money;
   private Double e_mapX;
   private Double e_mapY;

   public Event() {
      super();
   }

   public int getE_number() {
      return e_number;
   }

   public void setE_number(int e_number) {
      this.e_number = e_number;
   }

   public String getE_name() {
      return e_name;
   }

   public void setE_name(String e_name) {
      this.e_name = e_name;
   }

   public MultipartFile[] getImgfile() {
      return imgfile;
   }

   public void setImgfile(MultipartFile[] imgfile) {
      this.imgfile = imgfile;
   }

   public String getE_title() {
      return e_title;
   }

   public void setE_title(String e_title) {
      this.e_title = e_title;
   }

   public String getE_date1() {
      return e_date1;
   }

   public void setE_date1(String e_date1) {
      this.e_date1 = e_date1;
   }

   public String getE_date2() {
      return e_date2;
   }

   public void setE_date2(String e_date2) {
      this.e_date2 = e_date2;
   }

   public String getE_addr() {
      return e_addr;
   }

   public void setE_addr(String e_addr) {
      this.e_addr = e_addr;
   }

   public String getE_agency() {
      return e_agency;
   }

   public void setE_agency(String e_agency) {
      this.e_agency = e_agency;
   }

   public String getE_telephone() {
      return e_telephone;
   }

   public void setE_telephone(String e_telephone) {
      this.e_telephone = e_telephone;
   }

   public String getE_money() {
      return e_money;
   }

   public void setE_money(String e_money) {
      this.e_money = e_money;
   }

public Double getE_mapX() {
	return e_mapX;
}

public void setE_mapX(Double e_mapX) {
	this.e_mapX = e_mapX;
}

public Double getE_mapY() {
	return e_mapY;
}

public void setE_mapY(Double e_mapY) {
	this.e_mapY = e_mapY;
}
   
   
}