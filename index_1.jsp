<%@ page import="com.cntt.base.Const"%>
<%@ page import="com.cntt.util.JspUtils"%>
<%@ page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<% 	
	Calendar now = Calendar.getInstance();						
	String year = String.valueOf(now.get(Calendar.YEAR));
	String month = String.valueOf(now.get(Calendar.MONTH)+1);
	String date = String.valueOf(now.get(Calendar.DATE));
	String hour = String.valueOf(now.get(Calendar.HOUR_OF_DAY));
	String week = String.valueOf(now.get(Calendar.DAY_OF_WEEK));
	String min = String.valueOf(now.get(Calendar.MINUTE));
	String sec = String.valueOf(now.get(Calendar.SECOND));
	
	if(month.length() <= 1)
		month = '0'+month;
	
	if(date.length() <= 1)
		date = '0'+date;

	if(hour.length() <= 1)
		hour = '0'+hour;
	
	if(min.length() <= 1)
		min = '0'+min;

	if(sec.length() <= 1)
		sec = '0'+sec;	
	
	int nowDate = Integer.parseInt(year+month+date);
	int nowDateHour = Integer.parseInt(year+month+date+hour);
	String nowDateTime = year+month+date+hour+min+sec;
	
	//System.out.println("["+nowDate+"]");
%>

<!DOCTYPE html>
<html lang="ko" class="no-js">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta property="og:image" content="https://www.goobne.co.kr/2021renew_img/red_bg_logo.png">
	<title>굽네치킨</title>
	
    <link rel="stylesheet" type="text/css" href="/onepage_fullscreen/full-page-scroll.css">
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='/JQuery-Snowfall-master/dist/slick.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    
    
<script>
 $( document ).ready( function() {
$('.no-js').addClass('visible');

});
</script>
<style type="text/css">
body{ -ms-overflow-style: none;} ::-webkit-scrollbar { display: none; } /*특정 부분 스크롤바 없애기*/ .box{ -ms-overflow-style: none; } .box::-webkit-scrollbar{ display:none; }
/*.no-js{opacity: 0;visibility: hidden;}
.visible{opacity:1;visibility: visible;
    }*/
   
