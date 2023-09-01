<%@page import="day04.MemberDTO"%>
<%@page import="day04.MemberDAO"%>
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
	<jsp:useBean id="dto" class="day04.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="result" value="${dao.register(dto) }" />
	
	<c:if test="${ result ==1 }">
		<script type="text/javascript">
			alert("회원가입 되었습니다. 로그인을 진행해주세요");
			location.href="/day04/quiz/member/index.jsp";
		</script>
	</c:if>
		
	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>