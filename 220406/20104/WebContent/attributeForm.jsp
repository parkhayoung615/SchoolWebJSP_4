<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역 객체(Scope)와 속성(attribute)</title>
</head>
<body>
	<form action="attribute3.jsp" method="get">
		<h2>Application 영역에 저장할 내용</h2>
		이름 : <input type="text" name="name"> <br>
		아이디 : <input type="text" name="id"> <br>
		<h2>Session 영역에 저장할 내용</h2>
		e-mail : <input type="text" name="email"> <br>
		집주소 : <input type="text" name="address"> <br>
		전화번호 : <input type="text" name="tel"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html