package com.changwonPP.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import com.changwonPP.domain.Product;
import com.changwonPP.repository.ProductRepositoryImpl;

@Controller
public class MarketController {

	@Autowired // 제품 DAO 객체 생성
	private ProductRepositoryImpl productDAO;

	@GetMapping("/MarketUpload")
	public String getNewProduct(@ModelAttribute("Product") Product product) {
		return "Market_Upload";
	}

	@PostMapping("/MarketUpload") // 제품 데이터베이스 등록 기능
	public String setNewProduct(@ModelAttribute("Product") Product product) throws IOException {
		MultipartFile fileImage = product.getImgfile(); // DTO에 있는 멀티파트파일타입 변수를 받아오는 기능
		String filename = fileImage.getOriginalFilename(); // 등록하는 파일이름을 문자열로 받아와서 변수에 담은것
		product.setP_img(filename); // product 객체에 있는 P_img에  filename 값을 저장
		File saveFile = new File("D:/HSW//Repository/ChangwonPP/src/main/webapp/resources/savelmg", filename); // 저장할 파일의 경로랑 이름을 지정하는 부분
		if (fileImage != null && !fileImage.isEmpty()) {
			try {
				fileImage.transferTo(saveFile); // 파일을 지정된 경로에 저장하는 기능
			} 
			catch (Exception e) {
				throw new IOException("이미지 업로드가 실패하였습니다", e);
			}
		}
		productDAO.setNewProduct(product); // ProductRepositoryImpl에 있는 메서드 호출
		return "redirect:/";
	}

	@GetMapping("/InfoPointplace")
	public String InfoPointplace() {
		return "Info_Pointplace";
	}

	@GetMapping("/MarketShipping")
	public String MarketShipping() {
		return "Market_Shipping";
	}

	@GetMapping("/MarketProduct")
	public String MarketProduct() {
		return "Market_Product";
	}
}