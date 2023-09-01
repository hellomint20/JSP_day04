<%@page import="day04.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<c:if test="${ login_id == null }">
		<script type="text/javascript">
			alert("로그인 해주세요");
			location.href="/day04/quiz/member/login.jsp"
		</script>
	</c:if>

	<c:import url="/quiz/default/header.jsp" />
	<h3 align="center">회원 목록</h3>
	
	<jsp:useBean id="dao" class="day04.MemberDAO"/>
	
	<table border="1" style="margin: auto">
		<tr>
			<th>이름</th> <th>주소</th> <th>전화번호</th>
		</tr>
		<c:forEach var="d" items="${dao.getList() }">
			<tr>
				<td><a href="getInfo.jsp?id=${d.id }">${d.name }</a></td>
				<td>${d.addr }</td>
				<td>${d.tel }</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>