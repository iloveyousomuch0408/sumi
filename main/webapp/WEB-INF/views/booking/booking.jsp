<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>렌트카 예약 메인</title>
<style>
body {
	background: #f4f4f0;
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 20px 0;
}

.date-section {
	display: flex;
	justify-content: center; /* 내부 요소 가운데 정렬 */
	align-items: stretch; /* 세로 높이 맞춤 */
	gap: 0; /* 선 위치 맞춤 위해 gap은 0 */
	width: 100%;
	max-width: 420px;
	margin: 0 auto 20px; /* 페이지 가운데 정렬 */
	padding: 16px;
	background: #fff;
	border-radius: 2px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
}

.btn-group {
	width: 100%;
	max-width: 420px;
	margin-bottom: 20px;
	padding: 16px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
}

form {
	width: 90%;
	margin: 20px auto 0;
	padding: 0; /* ✅ 내부 여백 제거 */
	background: transparent; /* ✅ 배경 제거 */
	border: none; /* ✅ 테두리 제거 */
	box-shadow: none; /* ✅ 그림자 제거 */
}

.banner {
	width: 90%;
	margin: 50px auto 40px auto; /* 👈 아래 여백을 40px로 늘림 */
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.banner-wrapper {
	position: relative;
	width: 100%;
	height: 120px;
}

.banner-wrapper img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	transition: opacity 0.5s;
	z-index: 0;
}

.banner-wrapper img.active {
	opacity: 1;
	z-index: 1;
}

.date-section {
	width: 90%;
	display: flex;
	border: 1px solid #ddd;
	border-radius: 8px;
}

