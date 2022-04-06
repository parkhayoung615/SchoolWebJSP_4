<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>속성 등록(request, page)</title>
</head>
<body>
	<%
		pageContext.setAttribute("pageScope", "pageValue");
		request.setAttribute("requestScope", "requestValue");
	%>
	
	pageValue : <%= pageContext.getAttribute("pageScope") %> <br>
	requestValue : <%= request.getAttribute("requestValue") %> <br>
	동일한 attribute1.jsp 내에서는 pageContextd, request 영역 객체에 저장한 속성 정보가 모두 유지되고 있다.
	이번에는 attribute1.jsp 마지막 줄에 아래 코드를 추가한다.
	HTTP 요청 & 응답 정보와 함께 제어권을 ex10_attribute2.jsp로 포워딩함.
	
	<%
		pageContext.forward("attribute2.jsp");
	%>
	
	포워딩한 이후에 ex10_attribute2.jsp에서 pageValue, requestValue 정보를 출력해보면
	requestValue 값만 출력된다.
	page 영역의 속성값은 한 페이지에서만 공유 가능하기 때문에, 포워딩 된 후에는 제대로 출력되지 않는다.
</body>
</html>