.section1.bg,.section1.bg1{background-size:cover !important;;background:none !important;background-color: #afd1ea  !important;opacity: 1 !important;transition: 0.4s all !important}
 .flower_div_top{position:absolute;top:-5px;right:-23px;width:300px;}
  .flower_div_top_left{position: absolute;
    top: -15px;
    left: -17px;
    width: 300px;
    transform: rotate(238deg);}
.section1.bg4{background:#ffedec url(/2021renew_img/spring_bg_3.jpg) !important;background-size:cover !important;opacity: 1 !important;transition: 0.4s all !important;}    
.section1.bg2 {
    background:#afd1ea url(/2021renew_img/mainbanner/main_banner_bg_02.png) no-repeat bottom;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover;
        background-color: #4b7709  !important;
}
.section1.bg3 {
    background: url(/2021renew_img/mainbanner/dhuman_mainbanner_pc_bg.png) no-repeat bottom !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover;
}

.section1.bg2 .flower_div_top_left,.section1.bg2 .flower_div_top{opacity: 0;transition: 0.4s all;}    
.section1.bg2 .container_star{opacity: 0;transition: 0.4s all;}

.slider_img_background_bpset_menu{position:relative;margin: auto;}
.slider_img_background_bpset_menu_img{width:100%;max-height: 100% !important;}
.btn_text{position:absolute;top:23%;right:4%;width:22%;animation: motion 0.3s linear 0s infinite alternate; margin-top: 0;cursor: pointer;}
.btn_text img{image-rendering: auto !important;width:100% !important;}

.slider_img_background_img_m{display: none !important;}
.slick-slide .slider_img_background_img{width:60% !important;    min-width: 1100px;}
.slider_img_background_bpset_menu_2{width:16% !important;max-height: 100% !important;image-rendering: auto !important;}

#window .single-item04 img{max-height: 100%;    display: inline-block;}
#window .single-item04 .slick-dots{bottom:0;}
/* iOS only */ 
@supports (-webkit-touch-callout: none) { 
height: -webkit-fill-available; 
}
@keyframes motion {
	0% {margin-top: 0px;}
	100% {margin-top: 10px;}
}
-webkit-@keyframes motion {
	0% {margin-top: 0px;}
	100% {margin-top: 10px;}
}

</style>
    
  <jsp:include page="/include/header_doc.jsp" flush="false"/>  
  <jsp:include page="/include/header.jsp" flush="false"/>
  <style>
  @media (max-height: 864px){
section .slider_div {
    margin-top: 4%;}
.slick-slide .slider_img_background_bpset_menu_img {
    max-height: 100% !important;
}  

.slick-slide .slider_img_background_bpset_menu_img {
    width: 80% !important;
}
/*.slick-slide img.slider_img_background_02{width:75% !important;}
.slick-slide img.slider_img_background{margin-top: 90px;}*/
.section1.bg3 {
    background: url(/2021renew_img/mainbanner/dhuman_mainbanner_pc_bg.png) no-repeat center !important;}
/*.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 157px !important;
}
.slick-slide img.slider_img_background_02 {
    padding-top: 97px !important;}*/
}
@media (max-height: 512px){
.slick-slide .slider_img_background_img_m{max-height: 100% !important;}
.slider_img_background_bpset_menu_2 {
    width: 18% !important;
}

}

  @media only screen and (max-width:512px){
  .slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 90px !important;
}
  }
  @media only screen and (max-width:500px){
.flower_div_top{width:230px;}
  .flower_div_top_left{width:230px;}
}
@media only screen and (max-width:414px){
.flower_div_top{width:220px;}
  .flower_div_top_left{width:220px;}
  .navbar-default .navbar-brand img{width:115px !important;}
  .container>.navbar-header{padding:0 3% 0 0 !important; }
  .slick-slide .slider_img_background_img_m {
    width: 95% !important;max-height: 100% !important; 
}
}
@media only screen and (max-width:360px){
.flower_div_top{width:200px;}
  .flower_div_top_left{width:200px;}
   .slick-slide .slider_img_background_img_m{margin-top:10px !important;}
}
@media only screen and (max-width:320px){
.flower_div_top{width:180px;}
  .flower_div_top_left{width:180px;}
}
.slider_img_background_bpset_title {width: 25% !important;}
.slider_img_background_bpset_btn {margin-top: 0.9% !important;width: 17% !important;image-rendering: auto !important;}
.slider_img_background_bpset_menu {width: 70% !important;}
 @media only screen and (max-width:1420px){
  .slider_img_background_bpset_menu {
    width: 75% !important;    margin-top: 4%;
} 
.slider_img_background_bpset_title {
    width: 31% !important;
}
   }
@media only screen and (max-width:1200px){
.slick-slide .slider_img_background_img {
    width: 90% !important;
    min-width: auto;
}
}

@media only screen and (max-width:1024px){
.slider_img_background_bpset_title {width: 41% !important;margin-top: 6.5% !important;}
.slider_img_background_bpset_btn {margin-top: 1.1% !important;width: 26% !important;}
.slider_img_background_bpset_menu {width: 80% !important;}

.slick-slide .slider_img_background_img_m{display: block !important;    max-width: 500px !important;}
.slider_img_background_bpset_menu_2 {
    width: 30% !important;}
.slick-slide .slider_img_background_img{display: none !important;}
}
@media only screen and (max-width:768px){
.slider_img_background_bpset_title {width: 45% !important;margin-top: 6.5% !important;}
.slider_img_background_bpset_btn {margin-top: 2.5% !important;width: 45% !important;}
.slider_img_background_bpset_menu {width: 93% !important;}
.slick-slide .slider_img_background_bpset_menu_img {
    width: 100% !important;
}
.btn_text{right:0;top:26%;}
.flower_div_top,.flower_div_top_left{width:186px;}
.slick-slide .slider_img_background_img_m{width:80% !important;}
.slider_img_background_bpset_menu_2 {
    width: 40% !important;
}
}
  @media only screen and (max-width:717px){
  .slick-slide .slider_img_background_img_m{width: 44% !important;}
  .slider_img_background_bpset_menu_2 {
    width: 18% !important;
}
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 25px !important;
}
.slick-slide img.slider_img_background_02 {
    width: 54% !important;    margin-top: 0 !important;
}
  }
 @media only screen and (max-width:512px){
 .slick-slide img.slider_img_background_02 {
    width: 70% !important;    margin-top: 0 !important;
}
.slick-slide .slider_img_background_img_m {
    width: 70% !important;
}
.slider_img_background_bpset_menu_2 {
    width: 35% !important;
}
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 70px !important;
}
 }  

