<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 장바구니의 목표는 고객 전용의 ArrayList를 만드는 것. 이게 페이지를 이동하더라도 없어지지 않게 하려고 session에 저장하는 것. -->
	<%
		String id = request.getParameter("id");
		if(id==null || id.trim().equals("")) /* trim()=문자열 좌우에서 공백을 제거하는 메서드 */
		{
			response.sendRedirect("products.jsp");
			return;
		}
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); //객체 생성을 하지 않고 싱글톤으로 갖고 옴
		if(product==null)
		{
			response.sendRedirect("exceptionNoProductId.jsp");
		}
		ArrayList<Product> goodsList = dao.getAllProducts(); /* 임시 dao에 dao에 있는 목록을 담아놓는다 */
		Product goods = new Product();
		for(int i=0; i<goodsList.size(); i++)
		{
			goods = goodsList.get(i);
			if(goods.getProductId().equals(id))
			{
				break;
			}
		}
		
		ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartlist"); /* 이 list가 내가 물건을 담을 장바구니다. */
		if(list==null)
		{
			list = new ArrayList<Product>();
			session.setAttribute("cartlist",list);
		}
		int cnt = 0; /* 장바구니 안에 담길 물건의 갯수를 의미. 아래에 있는 cnt가 0일때 작동하는 제어문을 제어하기 위해 0을 준 것임. */
		Product goodsQnt = new Product();
		
		for(int i=0; i<list.size(); i++) //수량만 증가시키는 제어문
		{
			goodsQnt = list.get(i); // ArrayList에서 i번째 값을 가져와서 변수에 대입.
			if(goodsQnt.getProductId().equals(id)) /* product.jsp에서 장바구니에 담기를 클릭한 상품과 장바구니에 현재 있는 상품의 id값이 같을 시 실행  */
			{
				cnt++; /* 장바구니 안의 상품 갯수가 1 올라간다(동일 상품 추가시 갯수만 오르는 구조) */
				int orderQuantity = goodsQnt.getQuantity()+1;
				goodsQnt.setQuantity(orderQuantity);
			}
		}
		if(cnt==0) /* 장바구니 안에 상품이 없을 경우 실행 */
		{
			goods.setQuantity(1); /* 상품의 갯수값을 1로 설정(갯수 초기화) */
			list.add(goods);
		}
		response.sendRedirect("product.jsp?id="+id);
	%>
</body>
</html>