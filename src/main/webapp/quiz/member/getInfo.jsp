<%@page import="day04.MemberDAO"%>
<%@page import="day04.MemberDTO"%>
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
	<jsp:useBean id="dao" class="day04.MemberDAO"/>
	
	<c:set var="dto" value="${ dao.getInfo(param.id)}"/>
	
	<h3 align="center">개인 정보</h3>
	<table style="margin: auto">
		<tr>
			<th>아이디</th> <td>${dto.id }</td>
		</tr>
		<tr>
			<th>비밀번호</th> <td>${dto.pwd }</td>
		</tr>
		<tr>
			<th>이름</th> <td>${dto.name }</td>
		</tr>
		<tr>
			<th>주소</th> <td>${dto.addr }</td>
		</tr>
		<tr>
			<th>전화번호</th> <td>${dto.tel }</td>
		</tr>
		<tr>
			<td><button type="button" onclick="location.href='modifyForm.jsp?id=${dto.id }'">수정</button></td>
			<td><button type="submit"  onclick="location.href='delete.jsp?id=${dto.id }'">삭제</button></td>
		</tr>
	</table>
	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>