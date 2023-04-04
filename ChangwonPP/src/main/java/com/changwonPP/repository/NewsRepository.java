package com.changwonPP.repository;

import java.util.List;

import org.springframework.ui.Model;

import com.changwonPP.domain.News;

public interface NewsRepository {
   List<News> getAllNews();
   void setNews(News news);
   void getdetailNews(String number, Model model);
   List<News> getLimitNews();
}