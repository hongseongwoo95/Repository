package com.changwonPP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.changwonPP.domain.Product;


@Controller
public class MarketController {
   
   @GetMapping("/Market_Upload")
   public String MarketUpload(@ModelAttribute("Product") Product product) {
      return "Market_Upload";
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