<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!-- 미포함 경형 -->
<title>예약 정보 확인</title>
<style>
form {
	width: 90%;
	margin: 20px auto 0;
	padding: 0; /* ✅ 내부 여백 제거 */
	background: transparent; /* ✅ 배경 제거 */
	border: none; /* ✅ 테두리 제거 */
	box-shadow: none; /* ✅ 그림자 제거 */
}

body {
	background: #f4f4f0;
	display: flex;
	justify-content: center;
}

.wrapper {
	width: 100%;
	max-width: 430px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.banner {
	width: 90%;
	margin: 60px auto 20px auto;
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
	margin-bottom: 15px;
	margin-left: auto;
	margin-right: auto;
}

.date-box {
	flex: 1;
	padding: 10px 5px;
	text-align: center;
	display: flex;
	flex-direction: column;
	align-items: center;
	border-radius: 8px;
	background: #ffffff;
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
	background: #ffffff;
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
	margin-left: auto;
	margin-right: auto;
	display: none;
}

.select-group {
	text-align: center;
	margin-bottom: 4px;
}

.select-label {
	font-size: 12px;
	color: #555;
}

.value-box {
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 4px;
}

.car-list {
	width: 90%;
	margin-top: 24px;
	display: flex;
	flex-direction: column;
	gap: 0px;
}

.car-item {
	display: flex;
	align-items: flex-end;
	margin-bottom: 20px;
}

.car-img-box {
	width: 130px;
	height: 130px;
	background: #ffffff;
	border-radius: 8px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-right: 12px;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.08);
	overflow: hidden;
}

.car-img {
	width: 110px;
	height: 90px;
	object-fit: cover;
	margin: 0 auto;
}

.car-info {
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
	align-items: flex-start;
	gap: 4px;
	position: relative;
	margin-top: 5px;
}

.car-info h3 {
	font-size: 17px;
	margin: 0 0 2px 0;
	color: #333;
	padding-top: 50px;
	margin-top: 12px;
}

.car-price {
	font-size: 18px;
	font-weight: bold;
	color: #000;
	margin: 0;
}

.car-note {
	color: red;
	font-size: 13px;
	margin: 0;
}

.car-badge {
	position: absolute;
	top: 23px;
	left: 0;
	width: 35px;
	height: 35px;
	line-height: 35px;
	font-size: 10px;
	font-weight: bold;
	text-align: center;
	color: white;
	border-radius: 50%;
	z-index: 2;
}

.car-badge.new {
	background-color: #e42025;
}

.car-badge.best {
	background-color: #1976d2;
}

.car-badge.event {
	background-color: #FFAE00;
}

.car-item {
	display: flex;
	align-items: flex-end;
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #ddd; /* 밝은 회색 선 */
}

.car-item:last-child {
	border-bottom: none; /* 마지막은 선 제거 */
}
</style>
</head>


