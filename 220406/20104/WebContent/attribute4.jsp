<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역 객체의 속성값 출력하기</title>
</head>
<body>
	<h3> application 영역에 저장된 내용들</h3>
	이름 : <%= application.getAttribute("name") %> <br>
	ID : <%= application.getAttribute("id") %> <br>
	
	<h3> Session 영역에 저장된 내용들</h3>
	email : <%= session.getAttribute("email") %> <br>
	주소 : <%= session.getAttribute("address") %> <br>
	tel : <%= session.getAttribute("tel") %> <br>
	
</body>
</html>