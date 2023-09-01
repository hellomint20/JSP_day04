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
	<jsp:useBean id="dao" class="day04.MemberDAO" />
	
	<c:set var="result" value="${dao.check(param.id, param.pwd) }" />
	
	<c:choose>
		<c:when test="${ result == 2 }">
			<c:set var="login_id" value="${param.id }" scope="session"/>
			<script type="text/javascript">
				alert("로그인 성공")
				location.href="/day04/quiz/member/successLogin.jsp"
			</script>
		</c:when>
		<c:when test="${ result == 1 }">
			<script type="text/javascript">
				alert("비밀번호가 틀렸습니다")
				location.href="/day04/quiz/member/login.jsp"
			</script>		
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("일치하는 아이디가 없습니다")
				location.href="/day04/quiz/member/login.jsp"
			</script>	
		</c:otherwise>
	</c:choose>
	
</body>
</html>