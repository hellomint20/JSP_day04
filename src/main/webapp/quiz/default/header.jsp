<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Bean Quiz</h3>
<hr>
<header>
	<a href="/day04/quiz/member/index.jsp">HOME</a>
	<a href="/day04/quiz/member/memberInfo.jsp">회원 정보</a>
	
	<c:choose>
		<c:when test="${ login_id != null }">
			<a href="/day04/quiz/member/logout.jsp">Logout</a>
		</c:when>
		<c:otherwise>
			<a href="/day04/quiz/member/login.jsp">Login</a>
		</c:otherwise>
	</c:choose>

</header>
<hr>
</body>
</html>