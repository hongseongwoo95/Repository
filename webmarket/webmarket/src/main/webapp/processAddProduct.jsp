<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>    
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>   
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");	
		
		String filename = "";
		String realFolder = request.getServletContext().getRealPath("/resources/images");
		int maxSize = 5*1024*1024;
		String encType = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		String productid = multi.getParameter("productid");
		String name = multi.getParameter("name");
		String unitprice = multi.getParameter("unitprice");
		String description = multi.getParameter("description");
		String manufacturer = multi.getParameter("manufacturer");
		String category = multi.getParameter("category");
		String unitsinstock = multi.getParameter("unitsinstock");
		String condition = multi.getParameter("condition");
		System.out.println(condition);
		Integer price;
		
		if(unitprice.isEmpty())
		{
			price = 0;
		}
		else
		{
			price = Integer.valueOf(unitprice);
		}
		
		long stock;
		
		if(unitsinstock.isEmpty())
		{
			stock = 0;
		}
		else
		{
			stock = Long.valueOf(unitsinstock);
		}
		
		Enumeration files = multi.getFileNames();
		String fname = (String)files.nextElement();
		String fileName = multi.getFilesystemName(fname);
		System.out.println(fileName);
		PreparedStatement pstmt = null;
		
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productid);
		pstmt.setString(2,name);
		pstmt.setInt(3,price);
		pstmt.setString(4,description);
		pstmt.setString(5,category);
		pstmt.setString(6,manufacturer);
		pstmt.setLong(7,stock);
		pstmt.setString(8,condition);
		pstmt.setString(9,fileName);
		pstmt.executeUpdate();
		
		if(pstmt !=null)
		{
			pstmt.close();
		}
		if(conn !=null)
		{
			conn.close();
		}
		
/* 		ProductRepository dao = ProductRepository.getInstance();
		
		Product newProduct = new Product();
		newProduct.setProductId(productid);
		newProduct.setPname(name);
		newProduct.setUnitPrice(price);
		newProduct.setDescription(description);
		newProduct.setManufacturer(manufacturer);
		newProduct.setCategory(category);
		newProduct.setUnitsInStock(stock);
		newProduct.setCondition(condition);
		newProduct.setFilename(fileName);
		
		dao.addProduct(newProduct); */
		
		response.sendRedirect("products.jsp");
	%>
</body>
</html>