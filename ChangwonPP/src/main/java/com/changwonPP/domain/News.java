package com.changwonPP.domain;

import org.springframework.web.multipart.MultipartFile;

public class News {
   private int news_num;
   private MultipartFile imgfile;
   private String news_img;
   private String news_name;
   private String news_content;
   
   public News() {
      super();
   }

   public int getNews_num() {
      return news_num;
   }

   public void setNews_num(int news_num) {
      this.news_num = news_num;
   }

   public MultipartFile getImgfile() {
      return imgfile;
   }

   public void setImgfile(MultipartFile imgfile) {
      this.imgfile = imgfile;
   }

   public String getNews_img() {
      return news_img;
   }

   public void setNews_img(String news_img) {
      this.news_img = news_img;
   }

   public String getNews_name() {
      return news_name;
   }

   public void setNews_name(String news_name) {
      this.news_name = news_name;
   }

   public String getNews_content() {
      return news_content;
   }

   public void setNews_content(String news_content) {
      this.news_content = news_content;
   }

   
   
   
}