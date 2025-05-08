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
<table style="margin-top: 100px;">
	<tr>
		<th>아이디</th>
		<th>타이틀</th>
	</tr>
	<c:forEach items="${list }" var="e">
	<tr>
		<td>${e.id }</td>
		<td>${e.title }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>