<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) DB에서 전체 데이터 조회(SELECT)해서 화면 출력 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 데이터 검색</title>
</head>
<body>
	<h1>전체 데이터 검색</h1>
	<table border>
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>암호</th>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1-샘플</td>
				<td>test1</td>
				<td>pw1234</td>
				<td>홍길동</td>
				<td>25</td>
				<td>서울</td>
				<td>2025-06-01</td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>


