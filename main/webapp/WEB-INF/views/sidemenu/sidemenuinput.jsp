<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .menu {
      max-width: 420px;
      margin: 0 auto;
      padding: 10px;
    }

    .menu img.logo {
      width: 140px;
      margin: 10px 0 20px 0; /* 아래 여백을 늘려주세요 */
      display: block;
    }

    .menu ul {
      list-style: none;
      padding: 0;
      margin: 20px;
    }

    .menu li {
      border-bottom: 1px solid #ddd;
      padding: 15px 0;
      font-size: 15px;
      color: #000;
    }   
    
    .menu li.thick-top {
      border-top: 2px solid #333;
      margin-top: 10px;
    }

    .menu li.thick-bottom {
      border-bottom: 2px solid #333;
    }

    .menu li.active {
     color: red;
    }
    .menu li:hover {
    color: #e42025;
    }     
     .menu a::selection {
     background: #ffcccc;    
     color: #111111;            
     }
    
    .section-title {
      font-size: 16px;
      font-weight: bold;
      margin: 20px 0 10px 0;
    }

    .side-table {
      max-width: 420px;
      margin: 10px auto;
      padding: 0 2px;
      border: 2px solid #DCDCDC;
      border-radius: 10px;
      overflow: hidden;
      background-color: #fff;
    }

    .side-table table {
      width: 100%;
      border-collapse: collapse;
      text-align: center;
    }

    .side-table td {
      padding: 10px;
      font-size: 14px;
      line-height: 1.4;
      border-top: 1px solid #DCDCDC;
      border-right: 1px solid #DCDCDC;
    }

    .side-table tr td:last-child {
      border-right: none;
    }

    .side-table table tr:first-child td:first-child {
      border-top-left-radius: 12px;
    }

    .side-table table tr:first-child td:last-child {
      border-top-right-radius: 12px;
    }

    .side-table table tr:last-child td:first-child {
      border-bottom-left-radius: 12px;
    }

    .side-table table tr:last-child td:last-child {
      border-bottom-right-radius: 12px;
    }

    .cs-box {
      max-width: 420px;
      margin: 20px auto 10px auto;
      padding: 12px;
      display: flex;
      align-items: center;
      border-radius: 10px;
      background-color: #fefefe;
      box-shadow: 0 0 6px rgba(0,0,0,0.05);
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .cs-box:hover {
      background-color: #f5f5f5;
    }

    .cs-box img {
     width: 67px;
     height: 67px;
     margin-right: 14px;
     border-radius: 10px;
     object-fit: contain;
   }

    .cs-text {
      font-size: 13px;
    }

    .cs-text strong {
      font-size: 14px;
      color: #000;
      display: block;
      margin: 4px 0 2px 0;
      word-break: break-all; /* 긴 링크 줄바꿈 방지 */
    }

    .cs-info {
      max-width: 420px;
      margin: 5px auto;
      font-size: 13px;
      line-height: 1.4;
      text-align: left;
      padding: 0 10px;
    }

    .cs-info div {
      margin-top: 5px;
    }

    .cs-tag {
      display: inline-block;
      background-color: #333;
      color: white;
      padding: 6px 14px;
      border-radius: 999px;
      font-size: 14px;
      font-weight: 500;
      margin-right: 6px;
    }

  </style>
</head>
<body>

  <div class="menu">
    <!-- 로고 -->
    <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/KakaoTalk_logo.svg/512px-KakaoTalk_logo.svg.png" alt="로고" />

    <!-- 메뉴 리스트 -->
    <ul>
      <li><a href="booking">렌트카 예약</a></li>
      <li><a href="cardetail">카시트/유모차 예약</a></li>
      <li><a href="eventinput">이벤트</a></li>
      <li>오시는길</li>
      <li>REVIEW</li>
      <li>SNS</li>
      <li>회사소개</li>
      <li class="thick-bottom">예약확인</li>
    </ul>

    <!-- 고객센터 -->
    <div class="section-title">고객센터</div>

    <!-- 문의 테이블 -->
    <div class="side-table">
      <table>
        <tr>
          <td>Q&amp;A</td>
          <td>장기렌트카 문의</td>
        </tr>
        <tr>
          <td>자주 묻는 질문</td>
          <td>공지 사항</td>
        </tr>
      </table>
    </div>

    <!-- 카카오 고객센터 박스 -->
    <div class="cs-box" onclick="window.open('https://github.com/iloveyousomuch0408')">
      <img src="./images/sidemenu/git.png" alt="git 로고">
      <div class="cs-text">
        <div class="cs-label">CS CENTER</div>
       <strong>https://github.com/iloveyousomuch0408</strong>
       <div class="cs-desc">365일 연중무휴 고객센터</div>
      </div>
    </div>
 
    <!-- ARS 정보 -->
    <div class="cs-info">
      <div><span class="cs-tag">예약</span> 08:00~18:00 ARS 1번</div>
      <div><span class="cs-tag">사고</span> 24시간 ARS 2번</div>
    </div>
  </div>

</body>

    
</html>