package com.changwonPP.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.changwonPP.domain.News;
import com.changwonPP.repository.NewsRepository;

@Controller
public class NewsController {
   @Autowired
   private NewsRepository newsDAO;
   
   @GetMapping("/CardnewsUpload")
   public String getNews(@ModelAttribute("News")News news) {
      return "Cardnews_Upload";
   }
   @PostMapping("/CardnewsUpload") // 카드뉴스 업로드
   public String setNews(@ModelAttribute("News")News news)throws IOException {
      MultipartFile fileImage = news.getImgfile();
      String filename = fileImage.getOriginalFilename();
      news.setNews_img(filename);
      File saveFile = new File("D:/HSW/Repository/ChangwonPP/src/main/webapp/resources/savecardnews/",filename);
      
      if (fileImage != null && !fileImage.isEmpty()) {
         try {
            fileImage.transferTo(saveFile); // 파일을 지정된 경로에 저장하는 기능
         } 
         catch (Exception e) {
            throw new IOException("이미지 업로드가 실패하였습니다", e);
         }
      }
      newsDAO.setNews(news);
      return "redirect:/Cardnews";
   }
   
   @GetMapping("/Cardnews")
   public String getCardAllNews(Model model) {
      List<News> listOfNews = newsDAO.getAllNews();
      model.addAttribute("NewsList", listOfNews);
      return "Cardnews";
   }
   @GetMapping("/Cardnews_Detail/{num}")
   public String getCardNewsDetail(@PathVariable String num, Model model) {
      newsDAO.getdetailNews(num, model);
      model.addAttribute(num, model);
      return "Cardnews_Detail";
   }
}