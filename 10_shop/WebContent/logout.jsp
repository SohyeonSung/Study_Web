<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 세션 무효화(초기화) 후 시작페이지(shop.jsp)로 이동 --%>



<%
	// 1. 세션 무효화(초기화)
	session.invalidate();

	// 2. 시작페이지로 이동	
	response.sendRedirect("shop.jsp");

%>