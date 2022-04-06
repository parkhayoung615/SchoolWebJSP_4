<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>속성 등록 (application, session)</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	
	application.setAttribute("name", name);
	application.setAttribute("id", id);
	
	session.setAttribute("email", email);
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
%>

	<h3><%= name %> 님의 정보가 모두 저장되었습니다.</h3>
	<a href="attribute4.jsp">확인하러 가기</a>
</body>
</html>