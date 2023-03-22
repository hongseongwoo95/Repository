package com.changwonPP.domain;

import org.springframework.web.multipart.MultipartFile;

public class Product {
   private String p_img;
   private String p_name;
   private int p_price;
   private String p_condition;
   private String p_notice;
   private String p_brand;
   private String p_content;
   private MultipartFile imageFile;

   public Product() {
   super();
   // TODO Auto-generated constructor stub
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

   public String getP_condition() {
      return p_condition;
   }

   public void setP_condition(String p_condition) {
      this.p_condition = p_condition;
   }

   public String getP_notice() {
      return p_notice;
   }

   public void setP_notice(String p_notice) {
      this.p_notice = p_notice;
   }

   public String getP_brand() {
      return p_brand;
   }

   public void setP_brand(String p_brand) {
      this.p_brand = p_brand;
   }

   public String getP_content() {
      return p_content;
   }

   public void setP_content(String p_content) {
      this.p_content = p_content;
   }

   public MultipartFile getImageFile() {
      return imageFile;
   }

   public void setImageFile(MultipartFile imageFile) {
      this.imageFile = imageFile;
   }
   
   
}