@media only screen and (max-width:500px){
.slider_img_background_bpset_title {width: 65% !important;margin-top: 6.5% !important;}
.slider_img_background_bpset_btn {margin-top: 2.5% !important;width: 55% !important;}
.slider_img_background_bpset_menu {width: 105% !important;margin-top: 7% !important;}
.slick-slide img.slider_img_background_02{width:100% !important;}
.btn_text {
    right: 12%;
    top: 64%;}
.slick-slide .slider_img_background_img_m{width:90% !important;}
.slider_img_background_bpset_menu_2 {
    width: 50% !important;
}    
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 99px !important;
}
.section1.bg3 .flower_div_top_left,.section1.bg3 .flower_div_top{opacity: 0;}    
.section1.bg3 .container_star{opacity: 0;}
.slick-slide img.slider_img_background_02{margin-top: 43px !important;}
}	

@media only screen and (max-width:375px){
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 125px !important;
}
}
@media only screen and (max-width:320px){
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 47px !important;
}
}
  @media only screen and (max-width:280px){
 .slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 150px !important;
} 
.slick-slide img.slider_img_background_02 {
    padding-top: 25% !important;}
  }
/* 태블릿, 아이패드 */

@media only screen and (min-device-width : 768px) and (max-device-width : 1023px) and (orientation : portrait) {
.slider_img_background_bpset_menu {width: 95% !important;}
.flower_div_top,.flower_div_top_left {
    width: 319px;
}
.slider_img_background_bpset_btn {
    width: 47% !important;
}
.slider_img_background_bpset_title {
    width: 50% !important;}

}
/* 아이패드 프로 */

@media only screen and (min-device-width : 1024px) and (max-device-width : 1366px) and (orientation : portrait) {
.btn_text{right:0;}
.slider_img_background_bpset_menu {width: 95% !important;}
.flower_div_top,.flower_div_top_left {
    width: 445px;
}

.slider_img_background_bpset_btn {
    width: 34% !important;
}
.slider_img_background_bpset_title {
    width: 54% !important;margin-top:0 !important;}
.slick-slide .slider_img_background_img_m{max-width: 100% !important; width:70% !important;}    

}
@media only screen and (min-device-width : 1280px) and (max-device-height : 800px) {
.slider_img_background_bpset_title {
    width: 32% !important;}
.slider_img_background_bpset_btn {
    width: 23% !important;
}  
.slider_img_background_bpset_menu {
    width: 75% !important;
}
.slick-slide img.slider_img_background_02{padding-top:0 !important;width:55% !important;}
.slick-slide img.slider_img_background_img{    max-width: 1000px !important;min-width: 850px;}
}
@media only screen and (min-device-width : 1024px) and (max-device-height : 600px) {
.slider_img_background_bpset_title {
    width: 32% !important;}
.slider_img_background_bpset_btn {
    width: 23% !important;
}  
.slider_img_background_bpset_menu {
    width: 60% !important;
}
.slick-slide img.slider_img_background_02 {
    width: 61% !important;
}
.slick-slide img.slider_img_background_02{padding-top:0 !important;width:55% !important;}
.slick-slide .slider_img_background.slider_img_background_img_m{    margin-top: 20px !important;max-width: 337px !important;    max-height: 100% !important;}
.slider_img_background_bpset_menu_2 {
    width: 15% !important;
}

}
</style>
<!---S:메인배너 수정시 파일명 버전 올리고 css파일 수정----->
<link href='/JQuery-Snowfall-master/dist/re_mainbanner_v8.css' rel='stylesheet' type='text/css'>
<!---E:메인배너 수정시 파일명 버전 올리고 css파일 수정----->

