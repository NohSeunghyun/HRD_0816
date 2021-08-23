<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(과정평가형 정보처리산업기사)스마트 공장 공정관리 프로그램 ver 2019-09</title>
</head>
<body>
	<footer>
		HRDKOREA Copyrightⓒ2019 All reserved. Human Resources Development Service of Korea
	</footer>
</body>
</html>
<%
try {
	if (conn != null) conn.close();
	if (stmt != null) stmt.close();
	if (ps != null) ps.close();
	if (rs != null) rs.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>