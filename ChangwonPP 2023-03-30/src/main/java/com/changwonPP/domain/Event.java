package com.changwonPP.domain;

import org.springframework.web.multipart.MultipartFile;

public class Event {
   private int E_number;
   private String E_name;
   private MultipartFile[] imgfile;
   private String E_title;
   private String E_date1;
   private String E_date2;
   private String E_addr;
   private String E_agency;
   private String E_telephone;
   private String E_money;
   
   public Event() {
      super();
   }
   public int getE_number() {
      return E_number;
   }
   public void setE_number(int e_number) {
      E_number = e_number;
   }
   public String getE_name() {
      return E_name;
   }
   public void setE_name(String e_name) {
      E_name = e_name;
   }
   public MultipartFile[] getImgfile() {
      return imgfile;
   }
   public void setImgfile(MultipartFile[] imgfile) {
      this.imgfile = imgfile;
   }
   
   public String getE_title() {
      return E_title;
   }
   
   public void setE_title(String e_title) {
      E_title = e_title;
   }
   
   
   public String getE_date1() {
      return E_date1;
   }
   public void setE_date1(String e_date1) {
      E_date1 = e_date1;
   }
   public String getE_date2() {
      return E_date2;
   }
   public void setE_date2(String e_date2) {
      E_date2 = e_date2;
   }
   public String getE_addr() {
      return E_addr;
   }
   public void setE_addr(String e_addr) {
      E_addr = e_addr;
   }
   public String getE_agency() {
      return E_agency;
   }
   public void setE_agency(String e_agency) {
      E_agency = e_agency;
   }
   
   public String getE_telephone() {
      return E_telephone;
   }
   public void setE_telephone(String e_telephone) {
      E_telephone = e_telephone;
   }
   public String getE_money() {
      return E_money;
   }
   public void setE_money(String e_money) {
      E_money = e_money;
   }
   
   
   
}