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
	
	<c:set var="dto" value="${dao.getInfo(param.id) }" />
	
	<h3 align="center">개인 정보</h3>
	<table style="margin: auto">
		<form action="modify.jsp" method="post">
			<input type="hidden" name="id" value="${dto.id }">
			<tr>
				<th>이름</th> <td><input type="text" name="name" value="${dto.name }"></td>
			</tr>
			<tr>
				<th>주소</th> <td><input type="text" name="addr" value="${dto.addr }"></td>
			</tr>
			<tr>
				<th>전화번호</th> <td><input type="text" name="tel" value="${dto.tel }"></td>
			</tr>
			<tr>
				<td><input type="submit" value="완료"></td>
				<td><button type="button" onclick="location.href='getInfo.jsp?id=${dto.id }'">취소</button></td>
			</tr>
		</form>
	</table>
	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>