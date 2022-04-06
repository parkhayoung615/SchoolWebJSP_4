<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영역객체의 속성값 출력하기</title>
</head>
<body>
	<p>포워딩 된 페이지입니다. </p>
	pageValue : <%= pageContext.getAttribute("pageScope") %> <br>
	requestValue : <%= request.getAttribute("requestScope") %> <br>
</body>
</html>