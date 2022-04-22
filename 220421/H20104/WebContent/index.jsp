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
		// 1. JDBC 드라이버 로딩하기 (오라클 JDBC 드라이버)
		Class.forName("oracle.jdbc.driver.OracleDriver");
	
		// 2. DB 서버 접속하기
		// url 이라는 String 타입 변수에 경로를 설정해준다
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// 실질적으로 연결해주는 코드 !!
		Connection conn1 = DriverManager.getConnection(url, "hr", "hr");
		
		// 3. Statement or PreparedStatement 객체 생성하기
		Statement stmt1 = conn1.createStatement();
		
		// 4. SQL 실행
		// test 테이블 생성
		stmt1.executeUpdate("create table table_1 (id varchar2(5), pwd varchar(5))");
		
		// 레코드 추가
		// insert 를 통해 테이블에 값을 추가
		stmt1.executeUpdate("insert into table_1 values('dd', '44')");
		stmt1.executeUpdate("insert into table_1 values('ee', '55')");
		stmt1.executeUpdate("insert into table_1 values('ff', '66')");

		// 5. 자원 해제
		stmt1.close();
		conn1.close();
	
	%>
</body>
</html>