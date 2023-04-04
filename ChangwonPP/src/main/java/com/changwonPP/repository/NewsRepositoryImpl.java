package com.changwonPP.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.changwonPP.domain.News;

@Repository
public class NewsRepositoryImpl implements NewsRepository{
   private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성
   private List<News> NewsList;
   
   @Autowired
      public void setJdbctemplate(DataSource dataSource) {
         this.template = new JdbcTemplate(dataSource);
      }
   @Override
   public List<News> getAllNews() {
      String SQL = "select * from news order by news_num desc";
      List<News> listOfNews = template.query(SQL, new NewsRowMapper());
      this.NewsList = listOfNews;
      return listOfNews;
   }


   @Override
   public void getdetailNews(String number, Model model) {
      News newsInfo = null;
      int newsnumpk = Integer.parseInt(number);
      for(News news:NewsList) {
         if(news.getNews_num() == newsnumpk) {
            newsInfo = news;
            model.addAttribute("news",newsInfo);
         }
      }
      
   }
   @Override
   public void setNews(News news) {
      String SQL = "INSERT INTO news(news_num, news_img, news_name, news_content)"
            + "VALUES(?,?,?,?)";
      template.update(SQL, news.getNews_num(), news.getNews_img(), news.getNews_name(), news.getNews_content());
      
   }
   
   @Override // 메인페이지에 뉴스 6개만 출력
   public List<News> getLimitNews() {
      String SQL = "select * from news order by news_num desc limit 6";
      List<News> listOfNews = template.query(SQL, new NewsRowMapper());
      this.NewsList = listOfNews;
      return listOfNews;
   }
}