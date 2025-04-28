<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>
body {
   position: relative;
   background-color: #f4f4f0;
}

/* 첫 번째 큰 슬라이드 스타일 */
.carousel-inner img {
   width: 390px;
   height: 97.5px;
   object-fit: cover;
   border-radius: 20px;
   margin: 0 auto;
   margin-top: 50px;
}

.carousel {
   width: 390px;
   margin: 13px auto;
}

.carousel-indicators [data-bs-target] {
   width: 8px;
   height: 8px;
   border-radius: 50%;
   background-color: #aaa;
   border: none;
   margin: 0 5px;
   transition: background-color 0.3s ease;
}

.carousel-indicators .active {
   background-color: #333;
}

.carousel-control-prev, .carousel-control-next {
   top: 70%;
   transform: translateY(-50%);
}

/* 상단 버튼 */
.service-buttons {
   display: flex;
   justify-content: center;
   gap: 20px;
   margin-top: 0px;
}

.service-button {
   display: flex;
   flex-direction: column;
   align-items: center;
   justify-content: center;
   width: 185px;
   height: 160px;
   border-radius: 20px;
   background-color: #fff;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
   text-decoration: none;
   color: #333;
   transition: transform 0.2s ease;
}

.service-button:hover {
   transform: translateY(-5px);
}

.service-button img {
   width: 80px;
   height: 80px;
   margin-bottom: 4px;
}

.service-button span {
   font-size: 18px;
   font-weight: bold;
}

/* NEW & BEST 캐러셀 스타일 */
.product-carousel {
   max-width: 430px;
   margin: 0 auto;
   padding: 0;
}

.product-carousel h2 {
   text-align: center;
   font-size: 24px;
   font-weight: bold;
   margin: 0;
   padding: 0;
}

.product-carousel .carousel-item {
   display: flex;
   justify-content: space-between;
   gap: 10px;
}

.product-box {
   background: #fff;
   border-radius: 24px;
   box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
   text-align: center;
   padding: 10px;
   width: 180px;
   height:151.5px;
   position: relative;
}

.product-box img {
   width: 100%;
   border-radius: 20px;
   object-fit: cover;
   margin-top: 10px;
}

.product-box .badge {
   position: absolute;
   top: 10px;
   left: 10px;
   background-color: red;
   color: #fff;
   font-size: 12px;
   font-weight: bold;
   padding: 2px 6px;
   border-radius: 999px;
}

.product-box p {
   margin-top: 8px;
   font-size: 13px;
   line-height: 0;
}

#newBestCarousel .carousel-indicators {
   position: absolute;
   bottom: -32px; /* 원래보다 20px 아래로 */
}


  #newBestCarousel2 .carousel-indicators {
    position: absolute;
    bottom: -32px;
  }



.best-choice-section {
   max-width: 430px;
   margin: 40px auto 0;
   padding: 0 10px;
}

.best-choice-section h2 {
   text-align: center;
   font-size: 24px;
   font-weight: bold;
   margin-bottom: 25px;
}

.best-card {
   display: flex;
   flex-direction: row; /* ✅ 가로 배치로 변경 */
   align-items: center;
   background-color: #fff;
   border-radius: 20px;
   box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
   padding: 15px;
   margin-bottom: 20px;
   text-align: left;
}

.best-card img {
   width: 190px;
   height: auto;
   border-radius: 10px;
   object-fit: cover;
   flex-shrink: 0;
}

.best-card-content {
   margin-left: 15px; /* ✅ 텍스트와 이미지 간 여백 */
   flex: 1;
}

.best-card-content p {
   font-size: 18px;
   margin: 4px 0;
   line-height: 1.5;
}

.best-card-content strong {
   font-size: 20px;
   font-weight: bold;
   display: block;
   margin-bottom: 5px;
}

.best-card-content .go-button {
   display: inline-block;
   background-color: red;
   color: white;
   padding: 6px 14px;
   border-radius: 999px;
   font-size: 15px;
   font-weight: bold;
   text-decoration: none;
   margin-top: 5px;
}

