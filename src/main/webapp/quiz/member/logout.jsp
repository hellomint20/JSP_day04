<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% session.invalidate(); %>
	<script type="text/javascript">
		alert("로그아웃");
		location.href="/day04/quiz/member/login.jsp";
	</script>
</body>
</html>