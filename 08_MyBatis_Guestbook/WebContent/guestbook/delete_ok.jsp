<%@page import="com.mystudy.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.mystudy.mybatis.GuestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 데이터(암호)와 DB 저장 암호 일치여부 확인 후 처리
	비교값 : 전달받은 pwd 파라미터 값과 session 의 pwd 값 비교
	- 일치하면 : DB 데이터 삭제 후 목록페이지 이동
	- 불일치면 : 이전페이지(삭제화면)로 이동
--%>
<%
	//0. 한글처리
	request.setCharacterEncoding("UTF-8");

	//1. 전달받은 데이터(파라미터) 값 확인
	String pwd = request.getParameter("pwd");
	System.out.println("> delete_ok.jsp pwd : " + pwd);
	if (pwd == null) {
		response.sendRedirect("list.jsp");
		return;
	}

	GuestbookVO vo = (GuestbookVO) session.getAttribute("guestbookVO");
	System.out.println("> delete_ok.jsp session vo : " + vo);
	if (vo == null) {
		response.sendRedirect("list.jsp");
		return;
	}

	//2. 암호 비교 후 일치하면 DB 삭제 작업
	String result = "start";
	if (pwd.equals(vo.getPwd())) {
		// 삭제작업 처리
		result = deleteTry(vo.getIdx());
	} else {
		result = "invalid_password";
	}
	
	System.out.println("> delete_ok.jsp result : " + result);
%>
<%!
	private String deleteTry(int idx) {
		try (SqlSession ss = DBService.getFactory().openSession(true);) {
			int count = ss.delete("guestbook.delete", idx);
			System.out.println(":: 삭제건수 : " + count);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "exception";
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지</title>
<script>
	let result = "<%=result %>";
	if (result == "invalid_password") {
		alert("암호불일치, 암호를 확인하세요");
		history.back();
	}
	if (result == "success") {
		alert("삭제되었습니다. 목록페이지로 이동");
		location.href = "list.jsp";
	}
	if (result == "exception") {
		alert("[예외발생] 삭제실패!!! 상세페이지로 이동");
		//location.href = "onelist.jsp?idx=" + ${guestbookVO.idx};
		location.href = "onelist.jsp?idx=" + <%=vo.getIdx() %>;
	}
</script>
</head>
<body>

</body>
</html>


