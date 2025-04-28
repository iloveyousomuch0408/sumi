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
   .divider-top {
    width: 90%;
    height: 2px;
    background: #333;
    margin: 0 auto 30px;
  }
  .divider-bottom {
    width: 90%;
    height: 2px;
    background: #333;
    margin: 40px auto 30px;
  }
  .event-box {
    width: 90%;
    margin: 0 auto 20px;
    border-top: 2px solid #000;
    border-bottom: 2px solid #000;
    padding: 10px 0;
    box-sizing: border-box;
    background:white;
  }

  .event-title {
    text-align: center;
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 5px;
  }

  .event-info {
    text-align: center;
    font-size: 13px;
    color: #666;
  }
  .event-image{
    width:90%;
    max-width:360px;
    display: block;
    margin:0 auto;
    
  }
  .bottom-section {
  width: 90%;
  margin: 40px auto 0;
  text-align: center;
}

.back-btn {
  display: inline-block;
  margin-top: 20px;
  padding: 12px 40px;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 12px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  font-size: 16px;
  font-weight: bold;
  color: #333;
  text-decoration: none;
  transition: 0.2s;
}

.back-btn:hover {
  background-color: #f0f0f0;
  box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
}

.divider {
  width: 90%;
  height: 2px;
  background: #333;
  margin: 40px auto 20px;
}
  
 
 </style>
</head>
<body>
<div class="container">
  <div class="title">이벤트</div>
  <div class="divider-top"></div>  
   
   <div class="event-box">
    <div class="event-title">해피펜션-하도하도3200</div>
    <div class="event-info">2018-12-01 ~ 2021-08-31&nbsp;&nbsp;|&nbsp;&nbsp;13,594</div>
  </div>
    <div>
      <img src="images/event/3200_1.png" class="event-image">
      <img src="images/event/3200_2.png" class="event-image">   
      <img src="images/event/3200_3.png" class="event-image">   
    </div>
   
  <div class="bottom-section">
    <div class="divider-bottom"></div>
    <a href="eventinput2" class="back-btn">목록</a>
  </div>
     
  
 </div>
</body>
</html>