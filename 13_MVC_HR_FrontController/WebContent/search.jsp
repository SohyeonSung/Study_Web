<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적검색화면</title>
</head>
<body>
	<h1>동적검색화면[ search.jsp ]</h1>
	<form action="controller" method="get">
		<select name="idx">
			<option value="0">사번</option>
			<option value="1">이름</option>
			<option value="2">직종</option>
			<option value="3">부서</option>
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="동적 검색">
		
		<input type="hidden" name="command" value="search">
	</form>
	
</body>
</html>




