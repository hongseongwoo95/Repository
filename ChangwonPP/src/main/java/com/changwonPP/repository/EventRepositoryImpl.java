package com.changwonPP.repository;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.sql.DataSource;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_Multiple;

@Transactional
@Repository
public class EventRepositoryImpl implements EventRepository {
   private JdbcTemplate template;
   private List<Event> EventList;

   @Autowired
   public void setJdbctemplate(DataSource dataSource) {
      this.template = new JdbcTemplate(dataSource);
   }

   private List<Event> listOfEvent = new ArrayList<Event>();

   @Override //모든 이벤트 가져오는 기능
   public List<Event> getAllEvent() {
      String SQL =  " SELECT event.*, Event_Multiple.file_name FROM event \r\n"
      		+ " JOIN (\r\n"
      		+ "    SELECT e_number, MAX(file_name) AS file_name\r\n"
      		+ "    FROM event_Multiple\r\n"
      		+ "    GROUP BY e_number\r\n"
      		+ ") Event_Multiple\r\n"
      		+ "ON event.e_number = Event_Multiple.e_number\r\n"
      		+ "ORDER BY event.e_number DESC;";
      List<Event> listOfEvent = template.query(SQL,new EventRowMapper());
      this.EventList = listOfEvent;
      return listOfEvent;
   }

   
   @Override // 행사 업로드 기능
   public void setNewEvent(Event event, Event_Multiple event_multiple) throws IOException {

      String SQL = "INSERT INTO event (e_name, e_title, e_date1, e_date2, e_addr, e_agency, e_telephone, e_money, e_mapX, e_mapY) "
            + "VALUES(?,?,?,?,?,?,?,?,?,?)";
      template.update(SQL, event.getE_name(), event.getE_title(), event.getE_date1(), event.getE_date2(),
            event.getE_addr(), event.getE_agency(), event.getE_telephone(), event.getE_money(), event.getE_mapX(), event.getE_mapY());

      // 추가된 이벤트의 번호를 구합니다.
      String selectSQL = "SELECT LAST_INSERT_ID()";
      int e_number = template.queryForObject(selectSQL, Integer.class);
      System.out.println(e_number);

      // 멀티파일DTO
      String SQL1 = "INSERT INTO event_Multiple(e_number, File_name)" +"VALUES(?,?)"; 
      
       
       // 다중 이미지 업로드
      MultipartFile[] files = event.getImgfile();
       List<String> savedFileNames = new ArrayList<>();

       int i = 0;
       for (MultipartFile file : files) {
           String originalFilename = file.getOriginalFilename();
           String extension = FilenameUtils.getExtension(originalFilename);
           String savedFileName = UUID.randomUUID() + "." + extension;
           String savePath = "D:/HSW/Repository/ChangwonPP/src/main/webapp/resources/saveevent/" + e_number+"_"+i+".png"; // 저장 경로 설정
           File dest = new File(savePath);
          template.update(SQL1, e_number, originalFilename);
           file.transferTo(dest);

           savedFileNames.add(savedFileName);
           i++;
       }
       
   }
   
   @Override // 이벤트 상세 페이지
   public void clickEvent(String number, Model model) {
      Event eventInfo = null;
      int numpk = Integer.parseInt(number);
      for(Event event:EventList) {
         if(event.getE_number() == numpk) {
            eventInfo = event;
            model.addAttribute("event",eventInfo);
         }
      }
   }
   
   @Override // 메인 페이지에 이벤트 갯수 6개만 출력
   public List<Event> getLimitEvent() {
      String SQL = " SELECT event.*, Event_Multiple.file_name FROM event \r\n"
            + " JOIN (\r\n"
            + "    SELECT e_number, MAX(file_name) AS file_name\r\n"
            + "    FROM event_Multiple\r\n"
            + "    GROUP BY e_number\r\n"
            + ") Event_Multiple\r\n"
            + "ON event.e_number = event_Multiple.e_number\r\n"
            + "ORDER BY event.e_number DESC limit 6;";
      List<Event> listOfEvent = template.query(SQL,new EventRowMapper());
    this.EventList = listOfEvent;
      return listOfEvent;
   }



}