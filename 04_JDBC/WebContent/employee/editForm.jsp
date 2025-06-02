<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 데이터를 이용해서 DB에서 데이터 조회하고 화면에 표시 --%>
<%
	//1. 파라미터 값 확인(sabun)
	
	//2. DB 데이터 조회(SELECT)
	
	//3. 데이터 화면 출력(HTML 태그에 작성)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정화면</title>
</head>
<body>
	<h1>수정화면[ editForm.jsp ]</h1>
	<form action="update.jsp" method="get">
		<table>
			<tr>
				<th>사번</th>
				<td>
					<input type="text" name="sabun" value="1005" readonly>
				</td>
			</tr>
			<tr>
				<th>성명</th>
				<td>
					<input type="text" name="name" value="김유신">
				</td>
			</tr>
			<tr>
				<th>금액</th>
				<td>
					<input type="number" name="pay" value="5000">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수 정">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>








