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
	<jsp:useBean id="dto" class="day04.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="result" value="${dao.modify(dto) }"/>
	
	<c:if test="${result == 1 }">
		<script type="text/javascript">
			alert("수정 되었습니다");
			location.href="/day04/quiz/member/getInfo.jsp?id=${dto.id}";
		</script>
	</c:if>

	<c:import url="/quiz/default/footer.jsp" />
</body>
</html>