.right-align {
   text-align: right;
}
.sns-gallery {
  max-width: 430px;
  margin: 40px auto;
  text-align: center;
}

.sns-gallery h2 {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 20px;
}

.sns-images {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 8px;
}

.sns-images a {
  position: relative;
  display: block;
  overflow: hidden;
  border-radius: 10px;
}

.sns-images img {
  width: 100%;
  height: auto;
  display: block;
  border-radius: 10px;
  object-fit: cover;
}

/* 인스타/블로그 아이콘 오버레이 */
/* 모든 아이콘 기본 스타일 */
.sns-images a::after {
  content: "";
  position: absolute;
  top: 6px;              /* ✅ 상단 여백 */
  right: 6px;            /* ✅ 오른쪽 여백 */
  width: 24px;           /* ✅ 아이콘 크기 줄임 */
  height: 24px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: contain;
  z-index: 2;
  filter: invert(1) brightness(2); /* 아이콘 색 반전 (흑→백) */
}

/* 인스타그램 아이콘 */
.sns-images a.instagram::after {
  background-image: url('./images/main/sns_icon_instargram.png');
}

/* 블로그 아이콘 */
.sns-images a.blog::after {
  background-image: url('./images/main/sns_icon_blog.png');
}
.map-section {
  max-width: 430px;
  margin: 40px auto;
  padding: 0 10px;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  font-family: sans-serif;
}

.map-section img {
  width: 100%;
  border-radius: 10px 10px 0 0;
}

.map-info {
  padding: 15px;
  font-size: 14px;
  color: #222;
}

.map-info p {
  margin: 5px 0;
  line-height: 1.6;
}

.map-info .tel {
  font-size: 24px;
  font-weight: bold;
  margin: 10px 0 5px;
  color: #000;
}

.map-info .gray {
  color: #666;
  font-size: 13px;
  margin-bottom: 5px;
}

.map-info .time {
  display: flex;
  flex-direction: column;
  font-size: 14px;
  margin-top: 8px;
}

.map-info .time span {
  margin-bottom: 3px;
}
.badge-tag {
  display: inline-block;
  background-color: #111;
  color: white;
  font-weight: bold;
  font-size: 12px;         /* ✅ 글자 크기 줄임 */
  padding: 2px 8px;        /* ✅ 내부 여백 줄임 */
  border-radius: 20px;     /* ✅ 모서리 둥글기 */
  margin-right: 6px;
}
</style>

<!-- ✅ 메인 이미지 슬라이드 -->
<div id="mainSlider" class="carousel slide" data-bs-ride="carousel">
   <div class="carousel-indicators">
      <%
      for (int i = 0; i < 10; i++) {
      %>
      <button type="button" data-bs-target="#mainSlider"
         data-bs-slide-to="<%=i%>" class="<%=i == 0 ? "active" : ""%>"></button>
      <%
      }
      %>
   </div>
   <div class="carousel-inner">
      <div class="carousel-item active">
         <a href="https://example.com/1"><img
            src="./images/main/202011041257115fa2269778de1.jpg" alt="1"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/2"><img
            src="./images/main/202011041257115fa2269777e6e.jpg" alt="2"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/3"><img
            src="./images/main/202011241525105fbca746039dc.jpg" alt="3"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/4"><img
            src="./images/main/2024012414495465b0a5029b4b6.jpg" alt="4"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/5"><img
            src="./images/main/2025022612505967be8fa3c6551.jpg" alt="5"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/6"><img
            src="./images/main/2025041213184167f9e9a162236.png" alt="6"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/7"><img
            src="./images/main/20240523190242664f14426b969.jpg" alt="7"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/8"><img
            src="./images/main/20240604223320665f17a081e50.jpg" alt="8"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/9"><img
            src="./images/main/20241119110925673bf355dc79c.png" alt="9"
            class="d-block"></a>
      </div>
      <div class="carousel-item">
         <a href="https://example.com/10"><img
            src="./images/main/20250122121037679061ade8e54.jpg" alt="10"
            class="d-block"></a>
      </div>
   </div>
   <button class="carousel-control-prev" type="button"
      data-bs-target="#mainSlider" data-bs-slide="prev">
      <span class="carousel-control-prev-icon"></span>
   </button>
   <button class="carousel-control-next" type="button"
      data-bs-target="#mainSlider" data-bs-slide="next">
      <span class="carousel-control-next-icon"></span>
   </button>
