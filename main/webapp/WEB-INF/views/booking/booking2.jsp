<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="400px" style="margin-top: 150px;">
<tr>
	<th>대여일</th>
	<td><input type="date" name="start"></td>
	<td><input type="date" name="finish"></td>
</tr>
<tr>
	<th>보험</th>
	<td>
	<input type="radio" name="1" value="ins"><span>면책미포함</span>
	<input type="radio" name="2" value="ins"><span>완전면책미포함</span>
	<input type="radio" name="3" value="ins"><span>슈퍼면책미포함</span>
</tr>
<tr>
	<th>차량종류</th>
	<td>New</td>
	<td>경형</td>
	<td>준중형</td>
	<td>중형</td>
	<td>suv</td>
	<td>승합</td>
	<td>특가할인</td>
</tr>
<tr>
<td>
<a>검색</a>
</tr>
</table>

</body>
</html>