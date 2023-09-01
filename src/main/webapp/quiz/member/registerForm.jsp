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
	<c:import url="/quiz/default/header.jsp" />
	<h3>회원 가입</h3>
	
	<form action="register.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="addr" placeholder="주소"><br>
		<input type="text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>

	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>