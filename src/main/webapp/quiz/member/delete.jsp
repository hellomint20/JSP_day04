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
<jsp:useBean id="dao" class="day04.MemberDAO"></jsp:useBean>
<c:set var="result" value="${dao.delete(param.id)}"/>

<c:if test="${result == 1 }">
	<c:remove var="login_id" scope="session" />
	<script type="text/javascript">
		alert("삭제 되었습니다");
		location.href="/day04/quiz/member/login.jsp";
	</script>
</c:if>

</body>
</html>