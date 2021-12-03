<!DOCTYPE html>

<html lang="ko" class="no-js">
<head>
    
	<jsp:include page="/include/header_doc.jsp" flush="false"/>  


	<link rel="stylesheet" type="text/css" href="/onepage_fullscreen/fullpage.css" />
	<link rel="stylesheet" type="text/css" href="/onepage_fullscreen/examples.css" />
    <link href='/JQuery-Snowfall-master/dist/slick.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
 <script src="/JQuery-Snowfall-master/dist/slick.js"></script>
    <script>
        var $status = $('.pagingInfo');
    var $slickElement = $('.single-item');
    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status.text(i + '/' + slick.slideCount);
    });
    $('.single-item').slick({
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
    </script>
<style>

	/* Style for our header texts
	* --------------------------------------- */
	h1{
		font-size: 5em;
		font-family: arial,helvetica;
		color: #fff;
		margin:0;
		padding:0;
	}
	.intro p{
		color: #fff;
	}

	/* Centered texts in each section
	* --------------------------------------- */
	.section{
		text-align:center;
	}

	/* Fixed header and footer.
	* --------------------------------------- */
	#header, #footer{
		position:fixed;
		height: 65px;
        line-height: 65px;
		display:block;
		width: 100%;
		background: transparent;
		z-index:9;
		padding:0;
        border-bottom:0;
        border-top:0;
	}

	#header{
		top:0px;
	}
	#footer{
		bottom:0px;
	}


	/* Bottom menu
	* --------------------------------------- */
	#infoMenu {
		bottom: 80px;
	}
	#infoMenu li a {
		color: #fff;
		z-index: 999;
	}

	</style>
    <style type="text/css">
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

section .slider_body {
    text-align: center;
    position: relative;
    top: 50%;  
    transform: translateY(-50%);
    z-index: 9;
}
section .slider_div{position:absolute;top:50%;left:50%;transform: translate(-50%,-50%);z-index: 9;width:100%;padding-bottom: 129px;}
.slick-slide img{margin:auto; width:auto;max-height:450px;}
.list_slider .title{font-family:'TmoneyRoundWindExtraBold';color:#fff;letter-spacing:-4px;font-size:6em;text-align: center;}
.list_slider .subtitle{font-family:'Noto Sans KR';color:#fff;letter-spacing:-1px;font-size:1.8em;text-align: center;}
.section01:before{opacity: 0;}
.section01.bg{background:#ca291a;opacity: 1; transition: 0.1s all;}
.section01.bg1{background:#ca291a;opacity: 1;transition: 0.1s all;}
.section01.bg2{background:#eb7c09; opacity: 1;transition: 0.1s all;}

.navbar-fixed-top{padding:0;}
.navbar-brand {
padding: 0;
position:absolute;left:0;
z-index: 2;
}
.navbar-default{background-color:transparent;}
.footer_ai{position:absolute;bottom:0;width:100%;}
.footer_ai_ul{position: relative;width:100%;height:166px;}
.footer_ai_ul li{position:absolute;bottom:7px;;width:17%;z-index: 8;min-width: 300px;}
.footer_ai_ul li:nth-child(1){left:0;}
.footer_ai_ul li:nth-child(2){right:-17px;}
.footer_ai_ul li:nth-child(3){right:auto;;left:0;width:100%;bottom:-3px;z-index: 3;transform: rotate(0.2deg);}

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

	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->
</head>
<body>



<div id="header"><jsp:include page="/include/header_2021_re_1.jsp" flush="false"/></div>
<!--<div id="footer">Footer</div>-->

<div id="fullpage">
	<div class="section section01" id="section0">
		<!---S: 눈효과---->
          <jsp:include page="/JQuery-Snowfall-master/examples/indexpure_star.html" flush="true"/>
          <!---E: 눈효과---->
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
          <div class="footer_ai">
              <ul class="footer_ai_ul">
                  <li><img src="2021renew_img/left_ai.svg" ></li>
                  <li><img src="2021renew_img/right_ai_1.svg" ></li>
                  <li><img src="2021renew_img/bottom_ai.svg" ></li>
              </ul>
          </div>
	</div>
	<div class="section" id="section1">
	    <div class="slide" id="slide1">
			<div class="intro">
				<h1>How to do it</h1>
				<p>
					You will need to place your header and footer outside the plugin's wrapper.
					This way it won't move on scrolling. Take a look at the source code of this page.
				</p>
			</div>
		</div>

	    <div class="slide" id="slide2">
			<h1>Slide 2</h1>
			<img src="imgs/iphone-blue.png" alt="iphone" id="iphone-two" />
		</div>

	</div>
	<div class="section" id="section2">
		<div class="intro">
			<h1>Enjoy it</h1>
		</div>
	</div>
</div>

<script type="text/javascript" src="/onepage_fullscreen/fullpage.js"></script>
<script type="text/javascript" src="/onepage_fullscreen/examples.js"></script>

<script type="text/javascript">
var myFullpage = new fullpage('#fullpage', {
     anchors: ['firstPage', 'secondPage', '3rdPage'],
     sectionsColor: ['#ca291a', '#1BBC9B', '#7E8F7C'],
        css3: true
    });



    
    

</script>

</body>
</html>