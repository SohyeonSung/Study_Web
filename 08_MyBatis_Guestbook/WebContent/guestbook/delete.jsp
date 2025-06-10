<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제요청</title>
<link rel="stylesheet" href="../css/guestbook.css">
</head>
<body>
\${guestbookVO } : ${guestbookVO }
<hr>
\${sessionScope } : ${sessionScope }


<div id="container">
	<h2>방명록 : 삭제화면[ delete.jsp ]</h2>
	<hr>
	<p><a href="list.jsp">[목록으로 이동]</a></p>
	
	<form action="delete_ok.jsp" method="post">
	<p>
		확인 비밀번호 : <input type="password" name="pwd">
		<input type="submit" value="삭 제">
	</p>
	</form>
	
</div>

</body>
</html>


