<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach varStatus</title>
</head>
<body>
<%
	List<String> list = new ArrayList<>();
	list.add("홍길동1");
	list.add("홍길동2");
	list.add("홍길동3");
	list.add("홍길동4");
	list.add("홍길동5");
	System.out.println("> list : " + list);
	System.out.println("> list.size() : " + list.size());
	
	pageContext.setAttribute("alist", list);
%>
	<h2>forEach List 데이터 출력</h2>
	<c:forEach var="listData" items="${alist }">
		${listData } &nbsp;
	</c:forEach>
	<hr>
	
	<h2>forEach varStatus</h2>
	<ol>
	<c:forEach var="listData" items="${alist }" varStatus="status">
		<li>var값 : ${listData }<br>
			status.current : ${status.current }<br><%--현재 처리중 데이터 --%>
			status.count : ${status.count }<br><%--처리되는 데이터 건수 --%>
			status.index : ${status.index }<br><%--인덱스번호 --%>
			status.first : ${status.first }<br><%--처리중 데이터 첫번째 여부 --%>
			status.last : ${status.last }<br><%--처리중 데이터 마지막 여부 --%>
			
			status.begin : ${status.begin }<br><%--begin 속성값 --%>
			status.end : ${status.end }<br>    <%--end 속성값 --%>
			status.step : ${status.step }<br>  <%--step 속성값 --%>
			
			status : ${status }
		</li>
	</c:forEach>
	</ol>
	<hr>
	
	<ul>
	<c:forEach var="listData" items="${alist }" varStatus="status"
		begin="2" end="${alist.size() - 1 }" step="1">
		<li>var값 : ${listData }<br>
			status.current : ${status.current }<br><%--현재 처리중 데이터 --%>
			status.count : ${status.count }<br><%--처리되는 데이터 건수 --%>
			status.index : ${status.index }<br><%--인덱스번호 --%>
			status.first : ${status.first }<br><%--처리중 데이터 첫번째 여부 --%>
			status.last : ${status.last }<br><%--처리중 데이터 마지막 여부 --%>
			
			status.begin : ${status.begin }<br><%--begin 속성값 --%>
			status.end : ${status.end }<br>    <%--end 속성값 --%>
			status.step : ${status.step }<br>  <%--step 속성값 --%>
			
			status : ${status }
		</li>
	</c:forEach>
	</ul>
	
</body>
</html>









