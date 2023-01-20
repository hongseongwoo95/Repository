<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>   
<%@ include file="dbconn.jsp" %>
<%
	String filename="";
	String realFolder = request.getServletContext().getRealPath("/resources/images");
	String encType="utf-8";
	int maxSize=5*1024*1024;
	
	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
	String productid = multi.getParameter("productid");
	String name = multi.getParameter("name");
	String unitprice = multi.getParameter("unitprice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsinstock = multi.getParameter("unitsinstock");
	String condition = multi.getParameter("condition");
	
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
	
	System.out.println(unitsinstock);
	if(unitsinstock.isEmpty())
	{
		stock = 0;
	}
	else
	{
		stock = Long.valueOf(unitsinstock);
	}
	
	Enumeration<?> files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from product where p_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,productid);
	rs = pstmt.executeQuery();
	
	if(rs.next())
	{
		if(fileName != null)
		{
			sql = "UPDATE product SET p_name=?, p_unitprice=?, p_description=?, p_manufacturer=?,p_category=?, p_unitsinstock=?, p_condition=?, p_filename=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setInt(2,price);
			pstmt.setString(3,description);
			pstmt.setString(4,manufacturer);
			pstmt.setString(5,category);
			pstmt.setLong(6,stock);
			pstmt.setString(7,condition);
			pstmt.setString(8,fileName);
			pstmt.setString(9,productid);
			pstmt.executeUpdate();
		}
		else
		{
			sql = "UPDATE product SET p_name=?, p_unitprice=?, p_description=?, p_manufacturer=?,p_category=?, p_unitsinstock=?, p_condition=? WHERE p_id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setInt(2,price);
			pstmt.setString(3,description);
			pstmt.setString(4,manufacturer);
			pstmt.setString(5,category);
			pstmt.setLong(6,stock);
			pstmt.setString(7,condition);
			pstmt.setString(8,productid);
			pstmt.executeUpdate();
		}
	}

	if(rs != null)
	{
	rs.close();
	}
	if(pstmt != null)
	{
	pstmt.close();
	}
	if(conn != null)
	{
	conn.close();
	}
	response.sendRedirect("editProduct.jsp?edit=update");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>