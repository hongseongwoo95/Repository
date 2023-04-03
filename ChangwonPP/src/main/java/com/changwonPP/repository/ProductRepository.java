package com.changwonPP.repository;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.changwonPP.domain.Product;

public interface ProductRepository {
   List<Product> getAllProductList();
   void setNewProduct(Product product);
   void clickProduct(String number, Model model);
   Map<String, Object> getMemberInfo(String memberId);
}

