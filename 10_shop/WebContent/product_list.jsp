<%@page import="com.mystudy.shop.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 전달받은 제품 분류 목록(category) 값에 해당하는 제품 정보를 DB에서 조회 --%>
<%-- 화면에 목록 형태(테이블)로 표시 --%>


<%
	//전달받은 파라미터 값 추출(확인)
	String category = request.getParameter("category");
	
	ProductDAO dao = new ProductDAO();
	List<ProductVO> list = dao.list(category);
	System.out.println("> list : " + list);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 목록</title>
<link rel="stylesheet" href="css/menu.css">
<style>
	table {
		width: 900px;
		margin: 30px auto 0;
		border: 1px solid navy;
		border-collapse: collapse;
	}
	th, td { border: 1px solid navy;  padding: 4px; }
	th { background-color: orange; }
	
	.red{color: red;}
</style>
</head>
<body>
	<%@ include file="common/menu.jspf"%>
	<table>
		<thead>
			<tr>
				<th width = "15%">제품 번호</th>
				<th width = "10%">이미지</th>
				<th width = "20%">제품명</th>
				<th width = "20%">판매 가격</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>vC-14(예시)</td>
				<td>이미지 표시</td>
				<td>제품명</td>
				<td>할인가:4750원<br> <span class="red"> (할인율:48%) </span>
				</td>
				<td>원가</td>
			</tr>
		</tbody>
	</table>

</body>
</html>