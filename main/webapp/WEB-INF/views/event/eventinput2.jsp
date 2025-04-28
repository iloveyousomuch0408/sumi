<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    right: 20px;  /* ✅ px 누락 수정 */
    width: 383px;
    display: none;
    background: white;
    border: 1px solid #e42025;
    padding: 10px;
    border-radius: 4px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    z-index: 10;

    /* ✅ display 초기화 제거 */
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
    width: 16px;   /* ✅ X 아이콘 작게 유지 */
    height: 16px;
  }

  .search-box .pipe {
    font-size: 16px;
    color: #aaa;
    margin: 0 6px;
    line-height: 1;             /* ✅ 세로 정렬 문제 해결 */
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

  .pagination button {
    padding: 6px 10px;
    border: none;
    background: #f0f0f0;
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
  }

  .pagination .active {
    background: #333;
    color: #fff;
  }
  .pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 8px;
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
</style>
</head>
<body>

<div class="container">
  <div class="title">이벤트</div>
  <div class="divider"></div>

  <!-- 🔍 돋보기 + 검색창 -->
  <div class="search-wrapper">
    <div class="search">
      <img src="images/event/돋보기.png" class="search-icon" onclick="toggleSearchBox()">
    </div>
    <div class="search-box" id="searchBox">
      <input type="text" placeholder="검색어를 입력하세요">
      <img src="images/event/돋보기.png" class="search-btn" alt="검색">
      <span class="pipe">|</span>
      <img src="images/event/searchclose.png" class="close-btn" alt="닫기" onclick="toggleSearchBox()">
    </div>
  </div>
  <div class="grid">
    <a href="eventzero7" class="event-card">
      <img src="images/event/sinra.jpg">
      <div class="desc">
        신라면세점 특별이벤트
        <strong>기간 : 2024-04-01 ~ 2025-04-30</strong>
      </div>
    </a>

    <a href="eventzero8" class="event-card">
      <img src="images/event/coffee.jpg">
      <div class="desc">
        롯데리아 아메리카노 무료
        <strong>기간 : 2021-03-31 ~ 2021-07-31</strong>
      </div>
    </a>

    <a href="eventzero9" class="event-card">
      <img src="images/event/vip.jpg">
      <div class="desc">
        오직 해피렌트카 고객님을 위한
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero10" class="event-card">
      <img src="images/event/3200.jpg">
      <div class="desc">
        해피렌트카-하도하도3200
        <strong>기간 : 2018-12-01 ~ 2021-08-31</strong>
      </div>
    </a>

    <a href="eventzero11" class="event-card">
      <img src="images/event/cash.jpg">
      <div class="desc">
        해피팬션 - 자넷앤캐시
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>

    <a href="eventzero12" class="event-card">
      <img src="images/event/1929.jpg" alt="이마트">
      <div class="desc">
        해피팬션-하도하도1929
        <strong>기간 : 2025-02-01 ~ 2025-12-31</strong>
      </div>
    </a>
  </div>

  <!-- ✅ 페이지네이션 --> 
<div class="pagination">
  <a href="eventinput?page=1" class="page-arrow">&laquo;</a>
  <a href="eventinput?page=1" class="page-arrow">&lt;</a>

  <a href="eventinput?page=1" class="page-link">1</a>
  <a href="eventinput2?page=2" class="page-link active">2</a>

  <a href="eventinput2?page=2" class="page-arrow">&gt;</a>
  <a href="eventinput2?page=2" class="page-arrow">&raquo;</a>
</div>





</div>

<div class="top-btn">TOP</div>

<!-- ✅ JS: 검색창 토글 -->
<script>
  function toggleSearchBox() {
    const box = document.getElementById('searchBox');
    box.style.display = (box.style.display === 'flex') ? 'none' : 'flex';
  }
</script>

</body>
</html>