</div>

<!-- ✅ 상단 버튼 -->
<div class="service-buttons">
   <a href="/rent" class="service-button"> <img
      src="./images/main/main_quick_icon01.png" alt="렌트카 아이콘"> <span>렌트카
         예약</span>
   </a> <a href="/baby" class="service-button"> <img
      src="./images/main/main_quick_icon06.png" alt="예약확인 아이콘"> <span>예약확인</span>
   </a>
</div>
<!-- 111111111111111111111111111111111111111111111111111111111111111111111111111 -->
<!-- ✅ NEW & BEST Carousel -->
<div id="newBestCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
  <div class="product-carousel">
    <h2 style="margin-top: 20px; padding-top: 10px; margin-bottom: 5px; font-size: 30px;">NEW&amp;BEST</h2>
    <div class="carousel-inner">
      <!-- 🔁 각 슬라이드마다 a태그 정리 -->
      <div class="carousel-item active">
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2025041213490867f9f0c4a2db7.jpg" alt="차량1">
            <p>2025디올뉴팰리세이드</p>
            <p>9인승 4WD하이브리드</p>
          </div>
        </a>
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2025041213490867f9f0c473453.jpg" alt="차량2">
            <p>2025디올뉴팰리세이드</p>
            <p>7인승 4WD하이브리드</p>
          </div>
        </a>
      </div>

      <div class="carousel-item">
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2025032709424667e49f06e55ad.jpg" alt="차량3">
            <p>2025디올뉴싼타페7인승</p>
            <p>4WD하이브리드</p>
          </div>
        </a>
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2025040314204167ee1aa9cbacd.jpg" alt="차량4">
            <p>2025더뉴K5 휘발유</p>
          </div>
        </a>
      </div>

      <div class="carousel-item">
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2025032709424767e49f078c5cd.jpg" alt="차량5">
            <p>2025셀토스</p>
          </div>
        </a>
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/20241120155723673d88532df2e.jpg" alt="차량6">
            <p>2025아반떼</p>
          </div>
        </a>
      </div>

      <div class="carousel-item">
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/20241120155723673d885343220.jpg" alt="차량7">
            <p>2025더뉴쏘렌토 7인승</p>
            <p>4WD하이브리드</p>
          </div>
        </a>
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2023111509000365540a038ddc6.jpg" alt="차량8">
            <p>2024디올뉴싼타페 7인승</p>
            <p>4WD</p>
          </div>
        </a>
      </div>

      <div class="carousel-item">
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/2023111509000465540a0401fe9.jpg" alt="차량9">
            <p>2024더뉴쏘렌트 7인승</p>
            <p>4WD 하이브리드</p>
          </div>
        </a>
        <a href="/target.jsp">
          <div class="product-box">
            <div class="badge">NEW</div>
            <img src="./images/main/20241122102200673fdcb8d35f9.jpg" alt="차량10">
            <p>2024더뉴카니발 9인승</p>
          </div>
        </a>
      </div>
    </div>

    <!-- 🔘 인디케이터 (5개) -->
    <div class="carousel-indicators">
      <% for (int i = 0; i < 5; i++) { %>
        <button type="button" data-bs-target="#newBestCarousel" data-bs-slide-to="<%=i%>" class="<%=i == 0 ? "active" : ""%>"></button>
      <% } %>
    </div>
  </div>
</div>

