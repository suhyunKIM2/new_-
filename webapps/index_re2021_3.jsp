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
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>굽네치킨  birthday  BIRTHDAY</title>
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
    
    section .slider_body {
		text-align: center;
		position: relative;
		top: 50%;  
		transform: translateY(-50%);
        z-index: 9;
	}
    section .slider_div{position:absolute;top:50%;left:50%;transform: translate(-50%,-50%);    width: 52%;z-index: 9;}
    .slick-slide img{margin:auto;}
    .list_slider p{font-family:'TmoneyRoundWindExtraBold';color:#fff;letter-spacing:-4px;font-size:6em;text-align: center;}
   /*section div {
		text-align: center;
		position: relative;
		top: 50%;  
		transform: translateY(-50%);
	}*/

	span {
		font-size: 4em;
		font-style: normal;
		color: #fff;
	}

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
body,.navbar,h1, h2, h3, h4, h5, h6,header .intro-text .name{    font-family:TmoneyRoundWindRegular,Helvetica,Arial,sans-serif;}
.navbar-fixed-top{padding:0;}
.navbar-brand {
    padding: 9px 15px;
}
.navbar-default{background-color:transparent;}
.footer_ai{position:absolute;bottom:0;width:100%;}
.footer_ai_ul{position: relative;width:100%;height:166px;}
.footer_ai_ul li{position:absolute;bottom:7px;;width:17%;z-index: 8;}
.footer_ai_ul li:nth-child(1){left:0;}
.footer_ai_ul li:nth-child(2){right:-17px;}
.footer_ai_ul li:nth-child(3){right:auto;;left:0;width:100%;bottom:0;z-index: 3;}
	</style>
    
  <jsp:include page="/include/header_doc.jsp" flush="false"/>  
</head>
<body id="page-top" class="index darkBg">
    <jsp:include page="/include/header_2021_re.jsp" flush="false"/>

 <div id="main" class="scroll-container">
		<section class="section1">
            
          <!---S: 눈효과---->
          <jsp:include page="/JQuery-Snowfall-master/examples/indexpure_star.html" flush="true"/>
          <!---E: 눈효과---->
          <div class="footer_bg"></div>
          <div class="bg_sub"></div>
          <div class="slider_div">
            <div class="slider single-item">
              <div class="list_slider"><p>치PD 세트</p><img src="2021renew_img/mainbanner/cpd_img_1.png" ></div>
              <div class="list_slider"><img src="https://order.goobne.co.kr:8481//Upload/menu//굽네오리지널치킨_L_01.png" ></div>
            </div>
            </div>
          <div class="footer_ai">
              <ul class="footer_ai_ul">
                  <li><img src="2021renew_img/left_ai.svg" ></li>
                  <li><img src="2021renew_img/right_ai_1.svg" ></li>
                  <li><img src="2021renew_img/bottom_ai.svg" ></li>
              </ul>
          </div>
		</section>
		<section class="section2">
			<div class="slider_body">
				<span>Page #2ggg</span>				
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
	<script type="text/javascript">
		new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease'
		});
	</script>
    <script src="/JQuery-Snowfall-master/dist/slick.js"></script>
    <script>
    $('.single-item').slick({
      autoplay:false,
      autoplaySpeed:5000,	
      /*fade:true,*/
      cssEase:"ease",
      easing:"ease",
    });
    </script>
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

