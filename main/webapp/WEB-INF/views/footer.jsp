<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
footer {
	width: 100%;
	background-color: #f4f4f0;
	color: black;
	border-top: 1px solid #ccc;
	font-size: 13px;
	padding: 30px 20px;
}

.custom-footer {
	max-width: 1100px;
	margin: 0 auto;
	font-size: 13.5px;
}

.footer-link {
	color: black;
	text-decoration: underline;
	margin: 0 5px;
}

.footer-link:hover {
	text-decoration: none;
}

.image-link-row {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	gap: 16px;
	margin: 20px 0;
}

.image-link-row img {
	width: 28px;
	height: auto;
	border-radius: 6px;
	transition: transform 0.2s ease;
}

.image-link-row a:hover img {
	transform: scale(1.1);
}

.footer-info {
	font-size: 14px;
	line-height: 1.6;
	margin-bottom: 20px;
}

.footer-bottom {
	text-align: center;
	color: #666;
	font-size: 13px;
}
</style>

<footer>
	<div class="custom-footer">
		<!-- 로고 -->
		<div style="margin-bottom: 18px;">
			<img src="./images/main/foot_logo.png" alt="HAPPY RENTCAR 로고"
				width="171">
		</div>

		<!-- 회사 정보 -->
		<div class="footer-info">
			<div>해피네트웍스 대표이사 : 김지원</div>
			<div>성동구 자동차시장1길 99-47, 701호</div>
			<div>제주영업소 : 제주특별자치도 제주시 다호7길28</div>
			<div>사업자등록번호 : 206-86-89586</div>
			<div>통신판매신고번호 : 제 2014-서울성동-0381호</div>
			<div>TEL : 1644-7935 | FAX : 064-742-7932</div>
			<div>EMAIL : happy@happyrent.co.kr</div>
		</div>

		<!-- SNS 아이콘 -->
		<div class="image-link-row">
			<a href="https://www.instagram.com/happynetworks/" target="_blank">
				<img src="./images/main/sns_icon_instargram.png" alt="인스타그램" />
			</a> <a href="https://www.facebook.com/www.happyrent.co.kr/"
				target="_blank"> <img src="./images/main/sns_icon_facebook.png"
				alt="페이스북" />
			</a> <a href="https://section.blog.naver.com/BlogHome.naver"
				target="_blank"> <img src="./images/main/sns_icon_blog.png"
				alt="블로그" />
			</a>
		</div>

		<!-- 하단 문구 -->
		<div class="footer-bottom">COPYRIGHT© HAPPY RENTCAR. ALL RIGHTS
			RESERVED.</div>
	</div>
</footer>