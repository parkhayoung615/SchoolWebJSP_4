<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//1. JDBC 드라이버 로딩하기 (오라클 JDBC 드라이버)
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. DB 서버 접속하기
	// url 이라는 String 타입 변수에 경로를 설정해준다
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	// 실질적으로 연결해주는 코드 !!
	Connection conn1 = DriverManager.getConnection(url, "hr", "hr");
	
	// 3. Statement or PreparedStatement 객체 생성하기
	Statement stmt1 = conn1.createStatement();
	
	// select
	// rs에 SQL 쿼리문을 저장한다. (select)
	ResultSet rs = stmt1.executeQuery("Select * from table_1");
	// while문을 통해 엔트리 포인트를 옮기며 순차적으로 값을 인식한다.
	while (rs.next()) {
		out.print(rs.getString("id") + ":" + rs.getString(2) + "<br>");
	}
			
	
	// 5. 자원 해제
	stmt1.close();
	conn1.close();
%>
</body>
</html>