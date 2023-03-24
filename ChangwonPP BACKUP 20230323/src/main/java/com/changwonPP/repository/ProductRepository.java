package com.changwonPP.repository;

import java.util.List;

import com.changwonPP.domain.Product;


public interface ProductRepository {
   List<Product> getAllProductList();
   void setNewProduct(Product product);
}