<!-- 111111111111111111111111111111111111111111111111111111111111111111111111111 -->
<!-- 22222222222222222222222222222222222222222222222222222222222222222222222222222 -->
<!-- ✅ NEW & BEST Carousel -->
<div id="newBestCarousel2" class="carousel slide carousel-fade"
   data-bs-ride="carousel" data-bs-interval="3000">
   <div class="product-carousel">
      <h2 style="margin-top: 20px; padding-top: 10px; font-size: 30px;"></h2>
      <div class="carousel-inner">
         <!-- 🔁 1~5 페이지 (2개씩 묶음) -->

         <div class="carousel-item active">
            <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20240609000429666472fdedb45.jpg" alt="차량1">
                  <p>제로나 T 360 아이사이즈</p>
                  <p></p>
               </div>
            </a> <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20240609000430666472fe567b2.jpg" alt="차량2">
                  <p>악스키드 스핀키드 360</p>
                  <p>아이사이즈</p>
               </div>
               </a>
         </div>         
         <div class="carousel-item">
            <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a03a05a.jpg" alt="차량3">
                  <p>순성 우노 360 아이사이즈</p>
                  <p></p>
               </div>
            </a> <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a054d55.jpg" alt="차량4">
                  <p>다이치 블리바 360 프로</p>
                  <p>아이사이즈</p>
               </div>
         </div>
         </a>
         <div class="carousel-item">
            <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a05735c.jpg" alt="차량5">
                  <p>토드비 티니핑 주니어</p>
                  <p></p>
               </div>
            </a> <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a064def.jpg" alt="차량6">
                  <p>토드비 티니핑 부스터</p>
                  <p></p>
               </div>
         </div>
         </a>
         <div class="carousel-item">
            <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20240609000430666472fe5a34f.jpg" alt="차량7">
                  <p>싸이벡스 솔루션 T</p>
                  <p></p>
               </div>
            </a> <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a06fd24.jpg" alt="차량8">
                  <p>스쿳앤라이드</p>
                  <p></p>
               </div>
         </div>
         </a>
         <div class="carousel-item">
            <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20241120160256673d89a072381.jpg" alt="차량9">
                  <p>즐즈 에어 플러스</p>
                  <p></p>
               </div>
            </a> <a href="/target.jsp">
               <div class="product-box">
                  <div class="badge">NEW</div>
                  <img src="./images/main/20240609000430666472fe71d74.jpg"
                     alt="차량10">
                  <p>부가부 드래곤플라이</p>
                  <p></p>
               </div>
            </a>
         </div>
      </div>

      <!-- 🔘 인디케이터 (5개) -->
      <div class="carousel-indicators">
         <%
         for (int i = 0; i < 5; i++) {
         %>
         <button type="button" data-bs-target="#newBestCarousel2"
            data-bs-slide-to="<%=i%>" class="<%=i == 0 ? "active" : ""%>"></button>
         <%
         }
         %>
      </div>
   </div>
