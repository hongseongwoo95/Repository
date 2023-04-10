package com.changwonPP.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.News;

public class NewsRowMapper implements RowMapper<News>{
   @Override
   public News mapRow(ResultSet rs, int rowNum) throws SQLException {
      News news = new News();
      news.setNews_num(rs.getInt("news_num"));
      news.setNews_img(rs.getString("news_img"));
      news.setNews_name(rs.getString("news_name"));
      news.setNews_content(rs.getString("news_content"));
      return news;
   }

}