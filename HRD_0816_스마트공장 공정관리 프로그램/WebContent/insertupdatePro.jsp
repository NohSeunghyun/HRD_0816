<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>

<%
switch (request.getParameter("pro")) {
	case "insert" : 
		try {
			sql = "insert into tbl_process values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, request.getParameter("w_workno"));
			ps.setString(2, request.getParameter("p_p1"));
			ps.setString(3, request.getParameter("p_p2"));
			ps.setString(4, request.getParameter("p_p3"));
			ps.setString(5, request.getParameter("p_p4"));
			ps.setString(6, request.getParameter("p_p5"));
			ps.setString(7, request.getParameter("p_p6"));
			ps.setString(8, request.getParameter("w_lastdate"));
			ps.setString(9, request.getParameter("w_lasttime"));
			
			ps.executeUpdate();
%>
<script>
			alert("공정상태가 정상적으로 등록 되었습니다!");
			location = "select.jsp";
</script>
<%
		} catch (Exception e) {
%>
<script>
			alert("공정상태가 등록되지 않았습니다!");
			history.back();
</script>
<%
		}
		break;
	case "update" :
		try {
			sql = "update tbl_process set p_p1=?, p_p2=?, p_p3=?, p_p4=?, p_p5=?, p_p6=?, w_lastdate=?, w_lasttime=? where w_workno=?";
			
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, request.getParameter("p_p1"));
			ps.setString(2, request.getParameter("p_p2"));
			ps.setString(3, request.getParameter("p_p3"));
			ps.setString(4, request.getParameter("p_p4"));
			ps.setString(5, request.getParameter("p_p5"));
			ps.setString(6, request.getParameter("p_p6"));
			ps.setString(7, request.getParameter("w_lastdate"));
			ps.setString(8, request.getParameter("w_lasttime"));
			ps.setString(9, request.getParameter("w_workno"));
			
			ps.executeUpdate();
%>
<script>
			alert("공정상태가 정상적으로 수정 되었습니다!");
			location = "select.jsp";
</script>
<%
		} catch (Exception e) {
%>
<script>
			alert("공정상태가 수정되지 않았습니다!");
			history.back();
</script>
<%
		}
	break;
	}

try {
	if (conn != null) conn.close();
	if (stmt != null) stmt.close();
	if (ps != null) ps.close();
	if (rs != null) rs.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>