<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 장바구니(cart)에 있는 제품목록을 화면에 표시 --%>
	<jsp:useBean id="cart" class="com.mystudy.shop.Cart" scope="session" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니(cart)보기</title>
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/table.css">
</head>
<body>
<%@ include file="common/menu.jspf" %>
	
	<table>
		<thead>
			<tr>
				<td colspan="6"> :: 장바구니 내용 </td>
			</tr>
			<tr>
				<th>제품 번호</th>
				<th>제품명</th>
				<th>판매가</th>
				<th>수량</th>
				<th>금액</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="pvo" items="${cart.list }">
			<tr>
				<td>${pvo.pnum }</td>
				<td>${pvo.name }</td>
				<td>정가 : ${pvo.price }원 <span class = "red"> 세일가격 : ${pvo.saleprice }원 </span></td>
				<td>
					<form action="editCount" method="post"> 
						<input type="number" name="count" value="${pvo.count }" min="1">
						<input type="submit" value="수정">
						<input type="hidden" name="pnum" value="${pvo.pnum }">
					</form>
				</td>
				<td>${pvo.totalPrice } 원</td>
				<td>
					<input type="button" value="삭제" onclick='delProduct("${pvo.pnum }")'>
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="6">총결제금액 : ${cart.total }원</td>
			</tr>
		</tfoot>
	</table>

<script>
	function delProduct(pnum) {
		//alert("pnum : " + pnum);
		location.href = "delProduct.jsp?pnum=" + pnum;
	}
</script>

</body>
</html>


