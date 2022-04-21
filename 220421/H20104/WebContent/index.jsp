<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		// 1. JDBC 드라이버 로딩하기
		Class.forName("oracle.jdbc.driver.OracleDriver");
	
		// 2. DB 서버 접속하기
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = DriverManager.getConnection(url, "hr", "hr");
		
		// 3. Statement or PreparedStatement 객체 생성하기
		Statement stmt = conn.createStatement();
		
		// 4. SQL 실행
		// test 테이블 생성
		stmt.executeUpdate("create table test (id varchar2(5), pwd varchar(5))");
		
		// 레코드 추가
		stmt.executeUpdate("insert into test values('dd', '44')");
		stmt.executeUpdate("insert into test values('ee', '55')");
		stmt.executeUpdate("insert into test values('ff', '66')");
		
		// 5. 자원 해제
		stmt.close();
		conn.close();
	
	%>
</body>
</html>