<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jstl01 page <br><br>
	
	<c:set var="num" value="값 지정"/>
	값 : ${ num }
	<hr>
	
	<c:set var="id" value="abc"/>
	<c:if test="${id eq 'abc' }">		<!-- if문 작성하는 방법/ test는 꼭 넣어야 함 (True or False) -->
		두 값은 같다 : ${ id }<br>
	</c:if>
	<hr>
	<%
		String[] arr = {"111", "222", "333"};
	%>
	<c:set var="values" value="<%= arr %>"/>
	<c:forEach var="i" begin="10" end="20" step="2">
		${ i }
	</c:forEach>
	<hr>
	<c:forEach var="item" items="${ values }">
		${ item }
	</c:forEach>
	<hr>
	<%-- 
	<c:import url="el01.jsp" />
	<c:redirect url="el02_login.jsp"/> <!-- 현재 페이지는 보이지 않고 바로 페이지 넘어감 -->
	--%>
	<c:set var="s_name" value="세션 설정" scope="session" />
	<c:remove var="s_name11" scope="session"/> <!-- 세션 삭제 -->
	<a href="jstl02.jsp">jstl02 이동</a>
	<hr>
	<c:set var="nick">
		aaa
	</c:set> 
	
	<!-- else if 사용 시  -->
	<c:choose>
	<%--else if 사용 시 --%>
		<c:when test="${ nick == 'aaa' }">닉네임 : ${ nick }</c:when>
		<c:when test="${ nick ne 'aaa' }">닉네임 : ${ nick }</c:when>
		<c:otherwise>else 구분</c:otherwise>
	</c:choose>
	<hr>
	<c:set var="n" value="90" />
	<c:choose>
		<c:when test="${ n >= 100 }">100과 같거나 크다</c:when>
		<c:otherwise>else 구문</c:otherwise>
	</c:choose>
</body>
</html>