<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String rYear = request.getParameter("rYear");
String rMonth = request.getParameter("rMonth");
String rDay = request.getParameter("rDay");
String tYear = request.getParameter("tYear");
String tMonth = request.getParameter("tMonth");
String tDay = request.getParameter("tDay");
String insurance = request.getParameter("insurance");
String price = request.getParameter("price");

// 가격 파라미터 값이 실제로 넘어오는지 확인
System.out.println("전달된 price 파라미터 값: " + price);

// 기본값 설정 및 예외 방지
int priceValue = 0;
if (price != null && !price.trim().isEmpty()) {
	try {
		priceValue = Integer.parseInt(price);
	} catch (NumberFormatException e) {
		System.out.println("NumberFormatException 발생: " + e.getMessage());
		priceValue = 0; // 잘못된 숫자면 0원 처리
	}
}
String formattedPrice = String.format("%,d", priceValue);

// 날짜 조합
String rentalDate = (rYear != null ? rYear : "") + "." + (rMonth != null ? rMonth : "") + "."
		+ (rDay != null ? rDay : "");
String returnDate = (tYear != null ? tYear : "") + "." + (tMonth != null ? tMonth : "") + "."
		+ (tDay != null ? tDay : "");

// 보험옵션 표시문구 생성
String insuranceDisplay = "면책미포함";
if ("미책".equals(insurance)) {
	insuranceDisplay = "면책미포함";
} else if ("완전".equals(insurance)) {
	insuranceDisplay = "완전면책포함";
} else if ("슈퍼".equals(insurance)) {
	insuranceDisplay = "슈퍼면책포함";
} else if (insurance != null && !insurance.trim().isEmpty()) {
	insuranceDisplay = insurance;
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2023 레이 상세</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

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

.title {
	font-size: 22px;
	font-weight: bold;
	margin-bottom: 0;
	padding-left: 4%;
}

.hashtags {
	color: #000;
	font-size: 14px;
	margin-bottom: 12px;
	padding-left: 4%;
}

.card-box {
	width: 90%;
	margin: 0 auto 8px;
	background: #fff;
	padding: 15px 23px;
	border-radius: 13px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.main-img {
	width: 103%;
	max-height: 152px;
	object-fit: cover;
	border-radius: 10px;
	display: block;
	margin: 0 auto;
}

.content-section {
	padding-left: 20px;
}

.thumb-box {
	width: 80px;
	height: 80px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 8px;
}

.thumb-img {
	width: 88px;
	height: 60px;
	object-fit: cover;
	border-radius: 6px;
	box-shadow: 0 1px 6px rgba(0, 0, 0, 0.05);
}

.info {
	font-size: 14px;
	margin-bottom: 10px;
}

.warn {
	color: red;
	font-size: 13px;
	margin-bottom: 8px;
}

.price {
	width: 96%;
	background: #000;
	color: #fff;
	font-size: 30px;
	padding: 6px 15px;
	text-align: right;
	border-radius: 13px;
	margin: 10px 0;
	font-weight: bold;
}

.price-info {
	list-style: none;
	padding-left: 10px;
	margin-top: 10px;
	margin-bottom: 20px;
	font-size: 15px;
	color: #555;
}

.price-info li {
	position: relative;
	margin-bottom: 6px;
	padding-left: 12px;
}

.price-info li::before {
	content: '●';
	color: red;
	font-size: 11px;
	position: absolute;
	left: 0;
	top: 3px;
}

.tags-wrapper {
	display: flex;
	justify-content: center;
	margin: 0 auto 16px auto;
}

.tags {
	display: flex;
	gap: 8px;
	padding: 0;
}

.tag {
	background: #666;
	color: #fff;
	width: 120px;
	height: 40px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 12px;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.details-box {
	background: #fff;
	border: 0.5px solid #000;
	border-radius: 12px;
	padding: 8px 0;
	width: 90%;
	margin: 0 auto 18px;
	box-shadow: none;
	height: 110px;
}

.details {
	font-size: 14.5px;
	color: #444;
	line-height: 1.6;
	margin-bottom: 30px;
	padding-left: 10px;
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
	margin: 0 20px;
	display: block;
	width: calc(100% - 40px);
}

.happy-review {
	width: 90%;
	margin: 40px auto 20px;
}

.review-title {
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
}

.review-list {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.review-item {
	display: flex;
	align-items: flex-start;
	gap: 12px;
}

.review-img {
	width: 100px;
	height: 100px;
	object-fit: cover;
	flex-shrink: 0;
	margin-right: 10px;
}

.review-text {
	flex: 1;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	height: 100px;
	padding-top: 0;
}

.review-desc {
	font-size: 15px;
	color: #333;
	line-height: 1.4;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.review-date {
	display: flex;
	align-items: flex-end;
	font-size: 15px;
	color: #888;
}

.review-icon {
	width: 27px;
	height: 27px;
	margin-right: 8px;
}

.fixed-reserve-btn {
	position: fixed; /* ✅ 스크롤 내려도 고정 */
	bottom: 0; /* ✅ 화면 맨 아래 붙이기 */
	left: 50%;
	transform: translateX(-50%); /* ✅ 가운데 정렬 */
	width: 100%;
	max-width: 420px; /* ✅ 컨테이너에 맞추기 */
	background: red;
	color: white;
	text-align: center;
	padding: 14px 0;
	font-size: 18px;
	font-weight: bold;
	border-radius: 0; /* 버튼은 네모로 */
	z-index: 1000; /* ✅ 다른 요소들보다 위에 */
}
</style>
</head>


<body>
	<div class="wrapper">
		<div class="container">
			<div class="title">▷2023레이</div>
			<div class="hashtags">#2023~24년식 #블랙박스 #휘발유 #5인승</div>

			<div class="card-box">
				<img src="images/cardetail/2003ray.jpg" class="main-img"
					alt="2023 레이 이미지">
			</div>

			<div class="content-section">
				<div class="thumb-box">
					<img src="images/cardetail/2003ray.jpg" class="thumb-img" alt="썸네일">
				</div>
				<div class="info">
					만 26세 이상 / 2종보통 /
					<%=insuranceDisplay%>
				</div>
				<div class="price"><%=formattedPrice%>원
				</div>
				<div class="warn">❗ 차량손해면책이란?</div>

				<ul class="price-info">
					<li>금연차량</li>
					<li>사고발생시 수리비+후차보상료 전액부담</li>
					<li>색상 배정 및 차량 옵션은 상이할 수 있음</li>
				</ul>
			</div>

			<div class="tags-wrapper">
				<ul class="tags">
					<li class="tag">휘발유</li>
					<li class="tag">5인승</li>
					<li class="tag">2023~24년식</li>
				</ul>
			</div>

			<div class="details-box">
				<div class="details">
					USB. 블루투스. 카플레이. 블랙박스. 후방센서.<br> 운전석에어백. 조수석에어백. ABS. 사이드미러 접이
					자동.<br> 리페어킷. 운전석 열선시트. 조수석 열선시트.<br> 운전석 통풍시트. 핸들열선.
					TPMS. 후방카메라. 스마트키
				</div>
			</div>



			<div class="happy-review">
				<h2 class="review-title">HAPPY REVIEW</h2>
				<!-- HAPPY REVIEW 리스트 (리뷰 6개) -->
				<div class="review-list">

					<div class="review-item">
						<a href="https://cafe.naver.com/imsanbu/74117307?tc=shared_link"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb6.PNG" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">아이와 함께 여행하면서 유모차와 카시트도 대여가 되는걸 처음
									알았네요...</p>
								<div class="review-date">
									<img src="images/cardetail/5.png" class="review-icon">2025.03.24
								</div>
							</div>
						</a>
					</div>

					<div class="review-item">
						<a
							href="https://m.cafe.naver.com/ca-fe/web/cafes/imsanbu/articles/72673307?useCafeId=false&tc"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb5.png" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">18개월 아기랑 2박3일 제주도 여행을 다녀왔어요!!...</p>
								<div class="review-date">
									<img src="images/cardetail/5.png" class="review-icon">2025.03.20
								</div>
							</div>
						</a>
					</div>

					<div class="review-item">
						<a
							href="https://www.instagram.com/p/DAP1Oanz7ES/?igsh=aXNsd3Jkd3JxOWdn"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb4.png" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">하민이 제주도 다녀왔어요! 제주 여행 세번째인데 두번 다
									해피렌트카에서...</p>
								<div class="review-date">
									<img src="images/cardetail/2.png" class="review-icon">2024.10.22
								</div>
							</div>
						</a>
					</div>

					<div class="review-item">
						<a
							href="https://cafe.naver.com/skybluezw4rh/12063697?tc=shared_link"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb3.png" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">남편 일정 때문에 급으로 아이랑 처음 제주도 2박3일...</p>
								<div class="review-date">
									<img src="images/cardetail/5.png" class="review-icon">2024.12.14
								</div>
							</div>
						</a>
					</div>

					<div class="review-item">
						<a
							href="https://m.cafe.naver.com/ca-fe/web/cafes/imsanbu/articles/67291973?useCafeId=false&tc"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb2.png" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">9갤 아기랑 처음으로 제주도를 가는데 렌트카도 이용하면서...</p>
								<div class="review-date">
									<img src="images/cardetail/5.png" class="review-icon">2024.06.10
								</div>
							</div>
						</a>
					</div>

					<div class="review-item">
						<a
							href="https://m.cafe.naver.com/ca-fe/web/cafes/10094499/articles/69162719?useCafeId=true&or=link.naver.com"
							target="_blank"
							style="display: flex; align-items: center; text-decoration: none; color: inherit;">
							<img src="images/cardetail/bb1.png" alt="리뷰 이미지"
							class="review-img">
							<div class="review-text">
								<p class="review-desc">24갤 아이와 떨리는 마음으로 첫 제주도여행을 떠난 후기...</p>
								<div class="review-date">
									<img src="images/cardetail/5.png" class="review-icon">2024.02.11
								</div>
							</div>
						</a>
					</div>

				</div>
				<!-- 리뷰 리스트 끝 -->
				<br>
				<div class="fixed-reserve-btn">실시간 예약</div>


			</div>
		</div>
</body>
</html>