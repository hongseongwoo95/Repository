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
import org.springframework.web.multipart.MultipartFile;

import com.changwonPP.domain.Event;
import com.changwonPP.domain.Event_files;

@Repository
public class EventRepositoryImpl implements EventRepository{
	private JdbcTemplate template;
	private List<Event> EventList;
	private List<Event_files> Event_filesList;
	@Autowired
	   public void setJdbctemplate(DataSource dataSource) {
	      this.template = new JdbcTemplate(dataSource);
	   }
	private List<Event> listOfEvent = new ArrayList<Event>();
	
	@Override
	public List<Event> getAllEvent() {
		String SQL = "select * from Event order by E_number desc";
		
		return listOfEvent;
	}
	
	@Override
	public void setNewEvent(Event event, Event_files event_files) throws IOException {
		String SQL = "INSERT INTO Event (E_name, E_title, E_date1, E_date2, E_addr, E_agency, E_telephone, E_money) "+
					"VALUES(?,?,?,?,?,?,?,?)";
		template.update(SQL, event.getE_name(), event.getE_title(), event.getE_date1(), event.getE_date2(), event.getE_addr(), 
				event.getE_agency(), event.getE_telephone(), event.getE_money());
		// 추가된 이벤트의 번호를 구합니다.
		String selectSQL = "SELECT LAST_INSERT_ID()";
		int e_number = template.queryForObject(selectSQL, Integer.class);
		//멀티파일
		String SQL1 = "INSERT INTO Event_files(Id, E_number, File_name)" + "VALUES(?,?,?)";
		template.update(SQL1, event_files.getId(),event_files.getE_number(),event_files.getFile_name());
		
		// 파일을 저장하고 저장된 파일명을 리스트에 추가합니다.
		List<String> e_imgList = new ArrayList<String>();
		MultipartFile[] imgList=event.getImgfile();
		for (MultipartFile file :imgList ) {
			String filename = file.getOriginalFilename();
			String extension = FilenameUtils.getExtension(filename);
			String savedName = UUID.randomUUID().toString() + "." + extension;
			File saveFile = new File("D:/PSI/PSI_JSP/ChangwonPP.HSW (2)/src/main/webapp/resources/eventImg", savedName);
			try {
				file.transferTo(saveFile);
			} catch (Exception e) {
				throw new IOException("이미지 업로드가 실패하였습니다", e);
			}
			e_imgList.add(savedName);
		}
		
		// 이벤트와 파일명 리스트를 저장합니다.
		String insertImgSQL = "INSERT INTO Event_Image (E_number, E_img) VALUES (?,?)";
		for (String e_img : e_imgList) {
			template.update(insertImgSQL, e_number, e_img);
		}
	}
	
	
}
