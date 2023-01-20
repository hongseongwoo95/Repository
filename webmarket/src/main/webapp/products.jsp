<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*" %>    
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		/* ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts(); */
		/* ArrayList<Product> listOfProducts = productDAO.getAllProducts(); */ 
		/* db로 연결해서 상품 목록을 받아오는 방식으로 바꾸었기 때문에 얘네들은 이제 필요가 없다. */
	%>

	<div class="container">
		<div class="row" align="center">
		<%@ include file="dbconn.jsp" %>
		<%
			/* for (int i = 0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i); -> 원래 for문으로 돌리던거 db로 바꾸면서 필요가 없어짐 */ 
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next())
			{
		%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" style="width:100%">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p><%=rs.getString("p_unitprice")%>원
				<p> <a href="./product.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
		<%
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
		%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>