.date-box {
	flex: 1;
	padding: 10px 5px;
	text-align: center;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.date-box span:first-child {
	font-size: 16px;
	font-weight: bold;
	color: #333;
	display: inline-flex;
	align-items: center;
	margin-bottom: 4px;
}

.arrow-box {
	width: 40px;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
}

.arrow-box::before {
	content: '';
	position: absolute;
	width: 1px;
	height: 100%;
	background-color: #ccc;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1;
}

.select-row {
	display: flex;
	gap: 4px;
	justify-content: center;
	margin-bottom: 4px;
}

.select-group {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.select-group label {
	font-size: 12px;
	margin-bottom: 2px;
	color: #555;
}

.select-group select {
	padding: 4px;
	font-size: 14px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

.btn-row {
	display: flex;
	width: 90%;
	margin: 0 auto 14px;
	overflow: hidden; /* 둥근 모서리 깨짐 방지 */
}

.btn-row .btn-option {
	flex: 1;
	padding: 12px 0;
	font-size: 14px;
	background: #ffffff;
	border: 1px solid #ddd;
	border-right: none;
	cursor: pointer;
}

.btn-row .btn-option:last-child {
	border-right: 1px solid #ddd;
}

.btn-row .btn-option.active {
	background: #e42025;
	color: #fff;
}

.btn-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 0;
	width: 90%;
	margin: 0 auto 16px;
	border: 0.5px solid #ddd;
	border-radius: 8px;
	overflow: hidden;
}

.btn-grid .btn-option {
	padding: 14px 0;
	font-size: 14px;
	background: #f9f9f9;
	border: 1px solid #ddd;
	border-right: none;
	border-bottom: none;
	text-align: center;
	cursor: pointer;
}

.btn-grid .btn-option:nth-child(4n) {
	border-right: 0;
}

.btn-grid .btn-option:nth-last-child(-n+4) {
	border-bottom: 0;
}

.btn-grid .btn-option.active {
	background: #e42025;
	color: #fff;
}
/* 오른쪽 마지막 버튼 border-right 유지 */
.btn-row .btn-option:last-child {
	border-right: 1px solid #ddd;
}

/* 첫 번째 버튼 왼쪽 둥글게 */
.btn-row .btn-option:first-child {
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
}

/* 마지막 버튼 오른쪽 둥글게 */
.btn-row .btn-option:last-child {
	border-top-right-radius: 8px;
	border-bottom-right-radius: 8px;
}

/* 활성화 상태 */
.btn-row .btn-option.active {
	background: #e42025;
	color: #fff;
}

.search-btn {
	width: 100%;
	padding: 12px;
	font-size: 16px;
	background: #e42025;
	color: #fff;
	border: none;
	border-radius: 8px;
	cursor: pointer;
}
</style>
</head>

<body>
	<%
	// 현재 연도 구하기
	int currentYear = Calendar.getInstance().get(Calendar.YEAR);
	%>

	<div class="container">
		<!-- 배너 -->
		<div class="banner">
			<div class="banner-wrapper">
				<img src="./images/booking/booking1.jpg" class="active" alt="슈퍼자차" />
				<img src="./images/booking/booking2.jpg" alt="면책금제로" /> <img
					src="./images/booking/booking3.png" alt="펠리세이드" /> <img
					src="./images/booking/booking4.jpg" alt="카시트유모차" /> <img
					src="./images/booking/booking5.jpg" alt="부가부유모차" /> <img
					src="./images/booking/booking6.jpg" alt="쏘렌토 배너" /> <img
					src="./images/booking/booking7.jpg" alt="아반떼 배너" /> <img
					src="./images/booking/booking8.jpg" alt="sns이벤트" /> <img
					src="./images/booking/booking9.jpg" alt="장기렌탈 이벤트 배너" /> <img
					src="./images/booking/booking10.jpg" alt="블박0원대여료" />
			</div>
		</div>

		<!-- 날짜 선택 영역 -->
		<div class="date-section">
			<!-- 대여일 -->
			<div class="date-box">
				<span> <img src="./images/booking/res_calendar_black.png"
					style="width: 16px; margin-right: 4px;" alt="캘린더 아이콘" />대여일
				</span>
				<div class="select-row">
					<div class="select-group">
						<label>년도</label> <select id="rYear">
							<%
							for (int i = 0; i <= 5; i++) {
							%>
							<option><%=currentYear + i%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="select-group">
						<label>월</label> <select id="rMonth">
							<%
							for (int m = 1; m <= 12; m++) {
							%>
							<option><%=String.format("%02d", m)%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="select-group">
						<label>일</label> <select id="rDay">
							<%
							for (int d = 1; d <= 31; d++) {
							%>
							<option><%=String.format("%02d", d)%></option>
							<%
							}
							%>
						</select>
					</div>
				</div>
				<div class="select-group">
					<label>대여시간</label> <select id="rTime">
						<%
						for (int h = 8; h <= 22; h++) {
							String hour = String.format("%02d", h);
						%>
						<option><%=hour%>:00
						</option>
						<%
						if (h < 22) {
						%><option><%=hour%>:30
						</option>
						<%
						}
						%>
						<%
						}
						%>
					</select>
				</div>
			</div>

			<!-- 화살표 -->
			<div class="arrow-box">
				<img src="./images/booking/res_arrow.png"
					style="width: 16px; z-index: 2; position: relative;" alt="구분 화살표" />
			</div>

			<!-- 반납일 -->
			<div class="date-box">
				<span> <img src="./images/booking/res_calendar_black.png"
					style="width: 16px; margin-right: 4px;" alt="캘린더 아이콘" />반납일
				</span>
				<div class="select-row">
					<div class="select-group">
						<label>년도</label> <select id="tYear">
							<%
							for (int i = 0; i <= 5; i++) {
							%>
							<option><%=currentYear + i%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="select-group">
						<label>월</label> <select id="tMonth">
							<%
							for (int m = 1; m <= 12; m++) {
							%>
							<option><%=String.format("%02d", m)%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="select-group">
						<label>일</label> <select id="tDay">
							<%
							for (int d = 1; d <= 31; d++) {
							%>
							<option><%=String.format("%02d", d)%></option>
							<%
							}
							%>
						</select>
					</div>
				</div>
				<div class="select-group">
					<label>반납시간</label> <select id="tTime">
						<%
						for (int h = 8; h <= 22; h++) {
							String hour = String.format("%02d", h);
						%>
						<option><%=hour%>:00
						</option>
						<%
						if (h < 22) {
						%><option><%=hour%>:30
						</option>
						<%
						}
						%>
						<%
						}
						%>
					</select>
				</div>
			</div>
		</div>

		<!-- 보험 옵션 버튼 -->
		<div class="btn-row" id="insurance-group">
			<button class="btn-option">면책미포함</button>
			<button class="btn-option active">완전면책포함</button>
			<button class="btn-option">슈퍼면책포함</button>
		</div>

		<!-- 차량 옵션 버튼 -->
		<div class="btn-grid" id="car-group">
			<button class="btn-option">NEW</button>
			<button class="btn-option active">경형</button>
			<button class="btn-option">준중형</button>
			<button class="btn-option">중형</button>
			<button class="btn-option">고급</button>
			<button class="btn-option">SUV</button>
			<button class="btn-option">승합</button>
			<button class="btn-option">특가할인</button>
		</div>

		<!-- 검색 버튼 -->
		<form method="post" id="bookingForm">
			<input type="hidden" name="rYear" /> <input type="hidden"
				name="rMonth" /> <input type="hidden" name="rDay" /> <input
				type="hidden" name="rTime" /> <input type="hidden" name="tYear" />
			<input type="hidden" name="tMonth" /> <input type="hidden"
				name="tDay" /> <input type="hidden" name="tTime" /> <input
				type="hidden" name="insurance" /> <input type="hidden" name="car" />
			<button type="submit" class="search-btn">검색</button>
		</form>
	</div>

	<script>
  document.addEventListener("DOMContentLoaded", () => {
    let index = 0;
    const images = document.querySelectorAll('.banner img');
    if (images.length === 0) return;
    setInterval(() => {
      images.forEach((img, i) => {
        img.classList.remove('active');
        if (i === index) img.classList.add('active');
      });
      index = (index + 1) % images.length;
    }, 3000);

    setSingleSelect("insurance-group");
    setSingleSelect("car-group");

    const form = document.getElementById("bookingForm");

    function updateFormAndSubmit() {
      form.rYear.value = document.getElementById("rYear").value;
      form.rMonth.value = document.getElementById("rMonth").value;
      form.rDay.value = document.getElementById("rDay").value;
      form.rTime.value = document.getElementById("rTime").value;

      form.tYear.value = document.getElementById("tYear").value;
      form.tMonth.value = document.getElementById("tMonth").value;
      form.tDay.value = document.getElementById("tDay").value;
      form.tTime.value = document.getElementById("tTime").value;

      form.insurance.value = document.querySelector("#insurance-group .btn-option.active").textContent.trim();
      form.car.value = document.querySelector("#car-group .btn-option.active").textContent.trim();

      form.action = "car1";
      form.submit();
    }

    // 보험 버튼 클릭 시 바로 전송
    const insuranceBtns = document.querySelectorAll("#insurance-group .btn-option");
    insuranceBtns.forEach(btn => {
      btn.addEventListener("click", () => {
        insuranceBtns.forEach(b => b.classList.remove("active"));
        btn.classList.add("active");
        updateFormAndSubmit(); // ✅ 클릭 시 바로 전송
      });
    });

    // 차량 옵션 선택은 UI만 변경
    const carBtns = document.querySelectorAll("#car-group .btn-option");
    carBtns.forEach(btn => {
      btn.addEventListener("click", () => {
        carBtns.forEach(b => b.classList.remove("active"));
        btn.classList.add("active");
      });
    });

    // 검색 버튼 클릭 시에도 car1으로
    document.querySelector(".search-btn").addEventListener("click", (e) => {
      e.preventDefault();
      updateFormAndSubmit();
    });

    function setSingleSelect(id) {
      const group = document.getElementById(id);
      const buttons = group.querySelectorAll(".btn-option");
      buttons.forEach((btn) => {
        btn.addEventListener("click", () => {
          buttons.forEach((b) => b.classList.remove("active"));
          btn.classList.add("active");
        });
      });
    }
  });
</script>

</body>
</html>