<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
body {
	position: relative;
}

header {
	position: absolute;
	width: 426px;
	height: 70px;
	background-color: #f4f4f0;
	top: 0;
	left: 0;
}

div.container {
	margin: 0;
	padding: 0;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.custom-header {
	position: fixed;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	width: 426px;
	height: 70px;
	background-color: #f4f4f0;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 5px 20px;
	z-index: 1000;
	/* 기본 상태에서는 구분선 없음 */
	border-bottom: none;
	transition: border-bottom 0.3s ease;
}

/* 스크롤이 발생했을 때 클래스가 추가되며 빨간선 등장 */
.custom-header.scrolled {
	border-bottom: 2px solid red;
}

.custom-header img {
	height: 30px;
}

.hamburger {
	background: none;
	border: none;
	cursor: pointer;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 5px;
}

.hamburger div {
	width: 20px;
	height: 4px;
	background-color: black;
	margin: 2px 0;
	border-radius: 1px;
}
</style>

<header class="custom-header">
  <div>   
  <img src="./images/main/logo.png" alt="HAPPY RENTCAR 로고"
     style="cursor:pointer;"
     onclick="location.href='main'">
   </div>   
  
  <nav>
    <nav>
   <button class="hamburger" onclick="location.href='side'">
    <div></div>
    <div></div>
    <div></div>
  </nav>

  </nav>
</header>
<body>
<script>
  window.addEventListener("scroll", function () {
    const header = document.querySelector(".custom-header");
    if (window.scrollY > 0) {
      header.classList.add("scrolled");
    } else {
      header.classList.remove("scrolled");
    }
  });
</script>
</body>