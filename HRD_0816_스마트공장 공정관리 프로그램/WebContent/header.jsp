<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(과정평가형 정보처리산업기사)스마트 공장 공정관리 프로그램 ver 2019-09</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
<style>
	nav a:hover {
		background-color: red;
		color: black;
	}
</style>
</head>
<body>
	<header>
		<h2>(과정평가형 정보처리산업기사)스마트 공장 공정관리 프로그램 ver 2019-09</h2>
	</header>
	<nav>
		<a href = "select.jsp">제품 조회</a>
		<a href = "select2.jsp">작업지시서 조회</a>
		<a href = "insert.jsp">작업공정 등록</a>
		<a href = "select3.jsp">작업공정 조회</a>
		<a href = "index.jsp">홈으로</a>
	</nav>
</body>
</html>