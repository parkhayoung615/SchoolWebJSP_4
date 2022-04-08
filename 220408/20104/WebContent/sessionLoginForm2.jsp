<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 로그인</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("logOK");

	// session 속성 (logOK)이 설정되어 있으면 "id 님이 로그인중입니다.", 그렇지 않으면 로그인 입력화면 출력
	
	if(id != null) {
%>
	<%= id %>님 로그인 상태입니다. <br>
	<a href="./SessionLogout">로그아웃</a>
<%
	} else {
%>
	<h3>로그인 화면</h3>
	
	<!-- id = admin, pwd=1234이면 로그인 성공 -->
	<form action="./SessionLogin" method="post">
		ID : <input type="text" name="id">
		PW : <input type="password" name="pwd">
		<input type="submit" value="로그인">
	</form>
	<br>
<%
	}
%>
</body>
</html>