<script>
  // 이벤트종료시점 기록
  var countDownDate = new Date("March 20, 2022 23:59:59").getTime();
  
  var x = setInterval(function() {
  
    var now = new Date().getTime();
    var distance = countDownDate - now;
      
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    if ( hours < 10 ){hours = "0" + hours; } 
    else if ( hours > 9 ){ hours = hours; } 

    if ( minutes < 10 ){minutes = "0" + minutes; } 
    else if ( minutes > 9 ){ minutes = minutes; } 

    if ( seconds < 10 ){seconds = "0" + seconds; } 
    else if ( seconds > 9 ){ seconds = seconds; }  
    



// 타임이벤트 진행 타이머    
    document.getElementById("newcountdown").innerHTML = days + " : " + hours + " : "
    + minutes + " : " + seconds;
    document.getElementById("ori").style.visibility="visible";
    document.getElementById("new").className =" display_none";
// 이벤트 마감시 보여질 문구    
    if (distance < 0) {
      clearInterval(x);
      //document.getElementById("timesale").innerHTML = "<div class='endtxt'>이벤트가 마감되었습니다.</div>";
      document.getElementById("ori").className =" display_none";
      document.getElementById("new").style.visibility="visible";
      document.getElementById("new").classList.remove("display_none");
      document.getElementById("todayPopChk").style.backgroundColor="#0f616a";
      document.getElementById("closePopChk").style.backgroundColor="#0f616a";
    }
  }, 1000);
  </script>
  <style>
      .display_none{display:none;}
      
  </style>
</head>
<body id="page-top" class="index">

<!---S: 메인팝업--->

<div id="mask_popup"></div>
<span id="newcountdown" style="font-size:0;display:none;"></span>
<div class="window" id="window">
    <div class="slider single-item04" id="ori" style="visibility:hidden;">
        <div class="list_slider">
            <a target="_top" class="ori"><img src="2021renew_img/popup/popup_20220316.svg"></a>
        </div>
        <div class="list_slider">
            <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=60905"><img src="2021renew_img/popup/220302_popup_dhuman_2.jpg" ></a>
        </div>
    </div>
    <div id="new" style="visibility:hidden;">
        <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=60905"><img src="2021renew_img/popup/220302_popup_dhuman_2.jpg" ></a>
    </div>
    <div class="btn_wrap btn_blk">
        <ul class="popup_btn_ul ori">
            <li id="todayPopChk" class="web_order" onClick="javascript:todaycloseWin();" style="background:#cc3b42;">오늘하루 보지 않기</li>
            <li id="closePopChk" class="main_pop_close close" onClick="javascript:closeWin();" style="background:#cc3b42;">닫기</li>
        </ul>
    </div>
</div>

