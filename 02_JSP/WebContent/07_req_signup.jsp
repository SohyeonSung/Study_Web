<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입(요청)</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	//(실습) 데이터를 확인 후 요청처리
	// 아이디,암호,이름 필수입력(빈문자열 제외, 최소 1글자 이상)
	// 암호확인 체크 : 암호와 암호확인 값이 일치
	// 성별 선택(필수) : 체크값이 무조건 있어야 함
	$(document).ready(function(){
		$("#signupBtn").on("click", fnInputCheck);
		$("#sigupForm [type=submit]").on("click", fnInputCheck);
	});
	
	function fnInputCheck(event){
		event.preventDefault(); //기본 동작을 취소 처리
		
		alert("회원가입(input type=button) 버튼 클릭!!!");
		alert(this.value + " 버튼 클릭~~~");
		let $form = $("#sigupForm");
		console.log($form.prop("id"));
		
		//아이디 입력 확인
		$userid = $("#sigupForm input[name=userid]");
		//alert("$userid.val().trim().length : " + $userid.val().trim().length);
		if ($userid.val().trim().length == 0) {
			alert("아이디를 입력하세요");
			$userid.val("");
			$userid.focus();
			return false; //함수 종료, submit 취소
		}
		
		//암호 입력 확인
		$pwd = $("#sigupForm input[name=pwd]");
		if ($pwd.val().trim().length == 0) {
			alert("암호를 입력하세요");
			$pwd.val("");
			$pwd.focus();
			return false; //함수 종료, submit 취소
		}
		//확인암호 입력 확인
		$pwd2 = $("#sigupForm input[name=pwd2]");
		if ($pwd2.val().trim().length == 0) {
			alert("확인암호를 입력하세요");
			$pwd2.val("");
			$pwd2.focus();
			return false; //함수 종료, submit 취소
		}
		
		//서버로 전송
		//$form.prop("action", "07_resp.jsp");
		$form.submit(); 
	}
</script>
</head>
<body>
	<h1>회원가입[ 07_req_signup.jsp ]</h1>
	<form action="07_resp.jsp" id="sigupForm">
		<p>아이디 : <input type="text" name="userid"></p>
		<p>암호 : <input type="password" name="pwd"></p>
		<p>암호확인 : <input type="password" name="pwd2"></p>
		<p>이름 : <input type="text" name="username"></p>
		<p>이메일 : <input type="email" name="email"></p>
		<p>
			<input type="radio" name="gender" value="M" class="genders">남자
			<input type="radio" name="gender" value="F" class="genders">여자
		</p>
		<p>취미 :
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="영화">영화
			<input type="checkbox" name="hobby" value="독서">독서
		</p>
		<input type="button" value="회원가입(input type=button)" id="signupBtn">
		<input type="submit" value="회원가입(input=submit)" id="submit">
		<button>회원가입(button)</button>
		<input type="reset" value="다시작성">
	</form>
	
	
</body>
</html>



