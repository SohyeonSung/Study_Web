<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 DB에 저장(INSERT)
	 입력 성공 : 목록 페이지로 이동(list.jsp)
	 입력 실패(예외) : 메세지 표시 후 이전화면 (입력화면) 이동
 --%>
 <%
 	// 0. 한글처리
 	request.setCharacterEncoding("UTF-8");
 	
 	// 1. 파라미터 값 추출해서 GuestbookVO에 저장
%>
	<jsp:useBean id="guestbookVO" class="com.mystudy.mybatis.GuestbookVO" />
	<jsp:setProperty property="*" name="guestbookVO"/>
<%
	System.out.println("> guestbookVO : " + guestbookVO);

 	// 2. DB에 입력처리
 	
 	// 3. 페이지 전환(이동)
 	
 	
 %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리 결과</title>
</head>
<body>
	<h2>처리 결과 </h2>
</body>
</html>

















