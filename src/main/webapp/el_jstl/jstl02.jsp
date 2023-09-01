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
	jstl02 page <br><br>
	
	s_name : ${ s_name }<br>
	s_name : ${ sessionScope.s_name }<br>
	s_name : <%= session.getAttribute("s_name") %>
<hr>
	<c:if test="${ s_name == null }">
		세션이 없다
	</c:if>
	<c:if test="${ s_name != null }">
		${ s_name }
	</c:if>
</body>
</html>