<%@page import="day04.MemberDTO"%>
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
	
	<c:set var="list" value="${dao.getList()}"/>

	<table border="1">
		<tr>
			<th>id</th> <th>name</th> <th>addr</th>
		</tr>
		<c:forEach var="dto" items="list">
			<tr>
				<td>${dto.id }</td>
				<td><a href="delete.jsp?id=${dto.id }">${dto.name }</a></td>
				<td>${dto.addr }</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>