<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL02_redirect.jsp</title>
</head>
<body>
param : ${param }

	<h1>[ JSTL02_redirect.jsp ]</h1>
	<p>페이지 전환 : redirect - 파라미터 값 전달</p>
	<h2>ID : ${param.id }</h2>
	
	<% 
	//재요청 처리 
	//response.sendRedirect("JSTL02_resp.jsp");
	%>
	<c:redirect url="JSTL02_resp.jsp">
		<c:param name="id">${param.id }</c:param>
		<c:param name="name">홍길동</c:param>
		<c:param name="age" value="27"/>
		<c:param name="address">서울시 강남구</c:param>
	</c:redirect>
	
	
	
</body>
</html>