<body>
	<div class="wrapper">
		<div class="container">



			<!-- 배너 -->

			<div class="banner">

				<div class="banner-wrapper">

					<img src="./images/booking/booking1.jpg" class="active" /> <img
						src="./images/booking/booking2.jpg" /> <img
						src="./images/booking/booking3.png" /> <img
						src="./images/booking/booking4.jpg" /> <img
						src="./images/booking/booking5.jpg" /> <img
						src="./images/booking/booking6.jpg" /> <img
						src="./images/booking/booking7.jpg" /> <img
						src="./images/booking/booking8.jpg" /> <img
						src="./images/booking/booking9.jpg" /> <img
						src="./images/booking/booking10.jpg" />

				</div>

			</div>



			<!-- 날짜 표시 영역 -->

			<div class="date-section">

				<!-- 대여일 -->

				<div class="date-box">

					<span>대여일</span>

					<div class="select-group">

						<div class="select-label">날짜</div>

						<div class="value-box">${dto.RENTAL_YEAR}년
							${dto.RENTAL_MONTH}월 ${dto.RENTAL_DAY}일</div>

					</div>

					<div class="select-group">

						<div class="select-label">시간</div>

						<div class="value-box">${dto.RENTAL_TIME}</div>

					</div>

				</div>



				<!-- 화살표 -->

				<div class="arrow-box">

					<img src="./images/booking/res_arrow.png"
						style="width: 16px; z-index: 2;" />

				</div>



				<!-- 반납일 -->

				<div class="date-box">

					<span>반납일</span>

					<div class="select-group">

						<div class="select-label">날짜</div>

						<div class="value-box">${dto.RETURN_YEAR}년
							${dto.RETURN_MONTH}월 ${dto.RETURN_DAY}일</div>

					</div>

					<div class="select-group">

						<div class="select-label">시간</div>

						<div class="value-box">${dto.RETURN_TIME}</div>

					</div>

				</div>

			</div>



			<!-- 보험 옵션 -->

			<!-- 보험 옵션: 한 박스 안에 3칸 -->
			<div class="btn-row" id="insurance-group">
				<button
					class="btn-option ${dto.INSURANCE == '면책미포함' ? 'active' : ''}">면책미포함</button>

				<button
					class="btn-option ${dto.INSURANCE == '완전면책포함' ? 'active' : ''}">완전면책포함</button>

				<button
					class="btn-option ${dto.INSURANCE == '슈퍼면책포함' ? 'active' : ''}">슈퍼면책포함</button>

			</div>
			<!-- 차량 옵션: 4x2 그리드 -->
			<div class="btn-grid" id="car-group">
				<button class="btn-option ${dto.CAR_TYPE == 'NEW' ? 'active' : ''}">NEW</button>

				<button class="btn-option ${dto.CAR_TYPE == '경형' ? 'active' : ''}">경형</button>

				<button class="btn-option ${dto.CAR_TYPE == '준중형' ? 'active' : ''}">준중형</button>

				<button class="btn-option ${dto.CAR_TYPE == '중형' ? 'active' : ''}">중형</button>

				<button class="btn-option ${dto.CAR_TYPE == '고급' ? 'active' : ''}">고급</button>

				<button class="btn-option ${dto.CAR_TYPE == 'SUV' ? 'active' : ''}">SUV</button>

				<button class="btn-option ${dto.CAR_TYPE == '승합' ? 'active' : ''}">승합</button>

				<button class="btn-option ${dto.CAR_TYPE == '특가할인' ? 'active' : ''}">특가할인</button>

			</div>
			<!-- 검색 버튼 -->

			<form action="car1" method="post" id="bookingForm">
				<input type="hidden" name="rYear" value="${dto.RENTAL_YEAR}" />
				<input type="hidden" name="rMonth" value="${dto.RENTAL_MONTH}" />
				<input type="hidden" name="rDay" value="${dto.RENTAL_DAY}" />
				<input type="hidden" name="rTime" value="${dto.RENTAL_TIME}" />
				<input type="hidden" name="tYear" value="${dto.RETURN_YEAR}" />
				<input type="hidden" name="tMonth" value="${dto.RETURN_MONTH}" />
				<input type="hidden" name="tDay" value="${dto.RETURN_DAY}" />
				<input type="hidden" name="tTime" value="${dto.RETURN_TIME}" />
				<input type="hidden" name="insurance" value="${dto.INSURANCE}" />
				<input type="hidden" name="car" value="${dto.CAR_TYPE}" />
				<input type="hidden" name="rentalDays" value="${dto.RENTAL_DAYS}" />
				<input type="hidden" name="carName" id="carNameInput" />
				<button type="submit" class="search-btn">검색</button>
			</form>


		</div>
		<!-- 차량 리스트 -->
		<div class="car-list">
			<!-- 경형 -->
			<div class="car-item" data-insurance="all" data-car="NEW 경형">
				<div class="car-img-box">
					<img src="./images/booking/2003ray.jpg" alt="2023 레이"
						class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>
						<a href="cardetail1">▷2023 레이</a>
					</h3>
					 <p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                     <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="경형">
				<div class="car-img-box">
					<img src="./images/booking/21.jpg" alt="2023 레이" class="car-img">

				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2022 캐스퍼</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                     <p class="car-note">${dto.INSURANCE}</p>

				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="경형">
				<div class="car-img-box">
					<img src="./images/booking/22.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2022 레이</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- 준중형 -->
			<div class="car-item" data-insurance="all" data-car="NEW 준중형">
				<div class="car-img-box">
					<img src="./images/booking/14.gif" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2025 아반떼</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="NEW 준중형">
				<div class="car-img-box">
					<img src="./images/booking/08.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2023 올뉴아반떼</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="준중형">
				<div class="car-img-box">
					<img src="./images/booking/24.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2022 더뉴K3</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- 중형 -->
			<div class="car-item" data-insurance="all" data-car="NEW 중형">
				<div class="car-img-box">
					<img src="./images/booking/18.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2025 더뉴K5휘발유</h3>
					<p class="car-price">${dto.totalPrice}원</p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<div class="car-item" data-insurance="all" data-car="NEW 중형">
				<div class="car-img-box">
					<img src="./images/booking/15.gif" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2024 쏘나타 디엣지 휘발유</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<div class="car-item" data-insurance="all" data-car="NEW 중형">
				<div class="car-img-box">
					<img src="./images/booking/13.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2023 K5 휘발유</h3>
					<p class="car-price">${dto.totalPrice}원</p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
				
			</div>
			<div class="car-item" data-insurance="all" data-car="중형">
				<div class="car-img-box">
					<img src="./images/booking/28.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2022 쏘나타DN.8휘발유</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- 고급 -->
			<div class="car-item" data-insurance="all" data-car="NEW 고급">
				<div class="car-img-box">
					<img src="./images/booking/13.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2025 더뉴K5휘발유</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="고급">
				<div class="car-img-box">
					<img src="./images/booking/28.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2022 쏘나타DN8.휘발유</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- SUV -->
			<div class="car-item" data-insurance="all" data-car="NEW SUV">
				<div class="car-img-box">
					<img src="./images/booking/19.jpg" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2025 디올뉴팰리세이드7인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="SUV">
				<div class="car-img-box">
					<img src="./images/booking/01.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2023 팰리세이드 7인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="SUV">
				<div class="car-img-box">
					<img src="./images/booking/20.jpg" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2025 디올뉴팰리세이드9인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="SUV">
				<div class="car-img-box">
					<img src="./images/booking/17.jpg" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2025 더뉴쏘렌토 7인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- 승합 -->

			<div class="car-item" data-insurance="all" data-car="NEW 승합">
				<div class="car-img-box">
					<img src="./images/booking/05.jpg" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge new">NEW</span>
					<h3>▷2023 스타리아 라운지9인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="승합">
				<div class="car-img-box">
					<img src="./images/booking/04.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge best">BEST</span>
					<h3>▷2023 카니발9인승</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>
			</div>
			
			<!-- 특가할인 -->

			<div class="car-item" data-insurance="all" data-car="특가할인">
				<div class="car-img-box">
					<img src="./images/booking/23.jpg" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge event">EVENT</span>
					<h3>▷캐스퍼/레이 랜덤</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
			<div class="car-item" data-insurance="all" data-car="특가할인">
				<div class="car-img-box">
					<img src="./images/booking/27.jpg" alt="2023 레이" class="car-img">
				</div>
				<div class="car-info">
					<span class="car-badge event">EVENT</span>
					<h3>▷올뉴아반떼/더뉴K3 랜덤</h3>
					<p class="car-price">
                     <fmt:formatNumber value="${dto.totalPrice}" type="number" groupingUsed="true" />원
                     </p>
                    <p class="car-note">${dto.INSURANCE}</p>
				</div>

			</div>
		</div>
		<div>
			<!-- 배너 자동 슬라이드 -->
			<script>
