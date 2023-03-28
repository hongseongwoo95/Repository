package com.changwonPP.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.changwonPP.domain.Product;

public class ProductRowMapper implements RowMapper<Product>{ // DB를 조회해서 담아오는
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException{
		Product product = new Product();
		product.setP_number(rs.getInt("P_number"));
		product.setP_img(rs.getString("P_img"));
		product.setP_name(rs.getString("P_name"));
		product.setP_price(rs.getInt("P_price"));
		product.setP_condition(rs.getString("P_condition"));
		product.setP_notice(rs.getString("P_notice"));
		product.setP_brand(rs.getString("P_brand"));
		product.setP_content(rs.getString("P_content"));
		System.out.println("MapperOK");
		return product;
	}
}
