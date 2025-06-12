<%@page import="com.mystudy.bbs.common.Paging"%>
<%@page import="com.mystudy.bbs.vo.BbsVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.bbs.dao.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 현재 페이지에 표시할 데이터를 화면 표시
	1. 페이징 처리를 위한 객체(Paging) 생성해서 필요한 데이터 사용
	2. 페이징 객체에 설정할 데이터 저장
	3. (DB) 전체 데이터 건수 조회
	4. (DB) 현재 페이지에 표시할 게시글 데이터 조회
	5. 데이터 화면 표시(화면컨트롤 - 스타일 지정)
--%>
<%
	// Paging 사용 : 직접 설정값을 구하고 설정
	Paging p = new Paging();

	//1. 전체 게시물 수량 구하기
	p.setTotalRecord(BbsDAO.getTotalCount());
	p.setTotalPage();
	System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
	System.out.println("> 전체 페이지 수 : " + p.getTotalPage());
	
	//2. 현재 페이지 구하기
	String cPage = request.getParameter("cPage");
	if (cPage != null) {
		p.setNowPage(Integer.parseInt(cPage));
	}
	System.out.println("> param cPage : " + cPage);
	System.out.println("> paging nowPage : " + p.getNowPage());

	
	//3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기
	p.setEnd(p.getNowPage()* p.getNumPerPage());
	p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
	System.out.println(">> 시작번호(begin) : " + p.getBegin());
	System.out.println(">> 끝번호(end) : " + p.getEnd());
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글목록</title>
</head>
<body>

<div id="bbs">
	<table>
		<caption>게시글 목록</caption>
	</table>
</div>

</body>
</html>