document.addEventListener("DOMContentLoaded", () => {
  let index = 0;
  const images = document.querySelectorAll('.banner img');
  if (images.length > 0) {
    setInterval(() => {
      images.forEach((img, i) => {
        img.classList.remove('active');
        if (i === index) img.classList.add('active');
      });
      index = (index + 1) % images.length;
    }, 3000);
  }

  const insuranceBtns = document.querySelectorAll('#insurance-group .btn-option');
  const carBtns = document.querySelectorAll('#car-group .btn-option');
  const carItems = document.querySelectorAll('.car-item');
  const priceBoxes = document.querySelectorAll('.car-price');
  const rentalDays = parseInt(document.getElementById('rentalDays').value);
  const baseRate = 0;
  const formatted = price.toLocaleString('ko-KR') + '원';
  const extraRates = {
    '면책미포함': 0,
    '완전면책포함': 5000,
    '슈퍼면책포함': 19500
  };

  let selectedInsurance = document.querySelector('#insurance-group .btn-option.active')?.textContent.trim() || '면책미포함';
  let selectedCar = document.querySelector('#car-group .btn-option.active')?.textContent.trim() || '경형';

  function updatePrice() {
    const extra = extraRates[selectedInsurance] || 0;
    const price = rentalDays * (baseRate + extra);
    const formatted = price.toLocaleString('ko-KR') + '원';
    priceBoxes.forEach(p => p.textContent = formatted);
  }

  function filterCars() {
    carItems.forEach(item => {
      const insu = item.dataset.insurance;
      const carData = item.dataset.car.split(" ");
      const insuranceMatch = (insu === selectedInsurance || insu === "all");
      const carMatch = carData.includes(selectedCar) || item.dataset.car === "all";
      const shouldShow = insuranceMatch && carMatch;
      item.style.display = shouldShow ? "flex" : "none";

      if (shouldShow) {
        const noteEl = item.querySelector('.car-note');
        if (noteEl) {
          noteEl.textContent = selectedInsurance === '면책미포함' ? '차량손해면책 미가입' :
                               selectedInsurance === '완전면책포함' ? '완전면책 포함' :
                               '슈퍼면책 포함';
        }
      }
    });
    updatePrice();
  }

  insuranceBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      insuranceBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      selectedInsurance = btn.textContent.trim();
      filterCars();
    });
  });

  carBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      carBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      selectedCar = btn.textContent.trim();
      filterCars();
    });
  });

  // 차량 이름 클릭 시 carName 값 세팅 후 폼 전송
  const carNameInput = document.getElementById('carNameInput');
  const carNameLinks = document.querySelectorAll('.car-info h3 a');

  carNameLinks.forEach(link => {
    link.addEventListener('click', (e) => {
      e.preventDefault();
      const text = link.textContent.replace('▷', '').trim();
      carNameInput.value = text;
      document.getElementById('bookingForm').submit();
    });
  });

  filterCars(); // 초기 실행
});
</script>

</body>
</html>


