<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">

<!-- favicon -->
<link rel="shortcut icon" href="./images/favicon/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" sizes="180x180" href="./images/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="./images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="./images/favicon/favicon-16x16.png">
<link rel="manifest" href="./images/favicon/site.webmanifest">

<!-- og -->
<meta property="og:title" content="iloveyousomuch0408'S PORTFOLIO">
<meta property="og:url" content="https://github.com/iloveyousomuch0408/portfolio/">
<meta property="og:image" content="https://github.com/iloveyousomuch0408/portfolio/images/ogImg.png">
<meta property="og:description" content="??????????????">
<meta property="og:type" content="website">

<title><t:insertAttribute name="title" /></title>
<%@ include file="./style.jsp" %>
<%@ include file="./scripts.jsp" %>	
</head>

<body>
	<div class="container">
		<header class="header">
			<t:insertAttribute name="header" />
		</header>
		<main class="contents">
			<t:insertAttribute name="contents" />
		</main>
		<footer class="footer">
			<t:insertAttribute name="footer" />
		</footer>
	</div>
</body>
</html>