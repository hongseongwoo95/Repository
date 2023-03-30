package com.changwonPP.controller;



import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_files;
import com.changwonPP.repository.EventRepository;

@Controller
public class EventController {
   
   @Autowired // 게시글 관리에 사용할 DAO 객체 생성
   private EventRepository EventDAO;
   
   @GetMapping("/Event_Upload")
   public String getEventUpload(@ModelAttribute("Event") Event event) {
      return "Event_Upload";
   }
   
   @PostMapping("/Event_Upload") // 다중파일 DB업로드
   public String setEventUpload(@ModelAttribute("Event") Event event, HttpServletRequest request)  {
      MultipartFile[] fileImage = event.getImgfile();
      String path = "/resources/eventImg/";
      String realPath = request.getServletContext().getRealPath(path);
      File file = new File(realPath);
      for(MultipartFile image : fileImage) {
         try {
            image.transferTo(file);
         } catch (IllegalStateException e) {
            e.printStackTrace();
         } catch (IOException e) {
            e.printStackTrace();
         }
      }
       System.out.println("fileImage");
          return "Event_Page";
    }
      
   
   @GetMapping("/EventPage")
   public String EventMethod(Model model) {
      return "Event_Page";
   }
   
   
   @GetMapping("/EventInfo")
   public String BoardMethod() {
      return "Event_Info";
   }
   
}