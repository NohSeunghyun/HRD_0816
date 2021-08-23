<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(과정평가형 정보처리산업기사)스마트 공장 공정관리 프로그램 ver 2019-09</title>
</head>
<body>
<%@ include file = "header.jsp" %>
	<section>
		<div>
			<h2>작업공정조회</h2>
		</div>
		<table border="1" width = "90%" style = "margin : 0 auto;">
			<tr>
				<th>작업지시번호</th>
				<th>제품코드</th>
				<th>제품명</th>
				<th>준비</th>
				<th>인쇄</th>
				<th>코딩</th>
				<th>합지</th>
				<th>접합</th>
				<th>포장</th>
				<th>최종공정일자</th>
				<th>최종공정시간</th>
			</tr>
			<%
			sql += "select substr(p.w_workno,1,4)||'-'||substr(p.w_workno,5,4), ";
			sql += " p_code, p_name, ";
			sql += " decode(p_p1, 'Y', '완료', 'N', '~'), ";
			sql += " decode(p_p2, 'Y', '완료', 'N', '~'), ";
			sql += " decode(p_p3, 'Y', '완료', 'N', '~'), ";
			sql += " decode(p_p4, 'Y', '완료', 'N', '~'), ";
			sql += " decode(p_p5, 'Y', '완료', 'N', '~'), ";
			sql += " decode(p_p6, 'Y', '완료', 'N', '~'), ";
			sql += " to_char(to_date(w_lastdate),'yyyy-mm-dd'), ";
			sql += " substr(w_lasttime,1,2)||':'||substr(w_lasttime,3,2)";
			sql += " from tbl_process p left outer join (select w_workno, p_code, p_name";
			sql += " from tbl_product natural join tbl_worklist) pw";
			sql += " on p.w_workno = pw.w_workno";
			sql += " order by 1";
				
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
			%>
			<tr align="center">
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(9) %></td>
				<td><%=rs.getString(10) %></td>
				<td><%=rs.getString(11) %></td>
			</tr>
			<%
				}
			%>
		</table>
	</section>
<%@ include file = "footer.jsp" %>
</body>
</html>