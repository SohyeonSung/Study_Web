<%@page import="com.mystudy.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 데이터를 사용해서 DB 데이터 수정(UPDATE) 후 화면전환 
	수정성공 : 상세화면으로 이동 또는 전체목록 페이지로 이동
	예외발생 : 예외메시지 표시후 이전화면(수정페이지) 또는 상세화면으로 이동
--%>
<%
	//0. 한글처리
	request.setCharacterEncoding("UTF-8");

	//1. 전달받은 데이터 확인(추출) 후 VO에 담기
%>	
	<jsp:useBean id="vo" class="com.mystudy.mybatis.GuestbookVO" />
	<jsp:setProperty property="*" name="vo"/>
<%	
	System.out.println("> update_ok.jsp vo : " + vo);

	//2. DB 연동 작업(UPDATE)
	//2-1. SqlSession 객체 생성
	//SqlSession ss = DBService.getFactory().openSession(true); //자동커밋 사용
	SqlSession ss = DBService.getFactory().openSession(); //자동커밋 아닌 상태 사용
	try {
		//2-2. SqlSession 객체 사용 수정 요청 처리
		int count = ss.update("guestbook.update", vo);
		System.out.println(":: 수정갯수 : " + count);
		ss.commit(); // 명시적 커밋처리
		
		//3. 페이지 이동(화면전환)
		//response.sendRedirect("list.jsp");
		response.sendRedirect("onelist.jsp?idx=" + vo.getIdx());
	} catch (Exception e) {
		ss.rollback();
		e.printStackTrace();
	} finally {
		ss.close();
	}
	
	//3. 페이지 이동(화면전환)
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외발생</title>
<script>
	alert("[예외발생] 수정중 오류 발생");
	//history.back(); //이전페이지로 이동(수정화면)
	history.go(-2); //상세화면으로 이동
</script>
</head>
<body>
	<h1>예외발생</h1>
</body>
</html>
