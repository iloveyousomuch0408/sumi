<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>2023 레이 상세</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      background: #f8f8f8;
      font-family: 'Arial', sans-serif;
      display: flex;
      justify-content: center;
    }

    .wrapper {
      width: 100%;
      max-width: 420px;
      padding-top: 80px;
    }

    .container {
      padding: 20px;
    }

    .card-box {
      width: 90%;
      margin: 0 auto 8px;
      background: #fff;
      padding: 15px 23px;
      border-radius: 13px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .title {
      font-size: 22px;
      font-weight: bold;
      margin-bottom: 0px;
      padding-left: 4%;
    }

    .hashtags {
      color: #000;
      font-size: 14px;
      margin-bottom: 12px;
      padding-left: 4%;
    }

    .main-img {
      width: 103%;
      max-height: 152px;
      object-fit: cover;
      border-radius: 10px;
      display: block;
      margin: 0 auto;
    }

    .thumb-box {
      width: 80px;
      height: 80px;
      background: none;
      padding: 0;
      border-radius: 16px;
      box-shadow: none;
      margin-bottom: 8px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .thumb-img {
      width: 88px;
      height: 60px;
      object-fit: cover;
      border: none;
      background: none;
      border-radius: 6px;
      box-shadow: 0 1px 6px rgba(0, 0, 0, 0.05);
    }

    .content-section {
      padding-left: 20px;
    }

    .info {
      font-size: 14px;
      margin-bottom: 10px;
    }

    .warn {
      color: red;
      font-size: 13px;
      margin-bottom: 4px;
    }

    .price {
      width: 96%;
      background: #000;
      color: #fff;
      font-size: 18px;
      padding: 7px 20px;
      text-align: right;
      border-radius: 13px;
      margin: 10px 0 20px;
    }

    .tags {
      display: flex;
      gap: 10px;
      justify-content: space-between;
      margin-bottom: 16px;
    }

    .tag {
      background: #eaeaea;
      padding: 6px 12px;
      border-radius: 20px;
      font-size: 13px;
    }

    .details {
      font-size: 13px;
      color: #444;
      line-height: 1.6;
      margin-bottom: 30px;
    }

    .btn {
      background: red;
      color: white;
      text-align: center;
      padding: 14px 0;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      margin-right: 20px;
    }
  </style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
      <div class="title">▷2023레이</div>
      <div class="hashtags">#2023~24년식 #블랙박스 #휘발유 #5인승</div>

      <div class="card-box">
        <img src="images/cardetail/2003ray.jpg" class="main-img" alt="2023 레이 이미지">
      </div>

      <div class="content-section">
        <div class="thumb-box">
          <img src="images/cardetail/2003ray.jpg" class="thumb-img" alt="썸네일">
        </div>

        <div class="info">만 26세 이상 / 2종보통 / 차량손해면책 미가입</div>
        <div class="warn">❗ 차량손해면책이란?</div>

        <!-- ✅ 적용된 보험 옵션 하나만 출력 -->
        <div id="priceBox" class="price"></div>

        <ul class="tags">
          <li class="tag">휘발유</li>
          <li class="tag">5인승</li>
          <li class="tag">2023~24년식</li>
        </ul>

        <div class="details">
          USB, 블루투스, 카플레이, 블랙박스, 후방센서<br>
          운전석에어백, 조수석에어백, ABS, 하이패스, 리모컨키<br>
          운전석 열선시트, 조수석 열선시트, 핸들열선<br>
          TPMS, 스마트키, 후방카메라
        </div>

        <div class="btn">실시간 예약</div>
      </div>
    </div>
  </div>

  <script>
    function parseDate(str) {
      if (!str) return new Date(); // 파라미터 없으면 오늘 날짜
      const parts = str.split("-");
      return new Date(parts[0], parts[1] - 1, parts[2]);
    }

    const urlParams = new URLSearchParams(window.location.search);
    const startStr = urlParams.get('startdate') || "2025-05-20";
    const endStr = urlParams.get('enddate') || "2025-05-23";
    const insuOption = parseInt(urlParams.get('insuOption')) || 0;

    const startDate = parseDate(startStr);
    const endDate = parseDate(endStr);
    const msPerDay = 1000 * 60 * 60 * 24;
    const days = Math.ceil((endDate - startDate) / msPerDay) || 1;

    const basePrice = 73500;
    const addPrice = [0, 5000, 19500];
    const optionText = ["미책미포함", "완전면책포함", "슈퍼면책포함"];

    const finalPrice = basePrice + (addPrice[insuOption] * days);
    document.getElementById("priceBox").innerText = `${optionText[insuOption]}: ${finalPrice.toLocaleString()}원`;
  </script>
</body>
</html>
