<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<h1>메인페이지 [ main.jsp ]</h1>
	<a href="sub.jsp"> 서브 페이지로 이동 </a>
	<h2>메인페이지 내용</h2>
	<p>..................</p>
	<p>..................</p>
	<p>..................</p>
	<p>..................</p>
	<hr><hr>
	
	<%-- 디렉티브(지시어) include문 사용 : 복사&붙여넣기 형태로 적용됨 --%>
	<%@ include file = "footer.jsp" %>
	
	<hr>
	
	<footer>
	서울특별시 강남구 역삼로 120 2층 (역삼동, 성보역삼빌딩)<br>
	사업자등록번호 : 172-87-02395<br>
	통신판매업신고번호 : 제2022-서울강남-02346호<br>
	설립자 : (주)아이티윌기관명 : 아이티윌(직업능력개발훈련시설)
	대표자 : 조인형TEL : 02-6255-8002FAX : 02-569-8069
	개인정보책임자 : 심덕수이메일 : admin@itwill.co.kr
	</footer>
	
</body>
</html>