<!--<div class="window" id="window">
    <a href="https://m.dhuman.co.kr/event/free_event.php?sno=18#enp_mbris" target="_top" class="ori"><img src="2021renew_img/popup/popup_20220315_1.svg"></a>
     <a href="https://m.dhuman.co.kr/event/free_event.php?sno=18#enp_mbris" class="new" target="_blank"><img src="2021renew_img/popup/220302_popup_dhuman_2.jpg" ></a>
    <div class="btn_wrap btn_blk">
        <ul class="popup_btn_ul ori">
            <li id="todayPopChk" class="web_order" onClick="javascript:todaycloseWin();" style="background:#cc3b42;">오늘하루 보지 않기</li>
            <li class="main_pop_close close" onClick="javascript:closeWin();" style="background:#cc3b42;">닫기</li>
        </ul>
        <ul class="popup_btn_ul new">
            <li id="todayPopChk" class="web_order" onClick="javascript:todaycloseWin();" style="background:#0f616a;">오늘하루 보지 않기</li>
            <li class="main_pop_close close" onClick="javascript:closeWin();" style="background:#0f616a;">닫기</li>
        </ul>
    </div>
</div>-->
       
   
<!---E: 메인팝업--->


 <div id="main" class="scroll-container">
		<section class="section1 bg">
            <div class="flower_div_top_left"><img src="/2021renew_img/flower_icon_r_1.png"></div>
            <div class="flower_div_top"><img src="/2021renew_img/flower_icon_r_1.png"></div>
          <div class="slider_div">
            <div class="slider single-item">
            <!--- 동영상이 첫번째 슬라이드 일때 적용 사항 : ① 첫번째 비디오 태그에 autoplay 추가, 첫번째 외 N번째는 태그에 autoplay삭제 / ② re_common_(버전 업 최상위 ex:re_common_v3.js) js파일 autoplay: false로 설정---->
            <!--- 동영상이 두번째부터~(즉, 첫번째 외 슬라이드 일때) 혹은 첫번째 슬라이드가 이미지 일 때 적용 사항 :  ① 비디오 태그에 autoplay삭제 / ② re_common_(버전 업 최상위 ex:re_common_v3.js) js파일 autoplay: true로 설정---->
				  <div class="list_slider">
                      
                       <!--<a href="https://simte.xyz/%EC%82%AC%EB%82%B4%EC%97%B0%EC%95%A0%EC%9C%A0%ED%98%95%ED%85%8C%EC%8A%A4%ED%8A%B8" target="_blank"><img src="2021renew_img/mainbanner/bpset_mainbanner_btn.png" class="slider_img_background_bpset_btn"></a>-->
                       <div class="slider_img_background_bpset_menu">
                           <img src="2021renew_img/mainbanner/bpset_mainbanner_menu_1.png" class="slider_img_background_bpset_menu_img">
                           <div class="btn_text" onClick="window.open('https://simte.xyz/%EC%82%AC%EB%82%B4%EC%97%B0%EC%95%A0%EC%9C%A0%ED%98%95%ED%85%8C%EC%8A%A4%ED%8A%B8');"><img src="2021renew_img/mainbanner/bpset_mainbanner_menu_2.png" class="slider_img_background_bpset_menu_1"></div>
                       </div>
                  </div>
                  <div class="list_slider">
                       <img src="2021renew_img/mainbanner/main_banner_img_07_1.png" class="slider_img_background slider_img_background_02">
                  </div>
                  <div class="list_slider">
                       <img src="2021renew_img/mainbanner/dhuman_mainbanner_pc.png" class="slider_img_background slider_img_background_img" style="image-rendering:auto;">
                       <img src="2021renew_img/mainbanner/dhuman_mainbanner_m.png" class="slider_img_background slider_img_background_img_m" style="image-rendering:auto;">
                       <div class="" onClick="window.open('https://order.goobne.co.kr:8481/login/login.aspx');"><img src="2021renew_img/mainbanner/dhuman_mainbanner_btn.png" class="slider_img_background_bpset_menu_2"></div>
                  </div>
				 <div class="list_slider">
                     <div class='container container_video' style="margin-top: 4%;">
                      <video id="vid" width="100%" height="auto" muted controls>
                        <source src="2021renew_img/mainbanner/gouleon-set.mp4" type="video/mp4">
                    </video>
                    </div>
                 </div>
                
                 
                 <!--<div class="list_slider">
                    <div class='container container_video' style="margin-top: 4%;">
                      <video id="vid" width="100%" height="auto" muted controls>
                        <source src="2021renew_img/mainbanner/gouleon-set.mp4" type="video/mp4">
                    </video>
                    </div>
                 </div>-->
             </div>
             <span class="pagingInfo"></span>
            </div>  
          <!---S: 눈효과---->
          <jsp:include page="/JQuery-Snowfall-master/examples/indexpure_flower.html" flush="true"/>
          <!---E: 눈효과---->
          <div class="footer_bg"></div>
          <div class="bg_sub"></div>
          
            <div class="footer_nav_arrow">
                <a href="#01" class="arrow-container">
                    <div class="arrow"></div> 
                    <span>Scroll</span>
                </a>
            </div>
          <div class="footer_ai">
              <ul class="footer_ai_ul">
                  <li><img src="2021renew_img/left_ai.png" ></li>
                  <li><img src="2021renew_img/right_ai.png" ></li>
                  <li><img src="2021renew_img/bottom.png" ></li>                 
              </ul>
          </div>
		</section>
		<section class="section2" >
            <div class="slider_body">
            <h2 class="title_h2">오늘의 치PD</h2>
                <div class="container_width" >
                <div class="slider single-item02">
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="https://www.goobne.co.kr/menu/new_bp-set.jsp"><img src="2021renew_img/mainbanner/todayschiPD_bpset_4.png" class="d_img" style="image-rendering: auto;"></a></p>
                          <ul>
                              <li>사내맞선 세트</li>
                              <li>굽네 불금치킨 + 굽네 바비큐 시카고 딥디쉬 피자</li>
                              <li><a href="https://www.goobne.co.kr/menu/new_bp-set.jsp" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=15&cateid=04&productid=31247&classbtn="><img src="2021renew_img/mainbanner/cd_pizza.png"  class="d_img"></a></p>
                          <ul>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li><a href="/menu/menu_view.jsp?classid=15&cateid=04&productid=31247&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
				  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31595&classbtn="><img src="2021renew_img/mainbanner/emt_dessert.png" class="d_img"></a></p>
                          <ul>
                              <li>굽네 에그미니 타르트</li>
                              <li>굽네 에그미니 타르트</li>
                              <li><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31595&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                         <p class="list_img"> <a href="/menu/menu_view.jsp?classid=10&cateid=02&productid=30890&classbtn="><img src="2021renew_img/mainbanner/gb_chicken.png" ></a></p>
                          <ul>
                              <li>굽네 고추바사삭</li>
                              <li>굽네 고추바사삭</li>
                              <li><a href="/menu/menu_view.jsp?classid=10&cateid=02&productid=30890&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=966de7ca19016063e32e62d13f999f86e8140e2a6543a0ee220e5f71ba531b6b2aa28f0dbc24179424cca1149a0b7fe9b91c99ddcb5dae3c45a6637c2df4b7b38948d84ac86ed00822fc79778f68787d0ad992e7187aeb933d745d0a7c4d32fa5af50d575e878e98cfb3b0a64e6e59abd2ced283711fa72cfe3ffb30b0cc36ca&cateid=a4e94b07f2e6e13d2a938433c3da19d42ff46d32eacecb7fb68e67322450f9cb4e880ffd6899dae1e163e8726b731d0d70c63bc26df74451f6989144e92d01a700d8490810e1a8c0860d272d8fbdd28a2144cfc304a770756b0b84d2347f5e84d912e2eda4a7f1df0f5f00530292b7697ed0baae889df7639a082c7eecc6c8c4&productid=&classbtn=15" ><img src="2021renew_img/mainbanner/scd_pizza.png" ></a></p>
                          <ul>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li><a href="/menu/menu_view.jsp?classid=966de7ca19016063e32e62d13f999f86e8140e2a6543a0ee220e5f71ba531b6b2aa28f0dbc24179424cca1149a0b7fe9b91c99ddcb5dae3c45a6637c2df4b7b38948d84ac86ed00822fc79778f68787d0ad992e7187aeb933d745d0a7c4d32fa5af50d575e878e98cfb3b0a64e6e59abd2ced283711fa72cfe3ffb30b0cc36ca&cateid=a4e94b07f2e6e13d2a938433c3da19d42ff46d32eacecb7fb68e67322450f9cb4e880ffd6899dae1e163e8726b731d0d70c63bc26df74451f6989144e92d01a700d8490810e1a8c0860d272d8fbdd28a2144cfc304a770756b0b84d2347f5e84d912e2eda4a7f1df0f5f00530292b7697ed0baae889df7639a082c7eecc6c8c4&productid=&classbtn=15" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                    </div>
                      <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31386&classbtn="><img src="2021renew_img/mainbanner/bb_dessert.png" class="d_img"></a></p>
                          <ul>
                              <li>바게트볼 갈릭크림</li>
                              <li>바게트볼 갈릭크림</li>
                              <li><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31386&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
             </div>
              <span class="pagingInfo02"></span>
              <span class="pagingInfo02_1"></span>
             </div>
            </div>
            
            <div class="footer_nav_arrow">
                <a href="#02" class="arrow-container">
                    <div class="arrow"></div> 
                    <span>Scroll</span>
                </a>
            </div>
		</section>
       
		<section class="section3">
			<div class="slider_body" style="height:100%;">
                <h2 class="title_h2" style="color:#3a3a3a;font-size: 2em;"><img src="/2021renew_img/icon_02.svg" style="height:30px;width:30px;    vertical-align: text-bottom;"> 더 알고 싶은 굽네</h2>
                <div class="container" style="height:calc(100% - 45px);">
                    <ul class="top_footer_list">
                        <li class="top_footer_list_li">
                            <h4>창업문의</h4>
                            <span class="sub_font">굽네치킨 가족을 모집합니다.</span>
                            <span class="call_num">1899-9458</span>
                            <a href="/franchise/franchise_qna.jsp" class="footer_list_link_a">바로가기 ></a>
                            <img src="/2021renew_img/icon_03.svg" style="height:100px;width:100px;" class="footer_list_img">
                        </li>
                        <li class="top_footer_list_li_slick">
                            <div class="slider_div">
                              <div class="slider single-item03">								  
								<div class="list_slider cover_slider1">
                                      <ul class="list_slider_ul_sns">
                                         <li style="width:100%;background: none;">
                                             <img src="2021renew_img/footer_list_img/sns_bpset_pc_title_220317_2.png" class="cover_img pc_sns">
                                             <img src="2021renew_img/footer_list_img/sns_bpset_mo_title_220317_2.png" class="cover_img mobile_sns">
                                        </li> 
                                     </ul>
                                  </div>
								  <div class="list_slider">
                                      <ul class="list_slider_ul_sns">
                                          <li>
                                              <img src="/2021renew_img/footer_list_img/sns_start_pc_220316.jpg" class="pc_sns">
                                              <img src="/2021renew_img/footer_list_img/sns_start_mo_220316.jpg" class="mobile_sns" style="object-position: center;">
                                          </li>
                                          <li>
                                              <div class="top_sns">
                                                  <a href="https://www.instagram.com/p/CajcFSNPJ_W/" target="_blank">
                                                      <span class="top_sns_left"><img src="/2021renew_img/icon_05_1.svg">the___goobster</span>
                                                      <span class="top_sns_right"><img src="/resources/images/contents/advertise/icon_social_insta.jpg"></span>
                                                  </a>
                                              </div>
                                              <div class="container_sns">
												따뜻하고 포근한 3월 시작 💪
												⠀
												화사한 햇살과 함께
												개강도 개학도.. 시작? 🏃 🏃
												⠀
												이제 시작하는 끝 없는 과제와
												시련에.. 힘들고 지칠 때
												에디터G한테 기대🎵												⠀
												⠀
												⠀
												#우왕_봄이다 #이번_겨울_너무_추웠어
												#3월은_대학생이_제일세다며?
												#그_이유는_개강해서 #깔깔유머
												#부장님_유머코드_공부중
                                              </div>
                                              <div class="bottom_sns">
                                                  <span><div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#999" height="20" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div></span>	
                                                <div class="sns_date">
                                                    2022년 3월 1일
                                                </div>
                                              </div>
                                          </li>
                                      </ul>
                                   </div>
								  <!--- 220324 오픈
								  	 <div class="list_slider cover_slider2">
                                      <ul class="list_slider_ul_sns">
                                         <li style="width:100%;background: none;">
                                             <img src="2021renew_img/footer_list_img/sns_goodad_pc_title_6.png" class="cover_img pc_sns">
                                             <img src="2021renew_img/footer_list_img/sns_goodad_mo_title.png" class="cover_img mobile_sns">
                                        </li> 
                                     </ul>
                                  </div> --->
                              </div>
                            </div>
                        </li>
                        <li class="top_footer_list_li">
                            <img src="/2021renew_img/icon_04.svg" style="height:100px;width:100px;">
                            <div class="bottom_right">
                                <h4>고객센터</h4>
                                <span class="call_num">1661-9494</span>
                                <span class="sub_font">AM 12:00 ~ PM 11:00</span>
                                    <a href="/customer/cscenter_regi.jsp" class="footer_list_link_a">바로가기 ></a>
                            </div>
                        </li>
                        <li class="top_footer_list_li">
                            <div class="youtube_div">
                            <h4><img src="/2021renew_img/youtube.png" style="width:30px;margin-right:5px;">굽네 TV </h4>
                            <span class="go_link"><a href="https://www.youtube.com/channel/UCwx2AFi2Zg8_SYzjaJ7Hfmg" target="_blank">바로가기 ></a></span>
                            </div>
                            <ul class="youtube_list">
                                <li style="background:url('/2021renew_img/youtube/youimg_1_220316.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=ID3IjxVvOT0')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/youimg_2_220316.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=h0Gm4o_gaJM')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/youimg_3_220316.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=Bn1YnqW3uXY')"><img src="/2021renew_img/youtube.png"></li>
                            </ul>
                        </li>
                    </ul>
                  
                
				<div class="footer">
                    <!-- Footer -->
                    <jsp:include page="/include/footer.jsp" flush="false"/>
                    <!-- //Footer -->
                </div>
                </div>
			</div>
            
		</section>
    </div>
    
	    
    </div>
    
    <link href='/JQuery-Snowfall-master/dist/re_popup_v3.css' rel='stylesheet' type='text/css'>
    <script src="/JQuery-Snowfall-master/dist/re_popup_v6.js"></script>
	<script src="/onepage_fullscreen/full-page-scroll.js"></script>
    <script src="/JQuery-Snowfall-master/dist/slick.js"></script>
  <script src="/JQuery-Snowfall-master/dist/re_common_v5.js"></script>
<!-- 순살공급중지팝업 왼쪽 정렬 스타일 추가 부분 20220203 내림
<style>
#window{    max-width: 400px;
    left: 0;
    transform: translate(0,0);
    top: 60px;
    box-shadow: 2px 2px 10px #4b3e3e;
    border-radius: 20px;z-index: 99;}
#window img{image-rendering: pixelated;}
.popup_btn_ul li{background:#cc3b42;}
.btn_blk {margin-top:-1px;}
</style>
-->

  
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-44521541-5', 'anijs.github.io');
      ga('send', 'pageview');

    </script>
</body>
</html>