</div>
<!-- 22222222222222222222222222222222222222222222222222222222222222222222222222222 -->
<!-- 23333333333333333333333333333333333333333333333333333333333333333333333333333 -->
<div class="best-choice-section">
   <h2>
      <span style="font-size: 30px;">BEST</span><br>CHOICE
   </h2>

       <!-- ✅ 첫 번째 카드 -->
  <div class="best-card">
    <a href="/target.jsp" style="display: flex; align-items: center; width: 100%; text-decoration: none; color: inherit;">
      <img src="./images/main/best_choice01.png" alt="블랙박스">
      <div class="best-card-content right-align">
        <p>이젠 렌터카도<br>블랙박스가 필수!</p>
        <strong>안심 추천차량</strong>
        <span class="go-button">GO</span>
      </div>
    </a>
  </div>

  <!-- ✅ 두 번째 카드 -->
  <div class="best-card">
    <a href="/target.jsp" style="display: flex; align-items: center; width: 100%; text-decoration: none; color: inherit;">
      <div class="best-card-content">
        <p>경차는 작고,<br>큰차는 부담스럽다면?</p>
        <strong>준중형·중형 추천차량</strong>
        <span class="go-button">GO</span>
      </div>
      <img src="./images/main/best_choice05.png" alt="중형차">
    </a>
  </div>

  <!-- ✅ 세 번째 카드 -->
  <div class="best-card">
    <a href="/target.jsp" style="display: flex; align-items: center; width: 100%; text-decoration: none; color: inherit;">
      <img src="./images/main/best_choice06.png" alt="SUV">
      <div class="best-card-content right-align">
        <p>아이와 함께<br>이용하기 좋아요!</p>
        <strong>SUV 추천차량</strong>
        <span class="go-button">GO</span>
      </div>
    </a>
  </div>

  <!-- ✅ 네 번째 카드 -->
  <div class="best-card">
    <a href="/target.jsp" style="display: flex; align-items: center; width: 100%; text-decoration: none; color: inherit;">
      <div class="best-card-content">
        <p>6명 이상 타는데<br>어떤 차량이 좋을까요?</p>
        <strong>인원별 추천차량</strong>
        <span class="go-button">GO</span>
      </div>
      <img src="./images/main/best_choice07.png" alt="인원별">
    </a>
  </div>
</div>
       
<!-- 23333333333333333333333333333333333333333333333333333333333333333333333333333 -->
<!-- ✅ HAPPY SNS 섹션 -->
<div class="sns-gallery">
  <h2>
  <span style="font-size: 30px;">HAPPY SNS</span>
  </h2>
  <div class="sns-images">
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20241027225524671e464c9256b.png" alt="sns01">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20241027224956671e45045a59d.PNG" alt="sns02">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628020020667d9aa434246.jpg" alt="sns03">
    </a>
    <a href="https://blog.naver.com" target="_blank" class="blog">
      <img src="./images/main/202407150004286693e8fcdd421.PNG" alt="sns04">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628020349667d9b751163f.jpg" alt="sns05">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628022107667d9f8362753.jpg" alt="sns06">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628014636667d976cb4431.jpg" alt="sns07">
    </a>
    <a href="https://blog.naver.com" target="_blank" class="blog">
      <img src="./images/main/20240628020750667d9c669eabe.jpg" alt="sns08">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628015731667d99fbceecc.jpg" alt="sns09">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628015347667d991bb9602.jpg" alt="sns10">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/20240628014921667d9811e7033.jpg" alt="sns11">
    </a>
    <a href="https://instagram.com" target="_blank" class="instagram">
      <img src="./images/main/202303282054156422d56797424.jpg" alt="sns12">
    </a>
  </div>
</div>
<!-- ✅ 매장 지도 섹션 -->
<div style="max-width: 430px; margin: 40px auto; background: #f4f4f0; padding: 20px; border-radius: 15px; box-shadow: 0 4px 12px rgba(0,0,0,0.08);">
  <div id="map" style="width: 100%; height: 300px; border-radius: 10px;"></div>
  <div style="margin-top: 20px; font-size: 15px; line-height: 1.6;">
    제주특별자치도 제주시 다호2길 28<br>
    해피렌트카 제주영업소<br>
    (구 주소 : 제주시 용담2동 1942번지)<br>
    제주해피렌트카<br><br>
    <strong style="font-size: 24px;">1644-7935</strong><br>
    365일 연중무휴 고객센터<br>
   <span class="badge-tag">예약</span> 08:00~18:00 ARS 1번<br>
<span class="badge-tag">사고</span> 24시간 ARS 2번
  </div>
</div>

<!-- ✅ 카카오 지도 API 스크립트 추가 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0876e95129066b863a8668d39dcb1f74"></script>
<script>
var mapContainer = document.getElementById('map'),
mapOption = {
    center: new kakao.maps.LatLng(33.50270, 126.49302),
    level: 3
};

var map = new kakao.maps.Map(mapContainer, mapOption);

var marker = new kakao.maps.Marker({
position: new kakao.maps.LatLng(33.50270, 126.49302),
map: map
});

</script>