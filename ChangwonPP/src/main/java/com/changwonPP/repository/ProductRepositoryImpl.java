package com.changwonPP.repository;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.changwonPP.domain.Product;

@Repository
public class ProductRepositoryImpl implements ProductRepository{
   private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성
   @Autowired
   public void setJdbctemplate(DataSource dataSource) {
      this.template = new JdbcTemplate(dataSource);
   }
   private List<Product> listOfProduct = new ArrayList<Product>();
   
   @Override // 모든 제품 정보를 가져오는 기능
   public List<Product> getAllProductList() {
      return listOfProduct;
   }

   @Override // DB에 데이터를 삽입할 때 씀
   public void setNewProduct(Product product) {
      System.out.println("들어옵니다");
      String SQL =  "Insert INTO product(p_name, p_price, p_condition, p_notice, p_brand, p_content)"+
              " VALUES (?,?,?,?,?,?)";
      template.update(SQL, product.getP_name(),product.getP_price(),product.getP_condition(),product.getP_notice(),product.getP_brand(),product.getP_content());
      
   }

}