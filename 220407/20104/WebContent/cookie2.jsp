<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
<%
	String name = "";
	String value = "";
	String cookie = request.getHeader("Cookie");

	if(cookie != null) {
		Cookie cookies[] = request.getCookies();
		
		for(int i=0; i<cookie.length(); i++) {
			if(cookies[i].getName().equals("name")) {
				name = cookies[i].getName();
				value = cookies[i].getValue();
			}
		}
	}
%>

	쿠키 이름 : <%= name %> <br>
	쿠키 값  : <%= value %> <br>
</body>
</html>