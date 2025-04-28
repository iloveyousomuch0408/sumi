<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>엔트카 예약</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body { font-family: Arial, sans-serif; background: #f8f8f8; }

    .header {
      padding: 10px; background: #fff; box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      display: flex; align-items: center; justify-content: space-between;
    }
    .header img { height: 30px; }

    .carousel-container {
      width: 90%; margin: 20px auto; overflow: hidden;
      border-radius: 20px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      height: 140px;
    }
    .carousel-inner {
      display: flex; transition: transform 0.5s ease-in-out;
      width: 1000%; height: 100%;
    }
    .mySlides { flex: 0 0 10%; height: 100%; }
    .mySlides img {
      width: 100%; height: 100%; object-fit: cover; border-radius: 20px;
      display: block;
    }

    .section-box {
      background: #fff; width: 90%; margin: 10px auto;
      border-radius: 12px; box-shadow: 0 2px 6px rgba(0,0,0,0.05);
      padding: 16px; position: relative;
    }

    /* --- 추가된 달력 선택 디자인 시작 --- */
    .date-select {
      width: 100%; max-width: 420px; margin: 0 auto; padding: 20px;
      display: flex; justify-content: space-around; align-items: center;
      background: #f2f2f2; border-radius: 12px; cursor: pointer;
      font-size: 16px; font-weight: bold;
    }
    .date-select div {
      padding: 10px;
      border-radius: 6px;
      background: white;
      box-shadow: 0 1px 4px rgba(0,0,0,0.1);
    }

    .calendar-container {
      display: none;
      width: 100%; max-width: 420px; margin: 10px auto;
      border: 1px solid #ccc; border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 2px 8px rgba(0,0,0,0.15);
      background: #fff;
    }
    .calendar-header {
      background: white;
      padding: 20px;
      text-align: center;
      position: relative;
      font-size: 24px;
      font-weight: bold;
    }
    .calendar-header .prev,
    .calendar-header .next {
      position: absolute;
      top: 50%; transform: translateY(-50%);
      font-size: 20px;
      color: #555;
      cursor: pointer;
    }
    .calendar-header .prev { left: 16px; }
    .calendar-header .next { right: 16px; }
    .calendar-weekdays,
    .calendar-days {
      display: grid;
      grid-template-columns: repeat(7, 1fr);
      text-align: center;
    }
    .calendar-weekdays {
      background: #fff;
      color: #555;
      font-weight: bold;
      padding: 8px 0;
    }
    .calendar-days div {
      position: relative;
      padding: 16px 0;
      font-size: 15px;
      color: #444;
      cursor: pointer;
    }
    .calendar-days div span {
      display: inline-block;
      width: 30px;
      height: 30px;
      line-height: 30px;
      text-align: center;
      border-radius: 50%;
    }
    .calendar-days .selected span {
      background: red;
      color: white;
    }
    .calendar-footer {
      display: flex;
      justify-content: space-around;
      align-items: center;
      padding: 16px;
      border-top: 1px solid #ccc;
    }
    .calendar-footer select {
      padding: 6px 10px;
      font-size: 14px;
    }
    .calendar-confirm {
      display: block;
      width: 200px;
      margin: 20px auto;
      background: red; color: white;
      font-size: 18px;
      padding: 10px;
      border: none;
      border-radius: 10px;
      text-align: center;
      cursor: pointer;
    }
    /* --- 추가된 달력 선택 디자인 끝 --- */

    .insurance-box { width: 90%; margin: 10px auto; display: flex; border: 1px solid #ddd; border-radius: 8px; overflow: hidden; }
    .insurance-box div { flex: 1; padding: 12px 0; text-align: center; background: #f2f2f2; font-weight: bold; border-right: 1px solid #ddd; }
    .insurance-box div:last-child { border-right: none; }
    .insurance-box .active { background: red; color: white; }

    .car-type-box { width: 90%; margin: 10px auto; display: grid; grid-template-columns: repeat(4, 1fr); border: 1px solid #ddd; border-radius: 8px; overflow: hidden; }
    .car-type-box div { padding: 14px 0; text-align: center; font-weight: bold; background: #f2f2f2; border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; }
    .car-type-box div:nth-child(4), .car-type-box div:nth-child(8) { border-right: none; }
    .car-type-box div:nth-child(n+5) { border-bottom: none; }
    .car-type-box .active { background: red; color: white; }

    .btn-red { display: block; width: 90%; margin: 30px auto; padding: 14px 0; background: red; color: #fff; border: none; border-radius: 12px; font-size: 18px; font-weight: bold; cursor: pointer; }
  </style>
</head>
<body>

<div class="header">
  <img src="/images/logo/happyrentcar.png" alt="로고">
  <img src="/images/icon/menu.png" alt="메뉴" style="height: 24px;">
</div>

<div class="carousel-container">
  <div class="carousel-inner" id="carouselInner">
    <c:forEach var="i" begin="1" end="10">
      <div class="mySlides">
        <img src="<c:url value='/images/booking/booking${i}.jpg'/>">
      </div>
    </c:forEach>
  </div>
</div>

<div class="section-box">
  <div class="date-select" onclick="toggleCalendar()">
    <div>대여일: <span id="selectedStart">선택</span></div>
    <div>반납일: <span id="selectedEnd">선택</span></div>
  </div>
</div>

<div class="calendar-container" id="calendarContainer">
  <div class="calendar-header">
    <span class="prev">&#10094;</span>
    2025. 04
    <span class="next">&#10095;</span>
  </div>

  <div class="calendar-weekdays">
    <div style="color: red">일</div><div>월</div><div>화</div><div>수</div><div>목</div><div>금</div><div style="color: red">토</div>
  </div>

  <div class="calendar-days" id="calendarDays">
    <div><span>1</span></div><div><span>2</span></div><div><span>3</span></div><div><span>4</span></div><div><span>5</span></div><div><span>6</span></div><div><span>7</span></div>
    <div><span>8</span></div><div><span>9</span></div><div><span>10</span></div><div><span>11</span></div><div><span>12</span></div><div><span>13</span></div><div><span>14</span></div>
    <div><span>15</span></div><div><span>16</span></div><div><span>17</span></div><div><span>18</span></div><div><span>19</span></div><div><span>20</span></div><div><span>21</span></div>
    <div><span>22</span></div><div><span>23</span></div><div><span>24</span></div><div><span>25</span></div><div><span>26</span></div><div><span>27</span></div><div><span>28</span></div>
    <div><span>29</span></div><div><span>30</span></div>
  </div>

  <div class="calendar-footer">
    <div>
      <strong>대여 시간</strong><br>
      <select>
        <option>15:00</option>
        <option>16:00</option>
      </select>
    </div>
    <div>
      <strong>반납 시간</strong><br>
      <select>
        <option>15:00</option>
        <option>16:00</option>
      </select>
    </div>
  </div>
  <button class="calendar-confirm" onclick="applySelection()">확인</button>
</div>

<div class="insurance-box">
  <div>면착미포함</div>
  <div class="active">완전면착포함</div>
  <div>슈퍼면착포함</div>
</div>

<div class="car-type-box">
  <div>NEW</div><div class="active">경형</div><div>준중형</div><div>중형</div>
  <div>고급</div><div>SUV</div><div>승합</div><div>특가할인</div>
</div>

<button class="btn-red">검색</button>

<script>
  let slideIndex = 0;
  const inner = document.getElementById("carouselInner");
  const totalSlides = document.querySelectorAll(".mySlides").length;

  function showSlides() {
    slideIndex = (slideIndex + 1) % totalSlides;
    inner.style.transform = `translateX(-${slideIndex * 10}%)`;
  }
  setInterval(showSlides, 4000);

  function toggleCalendar() {
    const cal = document.getElementById("calendarContainer");
    cal.style.display = cal.style.display === "block" ? "none" : "block";
  }

  const dayElements = document.querySelectorAll(".calendar-days div");
  let selectedStart = null;
  let selectedEnd = null;

  dayElements.forEach(el => {
    el.addEventListener("click", () => {
      dayElements.forEach(e => e.classList.remove("selected"));
      el.classList.add("selected");

      const day = el.textContent.trim();
      if (!selectedStart || selectedEnd) {
        selectedStart = day;
        selectedEnd = null;
      } else {
        selectedEnd = day;
      }
    });
  });

  function applySelection() {
    if (selectedStart) document.getElementById("selectedStart").innerText = selectedStart;
    if (selectedEnd) document.getElementById("selectedEnd").innerText = selectedEnd;
    document.getElementById("calendarContainer").style.display = "none";
  }
</script>

</body>
</html>
