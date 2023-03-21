package com.changwonPP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.changwonPP.domain.Product;
import com.changwonPP.repository.ProductRepositoryImpl;


@Controller
public class MarketController {
   @Autowired // 제품 DAO 객체 생성
   private ProductRepositoryImpl productDAO;
   
   @GetMapping("/MarketUpload")
   public String MarketUpload(@ModelAttribute("Product") Product product) {
      return "Market_Upload";
   }
   @PostMapping("/MarketProduct")
   public String setNewProduct(@ModelAttribute("Product") Product product) {
	   System.out.println(product.getP_name());
      productDAO.setNewProduct(product);
      return "redirect:/MarketProduct";
   }
   
   @GetMapping("/Info_Pointplace")
   public String InfoPointplace() {
      return "Info_Pointplace";
   }
   @GetMapping("/Market_Shipping")
   public String MarketShipping() {
      return "Market_Shipping";
   }
   @GetMapping("/Market_Product")
   public String MarketProduct() {
      return "Market_Product";
   }
}