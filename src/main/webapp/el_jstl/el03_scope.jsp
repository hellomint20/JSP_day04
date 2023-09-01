<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
el03_scope page<br><br>
<%
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
%>
	name : ${name }<br> <!-- 현재 페이지에서 가장 작은 값// page → request → session → application -->
	page : ${pageScope.name }, <%= pageContext.getAttribute("name") %><br>
	request : ${requestScope.name }, <%= request.getAttribute("name") %><br>
	session : ${sessionScope.name }, <%= session.getAttribute("name") %><br>
	application : ${applicationScope.name }<br><br>
	
	<a href="el03_result.jsp">result이동</a>
</body>
</html>