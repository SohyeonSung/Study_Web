<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mystudy.shop.*" %>    
<jsp:useBean id="cart" class="com.mystudy.shop.Cart" scope="session" />

<%--(실습) 제품번호(pnum), 수량(count)를 전달받아 장바구니(cart) 데이터 수정 후
	장바구니 페이지로 이동 --%>
<%
	//1. 파라미터 값 확인(추출)
	String pnum = request.getParameter("pnum");
	String countStr = request.getParameter("count");
	
	int count = 0;
	try {
		count = Integer.parseInt(countStr);
	} catch (NumberFormatException e) {
		return;
	}
	
	//2. 카트(cart)에서 제품 수량 변경
	cart.editCount(pnum, count);
	

	//3. 화면전환(페이지 이동) - cartList.jsp
	response.sendRedirect("cartList.jsp?pnum="+pnum);
	
%>
