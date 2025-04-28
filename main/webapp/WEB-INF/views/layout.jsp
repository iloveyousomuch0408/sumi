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

<!-- bootstrap style -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Pretendard 서체-->
<link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" rel="stylesheet">
<!-- 공통 스타일 -->
<link rel="stylesheet" href="./resources/styles/common.css?v=12">

<!-- jQuery -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="container">
<t:insertAttribute name="header" />
<main class="contents">
<t:insertAttribute name="contents" />
</main>
<t:insertAttribute name="footer" />
</div>
</body>
</html>