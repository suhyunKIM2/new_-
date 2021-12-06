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
    
}

.section2 {
    background-color: #98C19F; 
}

.section3 {
    background-color:  #A199E2;
}

.section4 {
    background-color:  #CC938E;
}

.section5 {
    background-color:  #D2C598;
}
.scroll-container section{/*height:calc(100vh - 64px);*/height:100%;overflow: hidden;}

section{width:100%;position:relative;overflow-x: hidden;}
section .slider_body {
    text-align: center;
    position: relative;
    top: 50%;  
    transform: translateY(-50%);
    z-index: 9;
}
section .slider_div{position:absolute;top:50%;left:50%;transform: translate(-50%,-50%);z-index: 9;width:100%;padding-bottom: 129px;}
.slick-slide img{margin:auto; width:auto;max-height:450px;    image-rendering: pixelated;}
.list_slider .title{font-family:'TmoneyRoundWindExtraBold';color:#fff;letter-spacing:-4px;font-size:6em;text-align: center;}
.list_slider .subtitle{font-family:'Noto Sans KR';color:#fff;letter-spacing:-1px;font-size:1.8em;text-align: center;}
.section1{background:#98C19F;}
.section1:before{opacity: 1;}
.section1.bg{background:#ca291a;opacity: 1; transition: 0.4s all;}
.section1.bg1{background:#ca291a;opacity: 1;transition: 0.4s all;}
.section1.bg2{background:#eb7c09; opacity: 1;transition: 0.4s all;}

.navbar-fixed-top{padding:0;}
.navbar-brand {
padding: 9px 15px;
}
.navbar-default{background-color:transparent;}
.footer_ai{position:absolute;bottom:0;width:100%;}
.footer_ai_ul{position: relative;width:100%;height:166px;}
.footer_ai_ul li{position:absolute;bottom:7px;;width:17%;z-index: 8;min-width: 300px;}
.footer_ai_ul li:nth-child(1){left:0;}
.footer_ai_ul li:nth-child(2){right:-17px;}
.footer_ai_ul li:nth-child(3){right:auto;;left:0;width:100%;bottom:-3px;z-index: 3;transform: rotate(0.2deg);}
.footer_ai_ul li:nth-child(4){background:#ca291a;width:100%;height:64px;bottom:-65px;}

.single-item .slick-arrow{position:absolute;bottom:-100px;left: 50%;transform: translateX(-50%);color:#000;font-size: 3em;    cursor: pointer;}
.single-item .slick-prev{margin-left:-25px;}
.single-item .slick-next{margin-left:25px;}
.pagingInfo{position:absolute;bottom:44px;left: 50%;transform: translateX(-50%);color:#000;font-size: 1em;}
.slider_div .slick-dots{text-align:center;padding-left:0;background: rgba(0,0,0,0.5);padding:0.1% 2%;border-radius: 20px;margin:auto;position:fixed;left:50%;transform: translateX(-50%);bottom: 75px;}
.slider_div .slick-dots li {display:inline-block;    vertical-align: middle;    margin: 0 3px;line-height: 26px;height:26px;}
.slider_div .slick-dots li a{font-size:1.5em;    text-decoration: none;    color: #fff;    line-height: 23px;    cursor: pointer;}
.slider_div .slick-dots li.slick-active a{font-size:3em;    line-height:16px;}
.slider_div .slick-dots li a:hover{border-bottom:0; }
.dots{z-index: 9;}


.footer_nav_arrow{position:absolute;bottom:30px;left:50%;transform: translateX(-50%);z-index: 9;}
.arrow-container {
position: relative;
padding-top: 60px;
color: #020202;
font-family: 'TmoneyRoundWindRegular';
-webkit-transform: rotate(-45deg);
transform: rotate(-45deg);
-webkit-animation: sdb 2s infinite;
animation: sdb 2s infinite;
}

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
-webkit-transform: rotate(-45deg) translate(-20px, 20px);
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

@media (max-width: 767px){
section {padding:0;}
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
                      <p class="title">치PD 세트</p>
                      <img src="2021renew_img/mainbanner/cpd_img_1.png" >
                      <p class="subtitle">치킨, 피자, 디저트를 한번에 굽네에서 즐기자!</p>
                  </div>
                  <div class="list_slider">
                      <p class="title">치PD 세트</p>
                      <img src="https://order.goobne.co.kr:8481//Upload/menu//굽네오리지널치킨_L_01.png" >
                      <p class="subtitle">치킨, 피자, 디저트를 한번에 굽네에서 즐기자!</p>
                 </div>
             </div>
             <span class="pagingInfo"></span>
            </div>
            <div class="footer_nav_arrow">
                <a href="#1" class="arrow-container">
                    <div class="arrow"></div> 
                    Scroll
                </a>
            </div>
          <div class="footer_ai">
              <ul class="footer_ai_ul">
                  <li><img src="2021renew_img/left_ai.svg" ></li>
                  <li><img src="2021renew_img/right_ai_1.svg" ></li>
                  <li><img src="2021renew_img/bottom_ai.svg" ></li>
                  <!--<li class="mobile"></li>-->
              </ul>
          </div>
		</section>
		<section class="section2" id="1">
			<div class="slider_body">
				<div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#262626" height="24" role="img" viewBox="0 0 48 48" width="24"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div>
			</div>
		</section>
		<section class="section3">
			<div class="slider_body">
				<span>Page #3</span>				
			</div>
		</section>
		<section class="section4">
			<div class="slider_body">
				<span>Page #4</span>				
			</div>
		</section>
		<section class="section5">
			<div class="slider_body">
				<span>Page #5</span>				
			</div>
		</section>
	</div>
	<script src="/onepage_fullscreen/full-page-scroll.js"></script>
    <script src="/JQuery-Snowfall-master/dist/slick.js"></script>
    <script>
 $( document ).ready( function() {
     var filter = "win16|win32|win64|mac|macintel"; 
     if ( navigator.platform ) { 
     if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) { 
     //mobile 
     $.fn.fullpage.destroy('all');
     
     } else { 
     //pc 
     } }

 
 $(window).resize(function() { 
	 	//if($(window).width() >767) { 
			
			 if ($(window).width() <=540) {
					 self.name = 'reload';
					 self.location.reload(true);
				 }
				 else self.name = ''; 
		//	} 
			
	     });
         
    if ($(window).width() < 540) {
        
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

