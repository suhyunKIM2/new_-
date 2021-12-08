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
	<title>굽네치킨</title>
	<link rel="stylesheet" type="text/css" href="/onepage_fullscreen/full-page-scroll.css">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap Core CSS -->
    <link href="/scrollreveal/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/scrollreveal/css/freelancer.css" rel="stylesheet" type="text/css">

    <!-- Animate CSS library -->
    <link href="/scrollreveal/css/anicollection.css" rel="stylesheet" type="text/css">


    <!-- Custom -->
    <link href="/scrollreveal/css/custom.css" rel="stylesheet" type="text/css">

    <!-- Syntax Highlight -->
    <link rel="stylesheet" href="/scrollreveal/css/markdown-highligth.css">

    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='/JQuery-Snowfall-master/dist/slick.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
body{ -ms-overflow-style: none; } ::-webkit-scrollbar { display: none; } /*특정 부분 스크롤바 없애기*/ .box{ -ms-overflow-style: none; } .box::-webkit-scrollbar{ display:none; }
/*.no-js{opacity: 0;visibility: hidden;}
.visible{opacity:1;visibility: visible;
    }*/
@font-face {
font-family: 'TmoneyRoundWindRegular';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
font-weight: normal;
font-style: normal;
}
@font-face {
font-family: 'TmoneyRoundWindExtraBold';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff') format('woff');
font-weight: normal;
font-style: normal;
}
body,.navbar,h1, h2, h3, h4, h5, h6,header .intro-text .name{    font-family:'TmoneyRoundWindRegular',Helvetica,Arial,sans-serif;}
a, a:hover, a:focus, a:active, a.active:hover{    text-decoration: none !important;color:#000;}
.section1 {
    background-color: #ca291a;
    position:relative;
    padding:0;
}

.section2 {
    background-color: #f5f2e3; 
}

.section3 {
    background-color:  #fffdf9;
    padding:120px 0 8px;
}

.section4 {
    background-color:  #CC938E;
}

.section5 {
    background-color:  #D2C598;
}
section{width:100%;position:relative;overflow-x: hidden;    overflow-y: hidden;}
.scroll-container .section5{height:100%;}
section .slider_body {
    text-align: center;
    position: relative;
    top: 50%;  
    transform: translateY(-50%);
    z-index: 9;
}

section .slider_div{position:absolute;top:50%;left:50%;transform: translate(-50%,-50%);z-index: 9;width:100%;padding-bottom: 129px;margin-top: -7%;max-height: 764px;}

.section1 .slider_div{margin-top:0;}
.section3 .footer{position:absolute;bottom:0;left:50%;transform: translateX(-50%);width:100%;}
.section3 .footer p{font-size:12px;}
.section3 .footer #footer{padding:0;border-top:0;margin: 0;}
.slick-slide img{margin:auto; width:auto;max-height:450px;    image-rendering: pixelated;}
.list_slider .title{font-family:'TmoneyRoundWindExtraBold';color:#fff;letter-spacing:-4px;font-size:6em;text-align: center;}
.list_slider .subtitle{font-family:'Noto Sans KR';color:#fff;letter-spacing:-1px;font-size:1.8em;text-align: center;}
.section1{background:#98C19F;}
.section1:before{opacity: 1;}
.section1.bg{background:#ca291a;opacity: 1; transition: 0.4s all;}
.section1.bg1{background:#ca291a;opacity: 1;transition: 0.4s all;}
.section1.bg2{background:#eb7c09; opacity: 1;transition: 0.4s all;}
.section1.bg3{background:#ffce76; opacity: 1;transition: 0.4s all;}

.navbar-fixed-top{padding:0;}
.navbar-brand {
padding: 9px 15px;
}
.navbar-default{background-color:rgba(202,41,26,1);}
.footer_ai{position:absolute;bottom:0;width:100%;}
.footer_ai_ul{position: relative;width:100%;height:166px;}
.footer_ai_ul li{position:absolute;bottom:7px;;width:17%;z-index: 8;min-width: 300px;}
.footer_ai_ul li img{image-rendering: pixelated;}
.footer_ai_ul li:nth-child(1){left:0;}
.footer_ai_ul li:nth-child(2){right:-17px;}
.footer_ai_ul li:nth-child(3){right:auto;;left:0;width:101%;bottom:-4px;z-index: 3;transform: rotate(0.2deg);}
.footer_ai_ul li:nth-child(3) img{width:100%;height:28px;}

.slick-arrow{position:absolute;bottom:-100px;left: 50%;transform: translateX(-50%);color:#000;font-size: 3em;    cursor: pointer;}
.slick-prev{margin-left:-25px;}
.slick-next{margin-left:25px;}
.pagingInfo{position:absolute;bottom:44px;left: 50%;transform: translateX(-50%);color:#000;font-size: 1em;}
.pagingInfo02,.pagingInfo02_1{position:absolute;bottom:-77px;left: 50%;transform: translateX(-50%);color:#000;font-size: 1em;}
.slick-dots{text-align:center;padding-left:0;background: rgba(0,0,0,0.5);padding:0.1% 2%;border-radius: 20px;margin:auto;position:absolute;left:50%;transform: translateX(-50%);bottom:-43px;}
.slick-dots li {display:inline-block;    vertical-align: middle;    margin: 0 3px;line-height: 26px;height:26px;}
.slick-dots li a{font-size:1.5em;    text-decoration: none;    color: #fff;    line-height: 23px;    cursor: pointer;}
.slick-dots li.slick-active a{font-size:3em;    line-height:16px;}
.slick-dots li a:hover{border-bottom:0; }
.dots{z-index: 9;}
.single-item02 .slick-arrow{bottom:-91px;}
.slider_div .slider {
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.4s ease;
    -webkit-transition: opacity 0.4s ease;
}


.slider_div .slick-initialized {
    visibility: visible;
    opacity: 1;    
}


.footer_nav_arrow{position:absolute;bottom:30px;left:50%;transform: translateX(-50%);z-index: 9;}
.arrow-container {
position: relative;
padding-top: 60px;
color: #020202;
font-family: 'TmoneyRoundWindRegular';

}
.arrow-container span{
-webkit-animation: sdb2 2s infinite;
animation: sdb2 2s infinite;}
.arrow-container .arrow {
position: absolute;
top: 0;
left: 50%;
width: 24px;
height: 24px;
margin-left: -12px;
border-left: 1px solid #000;
border-bottom: 1px solid #000;
-webkit-transform: rotate(-45deg);
transform: rotate(-45deg);
-webkit-animation: sdb 2s infinite;
animation: sdb 2s infinite;
box-sizing: border-box;
}
/*.no-js { visibility: hidden;opacity: 0;} 
.visible{visibility: visible;opacity: 1;}*/
@-webkit-keyframes sdb {
0% {
-webkit-transform: rotate(-45deg) translate(0, 0);
opacity: 0;
}
50% {
opacity: 1;
}
100% {
opacity: 0;
}
}
@keyframes sdb {
0% {
transform: rotate(-45deg) translate(0, 0);
opacity: 0;
}
50% {
opacity: 1;
}
100% {
transform: rotate(-45deg) translate(-20px, 20px);
opacity: 0;
}
}

@-webkit-keyframes sdb2 {
0% {
-webkit-transform: rotate(0deg) translate(0, 0);
opacity: 0;
}
50% {
opacity: 1;
-webkit-transform: rotate(0deg);
}
100% {
opacity: 0;
}
}
@keyframes sdb2 {
0% {
transform: rotate(0deg) translate(0, 0);
opacity: 0;
}
50% {

opacity: 1;
transform: rotate(0deg);
}
100% {
transform: rotate(0deg) translate(0, 0);
opacity: 0;
}
}

@media (max-width: 767px){
section {padding:0;}
}
.container_width{width:70%;margin:0 auto;}
.title_h2{font-weight:600;font-family:'TmoneyRoundWindExtraBold'; letter-spacing: -2px;color:#252525;    margin-bottom:20px;}
.list_section_02 ul li{font-family:'TmoneyRoundWindRegular'; letter-spacing:-2px;    margin-bottom: 2%;}
.list_section_02 ul li:nth-child(1){font-size:2em;font-weight: 600;}
.list_section_02 ul li:nth-child(2){font-size:1.2em;}
.list_section_02 ul li:nth-child(3) a{width:40%;display: inline-block;margin:0.5%;border-radius: 20px;padding:2% 0;color:#fff;    font-size: 1.3em;}
.list_section_02 ul li:nth-child(3) a.more_btn{background:#8f8f8f;}
.list_section_02 ul li:nth-child(3) a.order_btn{background:#e02828;}
.list_img{height:350px;position:relative;}
.list_img img{width:90%;max-height:100%;height:auto;position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);}
.list_img img.d_img{width: 70%;}
.dots li a:before,.dots li a.active:before{background: rgba(0,0,0,1);}
.pagingInfo02_1{display:none;}

@media only screen and  (max-width: 1300px) {
.list_section_02 ul li:nth-child(1){font-size:18px;}
.list_section_02 ul li:nth-child(2){font-size:15px;}
.list_img{height:250px;}
.title_h2{font-size:2.5em;}
}
@media only screen and  (max-width: 799px) {
.pagingInfo02{display:none;}
.pagingInfo02_1{display:block;}
.container_width{width:100%;}

.single-item02 .slick-slide .list_slider{    width: 80% !important;opacity: 0.5;    transform: scale(0.8);    background: #fff;
    padding: 30px 10px 60px;
    border-radius: 20px;}
.single-item02 .slick-active .list_slider{width:100% !important;opacity: 1;    transform: scale(1);transition: transform .1s cubic-bezier(.4, 0, .2, 1);}
.single-item02 .slick-slide{margin: 0 -0.5%;}
}
@media all and (max-height:720px){
.title_h2 {
    font-size: 2em;
}
.list_img {
    height: 178px;
}
.single-item02 .slick-dots {
    bottom: -44px;
}
.pagingInfo02, .pagingInfo02_1{bottom:-77px}
.single-item02 .slick-arrow {
    bottom: -90px;
}
}
@media only screen and  (max-width: 500px) {
.list_section_02 ul li:nth-child(1){font-size:15px;}
.list_section_02 ul li:nth-child(2){font-size:13px;}
.title_h2{font-size:2em;}
.pagingInfo02, .pagingInfo02_1{bottom:-74px;}
.single-item02 .slick-dots{bottom:-40px;}
.single-item02 .slick-arrow{bottom:-89px;}
.list_section_02 ul li:nth-child(3) a{font-size:1em;}
}
@media only screen and  (max-width: 499px) {
.list_img{height:200px;}
.slick-slide img, .player_div{max-height:100%;}
.single-item02 .slick-slide .list_slider{padding:10px 10px 30px;}
section .slider_body{margin-top:-4%;}
}
@media only screen and  (max-width: 360px) {
.list_img{height:150px;}
.title_h2{font-size:1.5em;}
}
</style>
    
  <jsp:include page="/include/header_doc.jsp" flush="false"/>  
</head>
<body id="page-top" class="index">
    <jsp:include page="/include/header_2021_re.jsp" flush="false"/>

 <div id="main" class="scroll-container">
		<section class="section1 bg">
            
          <!---S: 눈효과---->
          <jsp:include page="/JQuery-Snowfall-master/examples/indexpure_star.html" flush="true"/>
          <!---E: 눈효과---->
          <div class="footer_bg"></div>
          <div class="bg_sub"></div>
          <div class="slider_div">
            <div class="slider single-item">
                  <div class="list_slider">
                      <p class="title">굽네 불금치킨</p>
                      <img src="2021renew_img/mainbanner/bg_chicken.png" >
                      <p class="subtitle">황금빛으로 불타는 맵달 장인 굽네의 새로운 무기!</p>
                  </div>
                  <div class="list_slider">
                      <p class="title">굽네 치PD </p>
                      <img src="2021renew_img/mainbanner/cpd_img_1.png" >
                      <p class="subtitle">오븐 마스터 굽네의 출구 없는 삼대장</p>
                 </div>
                 <div class="list_slider">
                     <!--<div class="player_div">
                      <iframe class="yt-player" src="2021renew_img/mainbanner/cpd.mp4" ></iframe>
                      </div>-->
                      <div class='container' style="margin-top: 4%;opacity: 0;">
                      <video width="100%" height="auto" autoplay loop muted controls>
                        <source src="2021renew_img/mainbanner/cpd.mp4" type="video/mp4">
                    </video>
                    </div>
                 </div>
             </div>
             <span class="pagingInfo"></span>
            </div>
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
                          <p class="list_img"> <img src="2021renew_img/mainbanner/bg_chicken.png" ></p>
                          <ul>
                              <li>굽네 불금치킨</li>
                              <li>굽네 불금치킨</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><img src="2021renew_img/mainbanner/cd_pizza.png" ></p>
                          <ul>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                      </div>
                      <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><img src="2021renew_img/mainbanner/emt_dessert.png"  class="d_img"></p>
                          <ul>
                              <li>굽네 에그미니타르트</li>
                              <li>굽네 에그미니타르트</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  
                  <div class="list_slider">
                      <div class="list_section_02">
                         <p class="list_img"> <img src="2021renew_img/mainbanner/gb_chicken.png" ></p>
                          <ul>
                              <li>굽네 고추바사삭</li>
                              <li>굽네 고추바사삭</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><img src="2021renew_img/mainbanner/scd_pizza.png" ></p>
                          <ul>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                    </div>
                      <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><img src="2021renew_img/mainbanner/bb_dessert.png" class="d_img"></p>
                          <ul>
                              <li>바게트볼 갈릭크림</li>
                              <li>바게트볼 갈릭크림</li>
                              <li><a href="" class="more_btn">상세보기</a><a href="" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
             </div>
              <span class="pagingInfo02"></span>
              <span class="pagingInfo02_1"></span>
             </div>
            </div>
		</section>
        <style>
            .top_footer_list{position:absolute;height:calc(100% - 117px);width:100%;}
            .top_footer_list li.top_footer_list_li,.top_footer_list li.top_footer_list_li_slick{text-align:left;position: relative;float:left;height:389px;}
            .top_footer_list li.top_footer_list_li span{display:block;letter-spacing: -1px;}
            .top_footer_list li.top_footer_list_li span.sub_font{font-size:16px;margin:5px 0 0;}
            .top_footer_list li.top_footer_list_li span.call_num{font-size:24px;font-weight: 600;}
            .top_footer_list li.top_footer_list_li .footer_list_img{position:absolute;bottom:10px;right:10px;}
            .top_footer_list li.top_footer_list_li:nth-child(1),.top_footer_list li.top_footer_list_li:nth-child(3){width:35%;background:#ffe9ba;padding:4% 2.5%;}
            .top_footer_list li.top_footer_list_li:nth-child(4),.top_footer_list li.top_footer_list_li_slick{width:65%;background:#fff;overflow: hidden;}
            .top_footer_list li.top_footer_list_li:nth-child(3),.top_footer_list li.top_footer_list_li:nth-child(4){height:200px;}
            .top_footer_list li.top_footer_list_li:nth-child(1) span,.top_footer_list li:nth-child(1) h4{color:#502b0d;}
            .top_footer_list li.top_footer_list_li:nth-child(3){background:#efd8cd;}
            .top_footer_list li.top_footer_list_li:nth-child(4){background:#fffbf3;}
            .top_footer_list li.top_footer_list_li a.footer_list_link_a{color:#f9fd9d;background:#d52626;font-family: 'TmoneyRoundWindRegular';letter-spacing: -1px;    padding: 2px 30px;position:absolute;    bottom: 15%;}
            .slick-slide .list_slider_ul_sns img{max-height:100%;position:absolute;left:0;top:0;object-fit: cover;height:100%;    width: 100%; }
            .list_slider_ul_sns li{float:left;width:50%;min-height:390px;position:relative;}
            .section3 .slider_div{position:absolute;top:0;left:0;transform: translate(0%,0%);padding-bottom:0;margin-top:0;height: 100%;}
            .section3 .slider_div .slick-dots{bottom:15px;}
            .top_sns{padding:5px 10px;height:auto;overflow:hidden;border-bottom:1px solid #eee;}
            .top_sns a{color:#000;}
            .top_sns img{position:relative !important;    display: inline-block;}
            .top_sns .top_sns_left{float:left;}
            .top_sns .top_sns_left img{width:35px;height:35px;margin-right:5px;}
            .top_sns .top_sns_right{float:right;}
            .top_sns .top_sns_right img{margin-top:5px;width:25px;height:25px;}
            .container_sns{padding:5px 20px;font-size:12px;position:absolute;top:46px;width:100%;height: calc(100% - 115px);left:0;border-bottom:1px solid #eee;}
            .bottom_sns{position:absolute;bottom:0;left:0;width:100%;height:70px;    padding: 5px 10px;}
            .QBdPU.rrUvL{width:auto;display: inline-block;}
            .sns_date{font-size:11px;float:right;color:#999;}
            .bottom_right{width:65%;float:right;}
            .bottom_right a.footer_list_link_a{right:20px;}
        </style>
		<section class="section3">
			<div class="slider_body" style="height:100%;">
                <h2 class="title_h2" style="color:#7b736b;font-size: 2em;"><img src="/2021renew_img/icon_02.svg" style="height:30px;width:30px;"> 더 알고 싶은 굽네</h2>
                <div class="container" style="height:calc(100% - 60px);">
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
                                  <div class="list_slider">
                                      <ul class="list_slider_ul_sns">
                                          <li><img src="/2021renew_img/footer_list_img/sns_img_01.png"></li>
                                          <li>
                                              <div class="top_sns">
                                                  <a href="https://www.instagram.com/goobne__official/" target="_blank">
                                                      <span class="top_sns_left"><img src="/2021renew_img/icon_05.svg">goobne</span>
                                                      <span class="top_sns_right"><img src="/resources/images/contents/advertise/icon_social_insta.jpg"></span>
                                                  </a>
                                              </div>
                                              <div class="container_sns">
                                                 이벤트 설명글 공간
                                              </div>
                                              <div class="bottom_sns">
                                                  <span><div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#999" height="20" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div></span>	
                                                <div class="sns_date">
                                                    2021년 12월 15일
                                                </div>
                                              </div>
                                          </li>
                                      </ul>
                                   </div>
                                  <div class="list_slider">
                                      2번째 슬라이드 
                                  </div>
                              </div>
                            </div>
                        </li>
                        <li class="top_footer_list_li">
                            <img src="/2021renew_img/icon_04.svg" style="height:100px;width:100px;">
                            <div class="bottom_right">
                                <h4>고객센터</h4>
                                <span class="sub_font">AM 12:00 ~ PM 11:00</span>
                                <span class="call_num">1661-9458</span>
                                    <a href="/customer/cscenter_regi.jsp" class="footer_list_link_a">바로가기 ></a>
                            </div>
                        </li>
                        <li class="top_footer_list_li">dd</li>
                    </ul>
                  
                
				<div class="footer">
                    <!-- Footer -->
                    <jsp:include page="/include/footer.jsp" flush="false"/>
                    <!-- //Footer -->
                </div>
                </div>
			</div>
            
		</section>
		<!--<section class="section4">
			<div class="slider_body">
				<span><div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div>		</span>				
			</div>
		</section>-->
	    
       
    </div>
    
	    
    </div>
    
    
	<script src="/onepage_fullscreen/full-page-scroll.js"></script>
    <script src="/JQuery-Snowfall-master/dist/slick.js"></script>
    <script>


 $( document ).ready( function() {
     /*var filter = "win16|win32|win64|mac|macintel"; 
     if ( navigator.platform ) { 
     if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) { 
     //mobile 
     $('.section1').attr('id','link_01');
    $('.section2').attr('id','link_02');
    $('.section3').attr('id','link_03');
    $('.section4').attr('id','link_04');
    $('.section5').attr('id','link_05');
    $('.section1 .arrow-container').attr('href','#link_02');
    $('.section2 .arrow-container').attr('href','#link_03');
    $('.section3 .arrow-container').attr('href','#link_04');
    $('.section4 .arrow-container').attr('href','#link_05');
    $('.section5 .arrow-container').attr('href','#link_01');
     $.fn.fullpage.destroy('all');
     
     } else { 
     //pc 
     } }*/

 
 $(window).resize(function() { 
	 	//if($(window).width() >767) { 
			
			 if ($(window).width() >=0) {
					 self.name = 'reload';
					 self.location.reload(true);
				 }
				 else self.name = ''; 
		//	} 
			
	     });
         
    if ($(window).width() < 800) {
            $('.section1').attr('id','link_01');
            $('.section2').attr('id','link_02');
            $('.section3').attr('id','link_03');
            $('.section4').attr('id','link_04');
            $('.section5').attr('id','link_05');
            $('.section1 .arrow-container').attr('href','#link_02');
            $('.section2 .arrow-container').attr('href','#link_03');
            $('.section3 .arrow-container').attr('href','#link_04');
            $('.section4 .arrow-container').attr('href','#link_05');
            $('.section5 .arrow-container').attr('href','#link_01');
            $.fn.fullpage.destroy('all');
            
        }
        else {
            new fullScroll({
            displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true,
            
            });
        }
     
     

    });



    /*if ($(window).width() < 768) {
            $.fn.fullpage.destroy('all');
        }
        else {
            new fullScroll({
            scrollBar: true,
            scrollOverflow: true,
            responsiveWidth: 768,
            });
        }*/
    
		/*new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true
            
		});*/
        /*$( document ).ready( function() { 
        new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true,
		});
        });*/
    

    
    /*----section1_slick-------*/
    var $status = $('.pagingInfo');
    var $slickElement = $('.single-item');
    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status.text(i + '/' + slick.slideCount);
    });
    $('.single-item').slick({
      swipe : true,
      autoplay:false,
      autoplaySpeed:500,	
      /*fade:true,*/
      cssEase:"ease",
      easing:"ease",
      centerMode: true,
      centerPadding: '0',
      dots: true,
      nextArrow: '<small class="slick-next">&rsaquo;</small>',
      prevArrow: '<small class="slick-prev">&lsaquo;</small>',
      customPaging : function(slider, i) {
      var thumb = $(slider.$slides[i]).data();
      // return '<a>'+(i+1)+'</a>';
      return '<a>&bull;</a>';
    },
    });
    
    var $bg = $('.section1');
    var $slickElement = $('.single-item');
    $(".single-item").on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
    var i = (currentSlide ? currentSlide : 0) + 1;
        $bg.attr('class','section1').toggleClass('bg' + i);
});
 /*----//------*/
   
    /*----section2_slick-------*/
    var $status02 = $('.pagingInfo02');
    var $status02_1 = $('.pagingInfo02_1');
    var $slickElement2 = $('.single-item02');
    $slickElement2.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide :0) + 1;
        var i2 = (2 - -i)/3
        $status02.text(i2 + '/' + slick.slideCount/3);
    });
     $slickElement2.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status02_1.text(i + '/' + slick.slideCount);
    });
    $('.single-item02').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
      dots: true,

          nextArrow: '<small class="slick-next">&rsaquo;</small>',
          prevArrow: '<small class="slick-prev">&lsaquo;</small>',
          customPaging : function(slider, i) {
          var thumb = $(slider.$slides[i]).data();
          // return '<a>'+(i+1)+'</a>';
          return '<a>&bull;</a>';
        },
        responsive: [
        {
          breakpoint: 799,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: true,
            centerMode:true,
            centerPadding:'20vw',
            cssEase: 'linear',
            speed: 100,
            useTransform: true,
          }
        },
        ]
        }); 
/*----//------*/ 
    
    
    /*----section3_slick-------*/
   
    $('.single-item03').slick({
      swipe : true,
      autoplay:false,
      autoplaySpeed:500,	
      /*fade:true,*/
      cssEase:"ease",
      easing:"ease",
      centerMode: true,
      centerPadding: '0',
      dots: true,
      arrows:false,
      customPaging : function(slider, i) {
      var thumb = $(slider.$slides[i]).data();
      // return '<a>'+(i+1)+'</a>';
      return '<a>&bull;</a>';
    },
    });

 /*----//------*/    
    



 $( document ).ready( function() {
$('.no-js').addClass('visible');

});
    </script>

    
<!--    <script>

$(function(){

$('.no-js').addClass('visible');

});

</script>-->
    <script src="/scrollreveal/js/jquery-1.10.2.js"></script>
    <script src="/scrollreveal/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="/scrollreveal/js/classie.js"></script>
    <script src="/scrollreveal/js/cbpAnimatedHeader.js"></script>
    <script src="/scrollreveal/js/freelancer.js"></script>
    <script src="/scrollreveal/js/anijs/anijs.js"></script>
    <script src="/scrollreveal/js/anijs/helpers/scrollreveal/anijs-helper-scrollreveal.js"></script>
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

