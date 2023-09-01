<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result page<br><br>
	
	id : <%= request.getParameter("id") %><br>
	id : ${param.id }<br>
	id : ${param["id"] }<br>

</body>
</html>