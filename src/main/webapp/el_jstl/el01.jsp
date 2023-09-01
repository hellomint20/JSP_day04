<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	el01 page<br><br>
	${"표현 el 출력" }<br>
	<%= "출력" %><br>
	<% out.print("출력"); %>
	<hr>
	+, -, *, /(div), %(mod), ==(eq), >(gt), <(lt) <br><br>
	<!-- ${5 / 2 } ==> ${5 div 2 }<br> 
	${5 % 2 } ==> ${5 mod 2 }<br>
	${5 == 2 } ==> ${5 eq 2 }<br>
	<!--${5 != 2 } ==> ${5 ne 2 }<br>-->
	${5 < 2 } ==> ${5 lt 2 }<br>
	${5 <= 2 } ==> ${5 le 2 }<br>
	${5 > 2 } ==> ${5 gt 2 }<br>
	${5 >= 2 } ==> ${5 ge 2 }<br>
	${true || false } ==> ${true or false }<br>
	${true && false } ==> ${true and false }<br>
	${ !false } ==> ${ not false }<br>
	
</body>
</html>