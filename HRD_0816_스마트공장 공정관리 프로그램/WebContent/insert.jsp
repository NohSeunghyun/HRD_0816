<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(과정평가형 정보처리산업기사)스마트 공장 공정관리 프로그램 ver 2019-09</title>
<script type="text/javascript">
	function check(clicked_id) {
		if (f.w_workno.value == "") {
			alert("작업지시번호를 입력해주세요!");
			return f.w_workno.focus();
		}
		if (f.p_p1[0].checked == false && f.p_p1[1].checked == false) {
			alert("재료준비 현재상황을 체크해주세요!");
			return;
		}
		if (f.p_p2[0].checked == false && f.p_p2[1].checked == false) {
			alert("인쇄공정 현재상황을 체크해주세요!");
			return;
		}
		if (f.p_p3[0].checked == false && f.p_p3[1].checked == false) {
			alert("코팅공정 현재상황을 체크해주세요!");
			return;
		}
		if (f.p_p4[0].checked == false && f.p_p4[1].checked == false) {
			alert("합지공정 현재상황을 체크해주세요!");
			return;
		}
		if (f.p_p5[0].checked == false && f.p_p5[1].checked == false) {
			alert("접합공정 현재상황을 체크해주세요!");
			return;
		}
		if (f.p_p6[0].checked == false && f.p_p6[1].checked == false) {
			alert("포장적재 현재상황을 체크해주세요!");
			return;
		}
		if (f.w_lastdate.value == "") {
			alert("최종작업일자를 입력해주세요!");
			return f.w_lastdate.focus();
		}
		if (f.w_lasttime.value == "") {
			alert("최종작업시간을 입력해주세요!");
			return f.w_lasttime.focus();
		}
		if (clicked_id == "insert") {
			f.pro.value="insert";
			f.submit();
		}
		if (clicked_id == "update") {
			f.pro.value="update";
			f.submit();
		}
	}
	
	function rewrite() {
		alert("정보를 지우고 처음부터 다시 입력합니다!");
		f.reset();
		f.w_workno.focus();
	}
</script>
</head>
<body>
<%@ include file = "header.jsp" %>
	<section>
		<div>
			<h2>작업공정등록</h2>
		</div>
		<form action="insertupdatePro.jsp" name="f" method="post">
		<input type = "hidden" name = "pro" value = "">
			<table border="1" width = "600px" style = "margin : 0 auto;">
				<tr>
					<th>작업지시번호</th>
					<td>
						<input type="text" name="w_workno" value="" size="20" maxlength="8" placeholder="예)20190001">
					</td>
				</tr>
				<tr>
					<th>재료준비</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p1" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p1" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>인쇄공정</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p2" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p2" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>코팅공정</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p3" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p3" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>합지공정</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p4" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p4" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>접합공정</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p5" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p5" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>포장적재</th>
					<td>
						&nbsp;<label><input type="radio" name="p_p6" value="Y">완료</label>
						&nbsp;&nbsp;<label><input type="radio" name="p_p6" value="N">작업중</label>
					</td>
				</tr>
				<tr>
					<th>최종작업일자</th>
					<td>
						<input type="text" name="w_lastdate" value="" size="20" maxlength="8" placeholder="예)20190101">
					</td>
				</tr>
				<tr>
					<th>최종작업시간</th>
					<td>
						<input type="text" name="w_lasttime" value="" size="20" maxlength="4" placeholder="예)1300(13시00분)">
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="button" value="공정등록" id="insert" onclick="check(this.id); return false">
						<input type="button" value="공정수정" id="update" onclick="check(this.id); return false">
						<input type="button" value="다시쓰기" onclick="rewrite()">						
					</th>
				</tr>
			</table>
		</form>
		<p align="center">[참고]공정정보입력은 작업지시서에 등록된 작업지시번호를 참조하여 저장합니다.</p>
	</section>
<%@ include file = "footer.jsp" %>
</body>
</html>