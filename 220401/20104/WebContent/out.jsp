<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 : out</title>
</head>
<body>
	aboutFlush 여부 : <%= out.isAutoFlush() %> <br>
	출력버퍼의 크기 : <%= out.getBufferSize() %> byte <br>
	출력버퍼의 남은 양 : <%= out.getRemaining() %> byte <br>
</body>
</html>