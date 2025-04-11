<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 로고 -->
<head>
  <style>
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
      width: 430px;
      height: 70px;
      background-color: #f4f4f0;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 5px 20px;
      z-index: 1000;
    }

    .custom-header ul {
      margin: 0;
      padding: 0;
      list-style: none;
    }

    .custom-header a {
      color: white;
      text-decoration: none;
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
      margin: 1.5px 0;
      border-radius: 1px;
    }
  </style>
</head>
<body>
  <div class="custom-header">
    <h1 class="m-0">
      <img src="./images/main/logo.png" alt="HAPPY RENTCAR" height="30">
    </h1>
    <nav>
      <button class="hamburger" onclick="location.href='side'">
        <div></div>
        <div></div>
        <div></div>
      </button>
    </nav>
  </div>
</body>
