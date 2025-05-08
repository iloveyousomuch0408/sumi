<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<style>
  .container {
    background-color: #f4f4f0;
    width: 100%;
    margin: 0 auto;
    padding: 20px 0 40px;
    box-sizing: border-box;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }

  .title {
    text-align: center;
    font-size: 28px;
    font-weight: bold;
    margin: 50px 0 20px;
  }

  .divider {
    width: 90%;
    height: 2px;
    background: #333;
    margin: 0 auto 30px;
  }

  .search-wrapper {
    position: relative;
    display: flex;
    justify-content: flex-end;
    padding: 0 20px;
    margin-bottom: 20px;
  }

  .search-icon {
    width: 24px;
    height: 24px;
    cursor: pointer;
  }

  .search-box {
    position: absolute;
    top: 36px;
    right: 20px;
    width: 383px;
    display: none;
    background: white;
    border: 1px solid #e42025;
    padding: 10px;
    border-radius: 4px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    z-index: 10;
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }

  .search-box input {
    flex-grow: 1;
    padding: 8px;
    font-size: 14px;
    border: none;
    outline: none;
  }

  .search-btn,
  .close-btn {
    width: 20px;
    height: 20px;
    cursor: pointer;
    object-fit: contain;
  }

  .close-btn {
    width: 16px;
    height: 16px;
  }

  .search-box .pipe {
    font-size: 16px;
    color: #aaa;
    margin: 0 6px;
    line-height: 1;
    vertical-align: middle;
    display: inline-block;
  }

  .grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    row-gap: 0px;
    column-gap: 10px;
    padding: 0 18px 20px;
  }

  .event-card {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
  }

  .event-card img {
    width: 100%;
    display: block;
    margin-bottom: 5px;
  }

  .event-card .desc {
    padding: 3px 10px 4px;
    margin: 0;
    font-size: 14px;
    font-weight: bold;
    color: #333;
    line-height: 1;
    height: 60px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
  }

  .event-card .desc strong {
    display: block;
    margin-top: 6px;
    color: #888;
    font-size: 13px;
    font-weight: normal;
  }

  .pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 6px;
    margin-top: 20px;
    margin-bottom: 30px;
  }

  .page-link {
  width: 25px;
  height: 25px;
  display: flex;               /* 가로+세로 정렬 */
  align-items: center;         /* 세로 중앙 정렬 */
  justify-content: center;     /* 가로 중앙 정렬 */
  border: none;
  border-radius: 50%;          /* 동그란 원 */
  font-size: 14px;
  text-decoration: none;
  color: black;
  background: #f4f4f0;
  transition: all 0.2s;
}

  .page-link:hover {
    background: #eee;
    border-color: #999;
  }

  .page-link.active {
    background: #333;
    color: white;
    border-color: #333;
  }

  .top-btn {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background: red;
    color: white;
    font-weight: bold;
    padding: 10px 16px;
    border-radius: 50%;
    cursor: pointer;
  }
  .page-arrow {
  font-size: 16px;
  padding: 0 6px;
  color: #888;
  text-decoration: none;
  background: none;
  border: none;
  cursor: pointer;
}
  a.event-card{
    text-decoration: none;
  }
  
</style>
</head>
<body>

<div class="container">
  <div class="title">이벤트</div>
  <div class="divider"></div>

  <!-- 🔍 검색창 -->
  <!-- 🔍 검색창 -->
<div class="search-wrapper">
  <div class="search">
    <img src="images/event/돋보기.png" class="search-icon" onclick="toggleSearchBox()">
  </div>
  <!-- ✅ form으로 수정 -->
  <form method="get" action="eventsearch" class="search-box" id="searchBox" style="display: none;">
     <input type="text" name="keyword" placeholder="검색어를 입력하세요">
     <button type="submit">검색</button>
    
    <button type="submit" class="search-btn" style="background: none; border: none; padding: 0;">
      <img src="images/event/돋보기.png" alt="검색" style="width: 20px; height: 20px;">
    </button>
    
    <span class="pipe">|</span>
    
    <button type="button" class="close-btn" onclick="toggleSearchBox()" style="background: none; border: none; padding: 0;">
      <img src="images/event/searchclose.png" alt="닫기" style="width: 16px; height: 16px;">
    </button>
  </form>
</div>

  <!-- ✅ 이벤트 카드 -->
  <div class="grid">
  <a href="eventzero" class="event-card">
    <img src="images/event/카시트,유모차 0원 이벤트 0.jpg" >
    <div class="desc">
      카시트, 유모차 0원 이벤트
      <strong>기간 : 2024-11-01 ~ 2025-08-31</strong>
    </div>
  </a>

    <a href="eventzero2" class="event-card">
      <img src="images/event/제주도 장기렌트카 할인0.png" >
      <div class="desc">
        제주도 장기렌트카 할인
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero3" class="event-card">
      <img src="images/event/삼다수 이벤트0.jpg" >
      <div class="desc">
        친구 추가하고 삼다수 받고
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero4" class="event-card">
      <img src="images/event/하도하도 펜션0.jpg" >
      <div class="desc">
        해피렌트카 + 하도하도펜션
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero5" class="event-card">
      <img src="images/event/더플래닛0.jpg" >
      <div class="desc">
        더플래닛 입장권50% 
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero6" class="event-card">
      <img src="images/event/이마트0.jpg" alt="이마트">
      <div class="desc">
        이마트30%할인쿠폰
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>
  
  
  </div>

  <!-- ✅ 페이지네이션 -->
<div class="pagination">
  <a href="eventinput?page=1" class="page-arrow">&laquo;</a>
  <a href="eventinput?page=1" class="page-arrow">&lt;</a>

  <a href="eventinput?page=1" class="page-link active">1</a>
  <a href="eventinput2?page=2" class="page-link">2</a>

  <a href="eventinput2?page=2" class="page-arrow">&gt;</a>
  <a href="eventinput2?page=2" class="page-arrow">&raquo;</a>
</div>






</div>

<div class="top-btn">TOP</div>

<script>
  function toggleSearchBox() {
    const box = document.getElementById('searchBox');
    box.style.display = (box.style.display === 'flex') ? 'none' : 'flex';
  }
</script>

</body>
</html>
