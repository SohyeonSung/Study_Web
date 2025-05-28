<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 1. 전달받은 데이터(파라미터) 값 추출
    String name = request.getParameter("name");
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));

    // 2. 계산처리(총점, 평균)
    int total = kor + eng + math;
    double avg = total / 3.0;  
%>
	<!-- 3. 결과 출력(브라우저 화면 - HTML 태그 작성) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(응답)성적 처리 결과</title>
</head>
<body>
    <h2>성적 처리 결과</h2>
    <table border>
        <tr>
            <th>이름</th>
            <th>국어</th>
            <th>영어</th>
            <th>수학</th>
            <th>총점</th>
            <th>평균</th>
        </tr>
        <tr>
            <td><%= name %></td>
            <td><%= kor %></td>
            <td><%= eng %></td>
            <td><%= math %></td>
            <td><%= total %></td>
            <td><%= String.format("%.2f", avg) %></td>
        </tr>
    </table>
</body>
</html>
