package com.changwonPP.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.changwonPP.domain.Product;

@Repository
public class ProductRepositoryImpl implements ProductRepository{
   private JdbcTemplate template; // DB와 연동하려고 JdbcTemplate 객체 생성
   private List<Product> ProductList;
   
   @Autowired
   public void setJdbctemplate(DataSource dataSource) {
      this.template = new JdbcTemplate(dataSource);
   }
   private List<Product> listOfProduct = new ArrayList<Product>();
   
   @Override // 모든 제품 정보를 가져오는 기능
   public List<Product> getAllProductList() {
	  String SQL = "select * from product order by p_number desc"; // primary key기준으로 최신순으로 정렬
	  List<Product> listOfProduct = template.query(SQL, new ProductRowMapper());
	  this.ProductList = listOfProduct; // 처음 게시글 페이지를 클릭할 때 DB에 한 번 접근하고 값을 모두 담아서 전역변수에 저장
      return listOfProduct;
   }
   
   
   public void clickProduct(String number, Model model) { //플리마켓 상품 클릭시 상세페이지 불러오는 기능
	   Product prodInfo = null; // 결과값을 담을 변수 생성
	   int numpk = Integer.parseInt(number); // model에 있는 String P_number int 형변환
	   for(Product product:ProductList) {
		   if(product.getP_number() == numpk) { // DAO 객체 안의 P_num과 model 안의 number이 일치하면 실행
			   prodInfo = product;
			   model.addAttribute("product", prodInfo);
		   }
	   }
   }

   @Override // DB에 데이터를 삽입할 때 씀
   public void setNewProduct(Product product) {
      String SQL =  "Insert INTO product(p_number,p_img, p_name, p_price, p_condition, p_notice, p_brand,p_content)"+
              " VALUES (?,?,?,?,?,?,?,?)";
      template.update(SQL,product.getP_number(), product.getP_img(), product.getP_name(),product.getP_price(),product.getP_condition(),
    		  product.getP_notice(),product.getP_brand(),product.getP_content());   
   }


	@Override
	public Map<String, Object> getMemberInfo(String memberId) {
		String sql = "SELECT m_name, m_phone, m_addr FROM member WHERE m_id=?";
        
        return template.queryForMap(sql, memberId);
		
	}
   
   
   
}