<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.cntt.beans.UserLogBean"%>
<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.JspUtils"%>
<% 
String UserIdx = "";
String UserId = "";
String UserName = "";
String UserTel = "";
String UserEmail = "";
String UserBmail = "";
String UserLevel = "";
String UserBranch = "";

// App
String useragent = request.getHeader("User-Agent");
System.out.println(useragent);
String formtarget = "gnordernet";
String target = "gnorder";
if ( useragent != null ) {
	if ( useragent.toUpperCase().indexOf("APP-GOOBNE-ANDROID") != -1 || useragent.toUpperCase().indexOf("APP-GOOBNE-IPHONE") != -1 ) { // android app, ios app
		formtarget = "_self";
		target = "_self";
	}
}

Cookie[] cookie = request.getCookies();
if(cookie != null){
	for(int i=0; i<cookie.length; i++){
		System.out.println(i+" - "+cookie[i].getName()+"="+cookie[i].getValue());
		if(Const.UserIdx.equals(cookie[i].getName())){
			UserIdx = cookie[i].getValue(); 
			if(UserIdx != null){
				UserIdx = java.net.URLDecoder.decode(UserIdx, "UTF-8");
				Const.UserIdxDt = java.net.URLDecoder.decode(UserIdx, "UTF-8");
			}
		}
		if(Const.UserId.equals(cookie[i].getName())){
			UserId = cookie[i].getValue(); 
			if(UserId != null){
				UserId = java.net.URLDecoder.decode(UserId, "UTF-8");
				Const.UserIdDt = java.net.URLDecoder.decode(UserId, "UTF-8");
			}
		}
		if(Const.UserName.equals(cookie[i].getName())){
			UserName = cookie[i].getValue(); 
			if(UserName != null){
				UserName = java.net.URLDecoder.decode(UserName, "UTF-8");
				Const.UserNameDt = java.net.URLDecoder.decode(UserName, "UTF-8");
			}
		}
		if(Const.UserTel.equals(cookie[i].getName())){
			UserTel = cookie[i].getValue(); 
			if(UserTel != null){
				UserTel = java.net.URLDecoder.decode(UserTel, "UTF-8");
				Const.UserTelDt = java.net.URLDecoder.decode(UserTel, "UTF-8");
			}
		}
		if(Const.UserEmail.equals(cookie[i].getName())){
			UserEmail = cookie[i].getValue(); 
			if(UserEmail != null){
				UserEmail = java.net.URLDecoder.decode(UserEmail, "UTF-8");
				Const.UserEmailDt = java.net.URLDecoder.decode(UserEmail, "UTF-8");
			}
		}
		if(Const.UserBmail.equals(cookie[i].getName())){
			UserBmail = cookie[i].getValue(); 
			if(UserBmail != null){
				UserBmail = java.net.URLDecoder.decode(UserBmail, "UTF-8");
				Const.UserBmailDt = java.net.URLDecoder.decode(UserBmail, "UTF-8");
			}
		}
		if(Const.UserLevel.equals(cookie[i].getName())){
			UserLevel = cookie[i].getValue(); 
			if(UserLevel != null){
				UserLevel = java.net.URLDecoder.decode(UserLevel, "UTF-8");
				Const.UserLevelDt = java.net.URLDecoder.decode(UserLevel, "UTF-8");
			}
		}
		if(Const.UserBranch.equals(cookie[i].getName())){
			UserBranch = cookie[i].getValue();
			if(UserBranch != null){
				UserBranch = java.net.URLDecoder.decode(UserBranch, "UTF-8");
				Const.UserBranchDt = java.net.URLDecoder.decode(UserBranch, "UTF-8");
			}
			else {
				UserBranch = "";
				Const.UserBranchDt = "";
			}
// 			System.out.println(" xxxxxxxxxxxxxxxxxxxxxxxxxxxx: "+ UserBranch);
		}
	}
//	System.out.println(" UserBranch: "+ UserBranch);
}
%>
<script type="text/javascript">
var GnOrderNet = "<%=Const.GnOrder%>";
//로그아웃
function userlogout() {
	var count = 0;
	if (document.cookie != "") {
		var cookies = document.cookie.split("; ");
		console.log(cookies);
		count = cookies.length;

		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);

		for (var i = 0; i < count; i++) {
			var cookieName = cookies[i].split("=")[0];
			console.log(cookieName);
			if (cookieName != "id_save") {
				document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
			}
		}
	}
	location.replace("/");
}

</script>
<script src="/resources/js/wscript/api.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="/resources/js/common/rsamode.js"></script>
<%
	//로그인 정보 암호화
	JspUtils jsputil = new JspUtils();
	jsputil.setRsa(request);
	/**Rsa 개인키**/
	String RSAModulus = (String) request.getSession().getAttribute("RSAModulus");
	String RSAExponent = (String) request.getSession().getAttribute("RSAExponent");
%>
<script>
	var RSAModulus = "<%=RSAModulus%>";
	var RSAExponent = "<%=RSAExponent%>";
</script>
<script src="/resources/js/lib/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){
  $(".menu_wrap li a").click(function(){
  $('.menu_wrap li a #hamburger-90').toggleClass("is-active");
  });
$(".menu_wrap li a").eq(0).trigger("click");
});


</script>

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



<!-- Syntax Highlight -->
<link rel="stylesheet" href="/scrollreveal/css/markdown-highligth.css">
<link rel="stylesheet" href="/JQuery-Snowfall-master/dist/ham_menu.css">
<script src="/JQuery-Snowfall-master/dist/ham_motion.js"></script>
<link rel="stylesheet" href="/JQuery-Snowfall-master/dist/ham_style.css">
<style>
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
section .slider_div{position:absolute;top:50%;left:50%;transform: translate(-50%,-50%);z-index: 9;width:100%;padding-bottom: 129px;margin-top: 1%;max-height: 764px;}
/*.section1 .slider_div{margin-top:60px;}*/
.section3 .footer{position:absolute;bottom:0;left:50%;transform: translateX(-50%);width:100%;height: 130px;overflow:auto;}
.section3 .footer p{font-size:12px;margin: 0;}
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
.pagingInfo{color:#000;font-size: 1em;display:block;text-align: center;margin-top:65px;}
.pagingInfo02,.pagingInfo02_1{position:absolute;bottom:-85px;left: 50%;transform: translateX(-50%);color:#000;font-size: 1em;}
.slick-dots{text-align:center;padding-left:0;background: rgba(0,0,0,0.5);padding:0.1% 2%;border-radius: 20px;margin:auto;position:absolute;left:50%;transform: translateX(-50%);bottom:-43px;}
.slick-dots li {display:inline-block;    vertical-align: middle;    margin: 0 3px;line-height: 26px;height:26px;}
.slick-dots li a{font-size:1.5em;    text-decoration: none;    color: #fff;    line-height: 23px;    cursor: pointer;}
.slick-dots li.slick-active a{font-size:3em;    line-height:16px;}
.slick-dots li a:hover{border-bottom:0; }
.dots{z-index: 9;}
.single-item02 .slick-arrow{bottom:-100px;}
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
.no-js { opacity: 0;} 
.visible{opacity: 1;}
.section2 .footer_nav_arrow{bottom:10px;}
.top_footer_list{position:absolute;height:calc(100% - 117px);width:100%;}
.top_footer_list li.top_footer_list_li,.top_footer_list li.top_footer_list_li_slick{text-align:left;position: relative;float:left;height:389px;}
.top_footer_list li.top_footer_list_li span{display:block;letter-spacing: -1px;}
.top_footer_list li.top_footer_list_li span.sub_font{font-size:16px;margin:5px 0 0;}
.top_footer_list li.top_footer_list_li span.call_num{font-size:24px;font-weight: 600;}
.top_footer_list li.top_footer_list_li .footer_list_img{position:absolute;bottom:10px;right:10px;}
.top_footer_list li.top_footer_list_li:nth-child(1),.top_footer_list li.top_footer_list_li:nth-child(3){width:35%;background:#ffe9ba;padding:4% 2.5%;}
.top_footer_list li.top_footer_list_li:nth-child(4){padding:2% 2.5%;}
.top_footer_list li.top_footer_list_li:nth-child(4) h4{color:#000;float:left;}
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
.top_sns .top_sns_left img{width:35px;height:35px;margin-right:5px;border-radius: 50%;}
.top_sns .top_sns_right{float:right;}
.top_sns .top_sns_right img{margin-top:5px;width:25px;height:25px;}
.container_sns{padding:5px 20px;font-size:12px;position:absolute;top:46px;width:100%;height: calc(100% - 115px);left:0;border-bottom:1px solid #eee;white-space: pre-line;text-overflow:ellipsis;overflow:auto; -ms-overflow-style:block;}
.container_sns::-webkit-scrollbar{display: block;}
.bottom_sns{position:absolute;bottom:0;left:0;width:100%;height:70px;    padding: 5px 10px;}
.QBdPU.rrUvL{width:auto;display: inline-block;}
.sns_date{font-size:11px;float:right;color:#999;}
.bottom_right{width:55%;float:right;color:#502b23;}
.bottom_right a.footer_list_link_a{right:20px;}
.top_footer_list li.top_footer_list_li .bottom_right span.sub_font{font-size:11px;color:#a48272;letter-spacing: 0;margin-top:0;}
.youtube_list{margin:0 auto;clear:both;}
.youtube_list li{display:inline-block;width:30%;height:100px;border-radius: 20px;    line-height: 100px;text-align: center;margin: 0 1%;cursor: pointer;}
.youtube_div{height:auto;overflow: hidden;padding-top:2%;}
.top_footer_list li.top_footer_list_li .youtube_div span.go_link{float:right;}
.mobile_sns{display: none !important;}

/*서브페이지 css추가*/
#container #contents{padding:0;}
#wrap{padding-top:60px;}
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
.list_section_02 ul li:nth-child(1){font-size:2em;font-weight: 600;margin-bottom:0;}
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
.pagingInfo02, .pagingInfo02_1{bottom:82px}
.single-item02 .slick-arrow {
    bottom: -90px;
}
}
@media only screen and  (max-width: 500px) {
.list_section_02 ul li:nth-child(1){font-size:15px;}
.list_section_02 ul li:nth-child(2){font-size:13px;}
.title_h2{font-size:2em;}
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


@media only screen and (max-width: 1500px){
.container_width{width:90%;}
}
@media only screen and (max-width: 1250px){
.section3 .container{max-width:100%;width:90%;padding:0;}

}
 @media only screen and (max-width: 1024px){
 .section3 .container{width:100%;}
 .section3 .footer{bottom:60px;}
 .section3{padding:100px 0 8px;}
 .top_footer_list li.top_footer_list_li:nth-child(1), .top_footer_list li.top_footer_list_li:nth-child(3){width:28%;}
 .top_footer_list li.top_footer_list_li:nth-child(4), .top_footer_list li.top_footer_list_li_slick{width:72%;}
 .top_footer_list li.top_footer_list_li_slick,.top_footer_list li.top_footer_list_li:nth-child(1), .top_footer_list li.top_footer_list_li:nth-child(2),.list_slider_ul_sns li{height:320px;min-height: 320px;}
 .top_footer_list li.top_footer_list_li:nth-child(3), .top_footer_list li.top_footer_list_li:nth-child(4){height:220px;}
 .top_footer_list li.top_footer_list_li a.footer_list_link_a{position:relative;bottom:0;left:0;}
 .top_footer_list li.top_footer_list_li:nth-child(3) img{    width: 90px !important;height: 90px !important;position: absolute;top: 10px;left: 10px;}
 .bottom_right{    float: none;width: auto;position: absolute;right: 10px;bottom: 20px;}
 .youtube_list{position:absolute;    bottom: 30px; left:0;text-align: center;   width: 100%;}
 .container_width{width:100%;}
 }
 @media only screen and (max-width: 700px){
 .top_footer_list li.top_footer_list_li,.top_footer_list li.top_footer_list_li_slick{width:100% !important;}
 .top_footer_list li.top_footer_list_li_slick, .top_footer_list li.top_footer_list_li:nth-child(1), .top_footer_list li.top_footer_list_li:nth-child(3), .list_slider_ul_sns li {
height: 150px;
min-height: 150px;
}
.top_footer_list li.top_footer_list_li_slick,  .top_footer_list li.top_footer_list_li:nth-child(2), .list_slider_ul_sns li{ height: 400px;
min-height: 400px;
}
.section3{height:auto !important;overflow:hidden;padding-bottom:100px;}
.section3 .slider_body{height:100%;top:0;transform: translateY(0);}
.top_footer_list{    position: relative;
height: auto;
overflow: hidden;
padding-top: 150px;}
.section3 .footer{position:relative;bottom:0;}
.top_footer_list li.top_footer_list_li:nth-child(1), .top_footer_list li.top_footer_list_li:nth-child(3){width:50% !important;position:absolute;top:0;}
.top_footer_list li.top_footer_list_li:nth-child(1){left:0;}
.top_footer_list li.top_footer_list_li:nth-child(3){right:0;}
.bottom_right{right:auto;left:20px;}
.top_footer_list li.top_footer_list_li:nth-child(3) img {width: 100px !important;height: 100px !important;top: auto;left: auto;bottom: 10px;right: 10px;}
.youtube_list{bottom:auto;top:60px;}
 }
@media only screen and (max-width: 640px){
section h4{font-size:15px;}  
.top_footer_list li.top_footer_list_li span.sub_font{font-size:13px;}
.top_footer_list li.top_footer_list_li span.call_num{font-size:18px;}
.top_footer_list li.top_footer_list_li_slick, .top_footer_list li.top_footer_list_li:nth-child(2),.list_slider_ul_sns li {
height: 650px;
min-height: 650px;
}
.top_footer_list li.top_footer_list_li:nth-child(3) img,.top_footer_list li.top_footer_list_li:nth-child(1) img{width: 80px !important;height: 80px !important;}
.list_slider_ul_sns{position:relative;height:650px;}
.list_slider_ul_sns li:nth-child(1){    width: 100%;
background: #000;
height: 300px;
min-height: 300px;}
.list_slider_ul_sns li:nth-child(1) img{position: relative;max-height: 100% !important;
object-fit: cover;    object-position: right;} 
.list_slider_ul_sns li:nth-child(2){    position: absolute;
height: 350px;
min-height:350px;
background: #fff;
bottom: 0;
width: 100%;}    
.pc_sns{display: none !important;}
.mobile_sns{display: block !important;}
} 
@media only screen and (max-width: 499px){
.section3 .title_h2{font-size:1.7em !important;}
.bottom_right {
    right: auto;
    left: 4%;
    top: 10%;
}
.top_footer_list li.top_footer_list_li:nth-child(3) img, .top_footer_list li.top_footer_list_li:nth-child(1) img {
    width: 45px !important;
    height: 45px !important;
    bottom: 3px;
    right: 0;
}
.top_footer_list li.top_footer_list_li a.footer_list_link_a{font-size:12px;}
}
@media only screen and (max-width: 374px){
.top_footer_list li.top_footer_list_li span.sub_font{font-size:11px;}
}
@media only screen and (max-width: 360px){
.section3 .title_h2 {
    font-size: 1.5em !important;}
}
body ul, body ol{padding:0;margin:0;overscroll-behavior: contain;}
#header.sticky #gnb ul>li a {padding: 0 10px 1.2285em;}
.nav>li{display: inline-block;float:none;}
.navbar-nav{float:none !important;position: absolute;left: 50%;transform: translateX(-50%);}
.navbar-right{height:55px;line-height:55px;width:auto;float:right;}
.ham_ul li{display: inline-block;vertical-align: middle;}
.ham_div_mask{position:fixed;right:0;top:0;width:100%;height:100vh;background:rgba(0,0,0,0.7);}
.ham_div_contents{position:fixed;right:0;top:0;width:30%;height:100vh;background:#fff;}
.hamburger_top_bar{width:100%;padding:10px 0;background:#ca291a;height:50px;line-height: 50px;}
.navbar-nav_user_log{float:left;margin-left:15px;height:50px;line-height: 50px;}
.Notice_div_ham{clear:both;height:195px;background:url(/2021renew_img/ham_icon_01.svg)no-repeat -25px top,url(/2021renew_img/ham_icon_02.svg)no-repeat 103% 92%;background-size:25% auto,15% auto;line-height: normal;position:relative;border-bottom: 1px solid #eee;}
.Notice_div_ham_ul{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:100%;}
.Notice_div_ham_ul li:nth-child(1){margin-bottom:2%;}
.Notice_div_ham_ul li:nth-child(3){width:42%;text-align: center;margin:3% auto;padding:1% 0;border:1px solid #000;border-radius:20px;}
.Notice_div_ham_ul li:nth-child(3):hover{background:#ca291a;}
.Notice_div_ham_ul li:nth-child(3):hover a{color:#fff;text-decoration: none;}


/*아코디언메뉴*/
.menu_wrap {padding:0;overflow: auto;height: calc(100vh - 277px);}
.menu_wrap li .list_hidden{font-weight:500;font-size: 15px;clear:both;background: #f3f3f3;height: auto;overflow:hidden;}
.menu_wrap li a{width:100%;border-bottom:1px solid #eee;    padding: 1.5% 4%;}
.menu_wrap li a .hamburger{background:#eee;width:30px;height:30px;border-radius: 50%;}
.menu_wrap li a .hamburger .line{margin:0;    background-color: #000;}
.menu_wrap li{text-align: left;clear:both;}
.menu_wrap li a, .menu_wrap li a span{float:left;}
#hamburger-90{float:right;margin-top: 5px;}
.ham_ul_list{width:100%;padding:0 4%;}
.ham_ul_list li a{padding:0;border-bottom:0.1px dotted #bfbfbf;padding: 3%;line-height: normal;font-size:13px !important;    position: relative;}
.ham_ul_list li a:hover{color:#ca291a !important;}
.ham_ul_list li a:after{content:'>';position:absolute;right:3%;-webkit-transition: all 0.1s ease-in-out;
	-o-transition: all 0.1s ease-in-out;
	transition: all 0.1s ease-in-out;}
.ham_ul_list li:last-child a{border-bottom:0;}
.ham_footer{    position: absolute;
    bottom: 0;
    width: 100%;
    line-height: normal;
    background: #eee;
    color: #727272;
    font-size: 10px;
    padding: 2% 0;}
.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus{color:#aacc03;}    
.navbar-header{width:100%;}
.menu_wrap li a span.list_name{padding:10px 0;}
.navbar-nav_user_log a{display:inline-block;}
.join_a{color:#fff;font-size: 1.2em;
    font-family: 'TmoneyRoundWindRegular';
    font-weight: 500;}
.span_class{margin:0 5px;color:#161616;vertical-align: middle;}    
.mobile,.mobile_icon{display:none !important;}
.PCmobile_icon{height:35px;margin:-10px 5px 0 0;}


@media all and (max-height:864px){
.slick-slide img{max-height: 340px;}
.list_slider .title{font-size:4em;}
.list_slider .subtitle{font-size:1.5em;}
#page-top{overflow:auto;}

.section3,.scroll-container section{height:auto !important;overflow:auto;padding-bottom:100px;}
.scroll-container section{padding-bottom:0;position:relative;}
section .slider_body{height:100%;top:70px;transform: translateY(0);}
section .slider_div{margin-top: 8%;}
.top_footer_list{    position: relative;
height: auto;
overflow: hidden;}
.section3 .footer{position:relative;bottom:0;height: auto;overflow: auto;}
.slick-slide .list_slider_ul_sns img{max-height:100% !important;}
.bottom_right{top:10%;}
.scroll-container .section2{height:calc(100% - 64px) !important;}
.container_video{max-width: 700px;}
}
@media all and (max-height:700px){
.slick-slide img {
    max-height: 340px ;
}
.list_slider .title {
    font-size: 3em !important;
}
.list_slider .subtitle {
    font-size: 15px !important;
}
.scroll-container section{min-height: 550px; }
body{overflow-y: auto;}
.container_video {
    max-width: 600px;
}
}
@media all and (max-height:600px){
.slick-slide img {
    max-height: 250px !important;
}
section .slider_div{padding-bottom:0;}
.scroll-container .section1{height:100% !important;}
section .slider_div {
    margin-top: 4%;
}
}
@media all and (max-height:512px){
.slick-slide img {
    max-height: 250px !important;
}
.scroll-container section{min-height: 550px; }
.single-item02 .slick-slide img{width:250px !important;} 
.scroll-container section {
    min-height: 550px;
    padding: 100px 0;
}
}
@media only screen and  (max-width: 1024px) {
#page-top{overflow:auto;}
.scroll-container .section1{height:calc(100% - 64px) !important;overflow-y: hidden;}
.mobile{display:inline-block!important;}
.mobile_icon,.PCmobile_icon{display:block !important;    margin: 5px auto 0 ;height: 28px;}
.navbar-nav>li>a{padding:0;}
.span_mobile{display:none;}
.navbar-nav{width:100%;position: fixed;
    bottom: 0;
    background: #eee;margin:0;height: 64px;
    line-height: 64px;}
/*.scroll-container section{height: calc(100vh - 0);} 
.scroll-container .section1{height: calc(100vh - 64px);} */
.footer_ai_ul li{min-width: 250px;}
.slick-slide img,.player_div{max-height:330px;}
.list_slider .subtitle{font-size:1.3em;}
.list_slider .title{font-size:5em;}
.container>.navbar-header{margin:0;}
.container{padding:0 3%;}
.navbar-brand{padding-left:0;}
.sidebar_menu{width:70%;}
.navbar-default .navbar-nav>li>a{color:#000;}
.nav>li{background:#fff;border-radius: 50%;margin:1.2px 2%;text-align: center;    width:65px;    height: calc(100% - 4%);}
.navbar{min-height:45px;}
.navbar-brand{padding:0;height:auto;line-height: normal;}
.navbar-right{height:auto;line-height: normal;margin-top: 5px;}
.navbar-brand img{height:37px !important;width:123px !important;}
.navbar-header{padding-top:3px;}
.section3, .scroll-container section{padding-bottom:100px;height: auto;overflow:hidden;}
section .slider_body{height:100%;top:70px;transform: translateY(0);}
.section1,.section2{height:calc(100% - 64px) !important;padding-bottom:0;}
.section3 .footer{bottom:0;position:relative;height: auto;}
.section3 .slider_body{top:0;}
.top_footer_list {
    position: relative;
    height: auto;
    width: 100%;
    overflow: hidden;
}
.pagingInfo02,.pagingInfo02_1{bottom:-84px;}
.section2{height:calc(100% - 64px) !important;}
.section2 .slider_body {
    height: auto;
    top: 50%;
    transform: translateY(-50%);
}
}
/* 태블릿, 아이패드 */

@media only screen and (min-device-width : 768px) and (max-device-width : 1023px) {
.slick-slide img, .player_div{max-height: 100%;width: 400px;}
}
@media (min-width: 768px){
.navbar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {
    margin-left: 0;
}
}
@media only screen and  (max-width: 512px) {
.pagingInfo02, .pagingInfo02_1 {
    bottom: -75px;
}
}
@media only screen and  (max-width: 640px) {
.footer_ai_ul li{min-width:40%;}
.list_slider .subtitle{font-size:1em;}
.list_slider .title{font-size:4em; }

.navbar-default .navbar-brand img{height:35px !important;width:116px !important;}
.navbar-default .navbar-nav>li>a{font-size:11px;}
.mobile_icon, .PCmobile_icon{ margin:10px auto 0;}
.slick-slide img,.player_div {
    max-height: 205px;
}
}
@media only screen and  (max-width:540px) {

#page-top{overflow-x:hidden;touch-action:pan-y;overflow-y:auto;}
.sidebar_menu {
    width: 90%;overflow: hidden; height: 100%;
}
.Notice_div_ham{height:150px;}
.menu_wrap{    height: calc(100% - 229px);}
.navbar-nav_user_log svg{height:20px !important;width:58px !important;}
.join_a{font-size:0.9em;}
.Notice_div_ham_ul li:nth-child(1) img{height:25px !important;}
.Notice_div_ham_ul li:nth-child(3){font-size:13px;    padding-bottom: 12px;}
.Notice_div_ham_ul li:nth-child(3) img{ height:25px !important;   vertical-align: bottom;margin-right:5px;}
.ham_ul_list li a{font-size:12px !important;}
.menu_wrap li a span.list_name{font-size:13px;}
#hamburger-90{width:25px;height:25px;}
#hamburger-90 .line:nth-child(2){right:5px;}
#hamburger-90 .line{left:5px;}
#hamburger-90.is-active .line:nth-child(1){top:11px;left:8px;}
#hamburger-9.is-active:before{    border: 3px solid #fff;}
#hamburger-9:before{    top: calc(50% - 17px);left: calc(50% - 17px);width:35px;height:35px;}
.scroll-container{scroll-behavior:smooth;overflow-y: scroll;}
.scroll-container section{height:calc(100% - 64px);}
section .slider_div{margin-top:60px;}
}
@media only screen and  (max-width:500px) {
.nav>li{margin:1.2px 1%;}
.pagingInfo02,.pagingInfo02_1 {
    bottom: -74px;
}
.youtube_list li{height:80px;line-height: 80px;border-radius: 10px;}
}
@media only screen and  (max-width:400px) {
.nav>li{width:17%;}
/*section .slider_div{padding-bottom:68px;}*/
.single-item .slick-arrow{bottom:-95px;}
.pagingInfo{margin-top: 60px;}
.list_slider .title{font-family:'TmoneyRoundWindRegular';font-weight: 600; }
}
@media only screen and  (max-width:374px) {
.nav>li{width:16%;margin:4.9px 1%;    height: calc(100% - 14%);}
.mobile_icon, .PCmobile_icon{height:18px;}
.list_slider .title {
    font-size: 3em !important;
    letter-spacing: -2px;
}
.list_slider .subtitle {
    font-size: 12px !important;
    letter-spacing: 0;
}
.slick-slide img {
    max-height: 150px;
}

}
@media only screen and  (max-width:359px) {
.sidebar_menu {
    width: 95%;
}
.list_slider .subtitle {
    font-size: 11px !important;
}
.list_slider .title {
    font-size: 2.5em !important;
}
.slick-slide img,.player_div {
    max-height: 140px !important;
}
.container_video {
    max-width: 300px;
}
.nav>li {
    width: 17%;
    margin: 4.9px 0.5%;}
.menu_wrap {
    height: calc(100% - 238px);
}    
section .slider_div{margin-top:0;} 
.scroll-container section {
    min-height: auto;
}
}
@media only screen and (max-width: 280px){
section .slider_div {
    margin-top: 60px;}
}
</style>
<form id="encModeForm" hidden="true">
</form>

<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" id="scroll_nav">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header page-scroll">
               <a class="navbar-brand" href="#page-top"><img src="/2021renew_img/logo_2.svg" style="height:40px;"></a>
               <ul class="nav navbar-nav">
                   
                    <li>
                        <a href="javascript:loginnet('');"><img src="/2021renew_img/icon_01.svg"    class="PCmobile_icon"><span class="span_mobile">온라인</span>주문</a>
                    </li>
                    <li>
                        <a href="/menu/new_s_w_f_sub_re2021.jsp"><img src="/2021renew_img/footer_nav_icon_02.svg"   class="mobile_icon"><span class="span_mobile">메뉴</span>소개</a>
                    </li>
                    <li>
                        <a href="/store/search_store.jsp"><img src="/2021renew_img/footer_nav_icon_01.svg"   class="mobile_icon"><span class="span_mobile">매장</span>찾기</a>
                    </li>
                    <li >
                        <a href="/event/event_list.jsp"><img src="/2021renew_img/footer_nav_icon_03.svg"   class="mobile_icon">이벤트</a>
                    </li>
                    <li class="mobile">
                        <a href="javascript:loginnet('/member/info_change.aspx');"><img src="/2021renew_img/footer_nav_icon_04.svg"  class="mobile_icon">MY</a>
                    </li>
                </ul>
              
    
    
            <!-- /.navbar-collapse -->
            <div class="navbar-right">
                <ul class="ham_ul">
                    <!---로그인전---->
                    <% if (UserIdx.equals("")) { %>
                    <li><a href="https://www.goobne.co.kr/member/login.jsp"><img src="/2021renew_img/login.svg" style="width:52px;height:18px;"></a></li>
                    <li>
                       <div class="hamburger" id="hamburger-11">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>

                    </li>
                    <% } else { %>
                    <!--  로그인 후 -->
                    <li><a href="javascript:userlogout();"><img src="/2021renew_img/logout.svg" style="height:18px;"></a></li>
                    <li>
                       <div class="hamburger" id="hamburger-11">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>

                    </li>
                    
	            <% } %>
                    
                    
                    
                </ul>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
                
                <!--<div class="ham_div_mask"></div>
                    <div class="ham_div_contents">
                        djdjdj
                    </div>    -->
                
                <div class="menu_bg"></div>
                <div class="sidebar_menu">
                    <div class="navbar-nav_user_log">
                        <!---로그인전---->
                    <% if (UserIdx.equals("")) { %>
                        <a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>" class="join_a" style="vertical-align: middle;">JOIN</a> <span class="span_class">|</span>
                        <a href="https://www.goobne.co.kr/member/login.jsp"><!--<img src="2021renew_img/login.svg" style="height:25px;">-->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 78.33 27.03" style="height:25px;width:73px;margin-top:-1px;vertical-align: middle;"><defs><style>.cls-1{fill:#fff;stroke:#fff;stroke-width:0.3px;}.navbar-nav_user_log a:hover .cls-1{fill:#000;stroke:#000;stroke-width:0.3px;}</style></defs><g id="01" data-name="01"><g id="02" data-name="02"><polygon class="cls-1" points="63.6 18.86 62.69 17.95 67.12 13.52 62.69 9.08 63.6 8.17 68.94 13.52 63.6 18.86"/><rect class="cls-1" x="51.3" y="12.87" width="16.73" height="1.29"/><path class="cls-1" d="M64.81,27a13.54,13.54,0,0,1-13-10L53,16.73a12.23,12.23,0,1,0,0-6.43L51.77,10A13.52,13.52,0,1,1,64.81,27Z"/><path class="cls-1" d="M0,7.36H1.6V20.14H7.84V21.5H0Z"/><path class="cls-1" d="M7.53,14.37c0-4.5,2.47-7.26,6-7.26s6,2.76,6,7.26-2.47,7.38-6,7.38S7.53,18.89,7.53,14.37Zm10.31,0c0-3.61-1.72-5.85-4.34-5.85s-4.33,2.24-4.33,5.85,1.72,6,4.33,6S17.84,18,17.84,14.37Z"/><path class="cls-1" d="M20.31,14.43c0-4.54,2.68-7.32,6.41-7.32a5.46,5.46,0,0,1,4,1.72l-.89,1a4,4,0,0,0-3.11-1.35c-2.93,0-4.81,2.24-4.81,5.87s1.74,5.95,4.81,5.95a4,4,0,0,0,2.68-.89V15.59H26.37V14.26h4.56v5.86a5.94,5.94,0,0,1-4.32,1.63C22.9,21.75,20.31,19,20.31,14.43Z"/><path class="cls-1" d="M32.9,7.36h1.6V21.5H32.9Z"/><path class="cls-1" d="M37,7.36h1.64L44,16.51l1.53,2.9h.09c-.09-1.41-.21-2.95-.21-4.4V7.36h1.53V21.5H45.26L40,12.34,38.4,9.45h-.1c.08,1.41.2,2.84.2,4.3V21.5H37Z"/></g></g></svg>
                        </a>  
                        
                    <% } else { %>
                    <!--  로그인 후 -->   
                    <a href="javascript:userlogout();"><img src="2021renew_img/logout.svg" style="height:25px;"></a>
                    <% } %>
                    </div>
                    <div class="hamburger_top_bar">
                         <div class="hamburger close_btn" id="hamburger-9">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </div>
                    
                    
                    <div class="Notice_div_ham">
                        <ul class="Notice_div_ham_ul">
                            <li><img src="/2021renew_img/logo_red.svg" style="height:35px;"></li>
                            <li>주문전화 1899-9494</li>
                            <li><a href=""><img src="/2021renew_img/icon_01.svg" style="height:35px;">온라인주문</a></li>
                        </ul>
                    </div>
                    
                   <ul class="menu_wrap">
                         <% if ("22".equals(UserLevel)) { %>
                         <!-- <div class="gnb_member_nav">
                                    <a href="#" class="gnb_member_link">직원게시판</a>
                                    <ul>
                                        <li><a href="/company/notice_list.jsp">공지사항</a></li>
                                        <li><a href="/company/opinion_list.jsp">통(通)합시다!</a></li>
                                        <li><a href="/company/anonymity_list.jsp">토론마당</a></li>
                                        <li><a href="/company/photo_list.jsp">우리가족이야기</a></li>
                                        <li><a href="/company/eduinfo_list.jsp">교육정보게시판</a></li>
                                        <li><a href="/company/form_list.jsp">자료실</a></li>
                                        <li><a href="/company/poll_list.jsp">투표게시판</a></li>
                                        <li><a href="/company/divisionform_list.jsp">사업부자료실</a></li>
                                        <li><a href="/company/infoshare_list.jsp">업무공유게시판</a></li>
                                    </ul>
                                </div> -->
                            <% } %>
                            <% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
                             <li>
                                  <a href="#" class="ham_list_a">
                                     <span class="list_name">성공 뱅크</span>
                                     <div class="hamburger is-active" id="hamburger-90">
                                        <span class="line"></span>
                                        <span class="line"></span>
                                    </div>
                                  </a>
                                <div class="list_hidden">
                                    <ul class="ham_ul_list">
                                          <li><a href="/family/successknow_list.jsp">성공노하우</a></li>
                                          <li><a href="/family/successstory_list.jsp">성공스토리</a></li>
                                    </ul>
                                </div>
                              </li>
                          <% } %>
                          <% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
                              <li>
                                  <a href="#" class="ham_list_a">
                                     <span class="list_name">가족게시판</span>
                                     <div class="hamburger" id="hamburger-90">
                                        <span class="line"></span>
                                        <span class="line"></span>
                                    </div>
                                  </a>
                                <div class="list_hidden">
                                    <ul class="ham_ul_list">
                                          <!-- 					<li><a href="/family/successstory_list.jsp">성공스토리</a></li> -->
                    <!-- 					<li><a href="/family/successknow_list.jsp">성공노하우</a></li> -->
                    <!-- 					<li><a href="javascript:alert('준비중입니다.');">우수사례</a></li> -->
                                        <li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">매뉴얼</a></li>
                                        <li><a href="/family/suggest_list.jsp">건의사항</a></li>
                                        <li><a href="/family/notice_list.jsp">공지사항</a></li>
                                        <li><a href="/family/discussion_list.jsp">토론방</a></li>
                                        <li><a href="/family/reference_list.jsp">자료실</a></li>
                                        <li><a href="/family/cscenter_list.jsp">고객의소리</a></li>
                                    </ul>
                                </div>
                              </li>
                         <% } %>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 브랜드소개</span>
                                 <div class="hamburger is-active" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                            <div class="list_hidden">
                                <ul class="ham_ul_list">
            <!-- 						<li><a href="/brand/ceo.jsp">회장 인사말</a></li> -->
                                    <li><a href="/brand/brandstory.jsp">브랜드스토리</a></li>
                                    <li><a href="/brand/about.jsp">연혁 &amp; 수상</a></li>
                                    <li><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">인재채용</a></li>
                                    <li><a href="/brand/map.jsp">오시는길</a></li>
                                    <li><a href="/brand/phil.jsp">경영 철학</a></li>
                                    <li><a href="/brand/ceo_.jsp">CEO 인삿말</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 메뉴소개</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                 					<li><a href="/menu/new_s_w_f.jsp">스.우.파 세트</a></li>
                                    <li><a href="/menu/new_c_p_d.jsp">치PD</a></li>
                                    <!--<li><a href="/menu/new.jsp">신메뉴</a></li>-->
                                    <li><a href="/menu/menu_list.jsp?class=">치킨메뉴</a></li>
                                    <li><a href="/menu/menu_list.jsp?class=15">피자메뉴</a></li>
                                    <li><a href="/menu/menu_list.jsp?class=40">사이드메뉴</a></li>
                                    <!-- <li><a href="">세트메뉴</a></li>
                                    <li><a href="">사이드메뉴</a></li> -->
                                    <li><a href="/menu/recipe_list.jsp">레시피소개</a></li>
            <!-- 						<li><a href="/menu/wing.jsp">고추바사삭 윙 소개</a></li> -->
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 매장찾기</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/store/search_newstore.jsp">월별 신규매장</a></li>
                                    <li><a href="/store/search_store.jsp">국내매장</a></li>
                                    <li><a href="/global.jsp">해외매장/Global</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 창업정보</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/franchise/franchise.jsp">창업정보</a></li>
                                    <li><a href="/franchise/franchise_qna.jsp">창업 FAQ</a></li>
                                    <li><a href="/franchise/franchise_seminar.jsp">창업 전화상담</a></li>
                                    <li><a href="/franchise/franchise_consulting.jsp">온라인 창업상담</a></li>
                                    <li><a href="/franchise/franchise_cost.jsp">창업비용</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 홍보센터</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/advertise/press_list.jsp">언론보도</a></li>
                                    <li><a href="/advertise/social.jsp">굽네 소셜미디어</a></li>
                                    <li><a href="/advertise/media.jsp">굽네TVCF소개</a></li>
            <!-- 						<li><a href="/advertise/schedule_list.jsp">TVCF광고일정</a></li> -->
                                    <li><a href="/advertise/contribution_list.jsp">3生 캠페인 소개</a></li>
                                    <li><a href="/advertise/goobcar_list.jsp">굽카 히스토리</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 이벤트</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/event/event_list.jsp">진행중인 이벤트</a></li>
                                <% //if ("".equals(UserIdx)) { %>
                                    <!-- <li><a href="/member/login.jsp">굽카후기 이벤트</a></li> -->
                                <% //} else { %>
                                    <li><a href="/event/goobcarepil_list.jsp">굽카후기 이벤트</a></li>
                                <% //} %>
                                    <li><a href="/event/win_list.jsp">당첨자 발표</a></li>
                                </ul>
                            </div>
                          </li>
                          <% if ("".equals(UserIdx)) { %>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 고객지원센터</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                <% if ("".equals(UserIdx)) { %>	
                                    <li><a href="/member/login.jsp">고객의 소리</a></li>
                                    <li><a href="/member/login.jsp">고객공모전</a></li>
                                    <li><a href="/member/login.jsp">굽카 신청하기</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
                                 <% } else { %>
                                    <li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
                                    <li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
                                    <li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
                                <% } %>
                                </ul>
                            </div>
                          </li>
                        <% } else { %>
                            <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> 고객지원센터</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                <% if ("".equals(UserIdx)) { %>	
                                    <li><a href="/customer/cscenter_regi.jsp">고객지원센터</a></li>
                                    <li><a href="/member/login.jsp">고객의 소리</a></li>
                                    <li><a href="/member/login.jsp">고객공모전</a></li>
                                    <li><a href="/member/login.jsp">굽카 신청하기</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
                            <% } else { %>
                                    <li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
                                    <li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
                                    <li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
                            <% } %>
                                </ul>
                            </div>
                          </li>
                        <% } %> 
                        
                        <% if (UserIdx.equals("")) { %>
                        <% } else { %>
                        <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name">My Page</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                   <li><a href="/mypage/my_qna_list.jsp">문의내역</a></li>
                                    <li><a href="javascript:loginnet('/member/resign.aspx');">회원탈퇴</a></li>
                                    <li><a href="javascript:loginnet('/member/change_pw.aspx');">비밀번호 변경</a></li>
                                    <li><a href="javascript:loginnet('/member/info_change.aspx');">회원정보 변경</a></li>
                                </ul>
                            </div>
                          </li>
                        <% } %>
                     </ul>
                     <div class="ham_footer">COPYRIGHT. 2009-2016 GOOBNE.CO.ALL RIGHT RESERVED</div>
                </div>
            </div>
        </div>
        
        <!-- /.container-fluid -->
        
    </nav>



<header id="header" style="display:none;">
	<div class="header_top">
		<p class="header_call">주문전화<strong>1661-9494</strong></p>
        <h1 class="logo"><a href="/" >Goobne</a></h1>
		<!-- 로그인 전 -->
	<% if (UserIdx.equals("")) { %>
		<div class="gnb_member">
			<a href="https://www.goobne.co.kr/member/login.jsp" class="gnb_member_link">로그인</a>
			<a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>" class="gnb_member_link">회원가입</a>
		</div>
	<% } else { %>
		<!--  로그인 후 -->
		<div class="gnb_member gnb_member_login">
			<div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">마이페이지</a>
				<ul>
					<li><a href="/mypage/my_qna_list.jsp">문의내역</a></li>
					<li><a href="javascript:loginnet('/member/resign.aspx');">회원탈퇴</a></li>
					<li><a href="javascript:loginnet('/member/change_pw.aspx');">비밀번호 변경</a></li>
					<li><a href="javascript:loginnet('/member/info_change.aspx');">회원정보 변경</a></li>
				</ul>
			</div>
		<% if ("22".equals(UserLevel)) { %>
			<!-- <div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">직원게시판</a>
				<ul>
					<li><a href="/company/notice_list.jsp">공지사항</a></li>
					<li><a href="/company/opinion_list.jsp">통(通)합시다!</a></li>
					<li><a href="/company/anonymity_list.jsp">토론마당</a></li>
					<li><a href="/company/photo_list.jsp">우리가족이야기</a></li>
					<li><a href="/company/eduinfo_list.jsp">교육정보게시판</a></li>
					<li><a href="/company/form_list.jsp">자료실</a></li>
					<li><a href="/company/poll_list.jsp">투표게시판</a></li>
					<li><a href="/company/divisionform_list.jsp">사업부자료실</a></li>
					<li><a href="/company/infoshare_list.jsp">업무공유게시판</a></li>
				</ul>
			</div> -->
		<% } %>
		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<div class="gnb_member_nav">
 				<a href="#" class="gnb_member_link">성공 뱅크</a>
				<ul>
					<li><a href="/family/successknow_list.jsp">성공노하우</a></li>
					<li><a href="/family/successstory_list.jsp">성공스토리</a></li>
				</ul>
			</div>
		<% } %>
		
		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">가족게시판</a>
				<ul>
<!-- 					<li><a href="/family/successstory_list.jsp">성공스토리</a></li> -->
<!-- 					<li><a href="/family/successknow_list.jsp">성공노하우</a></li> -->
<!-- 					<li><a href="javascript:alert('준비중입니다.');">우수사례</a></li> -->
					<li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">매뉴얼</a></li>
					<li><a href="/family/suggest_list.jsp">건의사항</a></li>
					<li><a href="/family/notice_list.jsp">공지사항</a></li>
					<li><a href="/family/discussion_list.jsp">토론방</a></li>
					<li><a href="/family/reference_list.jsp">자료실</a></li>
					<li><a href="/family/cscenter_list.jsp">고객의소리</a></li>
				</ul>
			</div>
		<% } %>
			<a href="javascript:userlogout();" class="gnb_member_link">로그아웃</a>
		</div>
	<% } %>
		<!-- <a href="<%=Const.GnOrder %>/order/delivery.aspx" target="gnorder" class="btn_order hvr-pop">온라인주문</a> -->
		<a href="javascript:loginnet('');" class="btn_order">온라인주문</a>
		<p class="btn_gnb"><a href=""><i></i><span class="blind">MENU</span></a></p>
	</div>
	
	<nav id="gnb">
		<div class="gnb_wrap gnb_1depth">
			<h1 class="logo sticky_logo"><a href="/" >Goobne</a></h1>
			<ul>
				<li><a href="/brand/brandstory.jsp">브랜드소개</a>
					<ul>
<!-- 						<li><a href="/brand/ceo.jsp">회장 인사말</a></li> -->
						<li><a href="/brand/brandstory.jsp">브랜드스토리</a></li>
						<li><a href="/brand/about.jsp">연혁 &amp; 수상</a></li>
						<li><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">인재채용</a></li>
						<li><a href="/brand/map.jsp">오시는길</a></li>
 						<li><a href="/brand/phil.jsp">경영 철학</a></li>
                        <li><a href="/brand/ceo_.jsp">CEO 인삿말</a></li>
					</ul>
				</li>
				<li><a href="/menu/new_s_w_f.jsp">메뉴소개</a>
					<ul>
                        <li><a href="/menu/new_s_w_f.jsp">스.우.파 세트</a></li>
						<li><a href="/menu/new_c_p_d.jsp">치PD</a></li>
						<!--<li><a href="/menu/new.jsp">신메뉴</a></li>-->
						<li><a href="/menu/menu_list.jsp?class=">치킨메뉴</a></li>
						<li><a href="/menu/menu_list.jsp?class=15">피자메뉴</a></li>
						<li><a href="/menu/menu_list.jsp?class=40">사이드메뉴</a></li>
						<!-- <li><a href="">세트메뉴</a></li>
						<li><a href="">사이드메뉴</a></li> -->
						<li><a href="/menu/recipe_list.jsp">레시피소개</a></li>
<!-- 						<li><a href="/menu/wing.jsp">고추바사삭 윙 소개</a></li> -->
					</ul>
				</li>
				<li><a href="/store/search_store.jsp">매장찾기</a>
					<ul>
						<li><a href="/store/search_newstore.jsp">월별 신규매장</a></li>
						<li><a href="/store/search_store.jsp">국내매장</a></li>
						<li><a href="/global.jsp">해외매장/Global</a></li>
					</ul>
				</li>
				<li><a href="/franchise/franchise.jsp">창업정보</a>
					<ul>
						<li><a href="/franchise/franchise.jsp">창업정보</a></li>
						<li><a href="/franchise/franchise_qna.jsp">창업 FAQ</a></li>
						<li><a href="/franchise/franchise_seminar.jsp">창업 전화상담</a></li>
						<li><a href="/franchise/franchise_consulting.jsp">온라인 창업상담</a></li>
						<li><a href="/franchise/franchise_cost.jsp">창업비용</a></li>
					</ul>
				</li>
				<li><a href="/advertise/press_list.jsp">홍보센터</a>
					<ul>
						<li><a href="/advertise/press_list.jsp">언론보도</a></li>
						<li><a href="/advertise/social.jsp">굽네 소셜미디어</a></li>
						<li><a href="/advertise/media.jsp">굽네TVCF소개</a></li>
<!-- 						<li><a href="/advertise/schedule_list.jsp">TVCF광고일정</a></li> -->
						<li><a href="/advertise/contribution_list.jsp">3生 캠페인 소개</a></li>
						<li><a href="/advertise/goobcar_list.jsp">굽카 히스토리</a></li>
					</ul>
				</li>
				<li><a href="/event/event_list.jsp">이벤트</a>
					<ul>
						<li><a href="/event/event_list.jsp">진행중인 이벤트</a></li>
					<% //if ("".equals(UserIdx)) { %>
						<!-- <li><a href="/member/login.jsp">굽카후기 이벤트</a></li> -->
					<% //} else { %>
						<li><a href="/event/goobcarepil_list.jsp">굽카후기 이벤트</a></li>
					<% //} %>
						<li><a href="/event/win_list.jsp">당첨자 발표</a></li>
					</ul>
				</li>
			<% if ("".equals(UserIdx)) { %>
				<li><a href="/member/login.jsp">고객지원센터</a>
					<ul>
				<% if ("".equals(UserIdx)) { %>	
						<li><a href="/member/login.jsp">고객의 소리</a></li>
						<li><a href="/member/login.jsp">고객공모전</a></li>
						<li><a href="/member/login.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } else { %>
						<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
						<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
						<li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } %>
					</ul>
				</li>
			<% } else { %>
				<li><a href="/customer/cscenter_regi.jsp">고객지원센터</a>
					<ul>
				<% if ("".equals(UserIdx)) { %>	
						<li><a href="/member/login.jsp">고객의 소리</a></li>
						<li><a href="/member/login.jsp">고객공모전</a></li>
						<li><a href="/member/login.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } else { %>
						<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
						<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
						<li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } %>
					</ul>
				</li>
			<% } %>
			</ul>
		</div>
		<div class="gnb_bg"></div>
	</nav>
	
	<!-- m Gnb -->
	<nav id="mGnb">
		<div class="mGnb_head_wrap">
			<ul class="mGnb_head mGnb_login">
			<% if (UserIdx.equals("")) { %>
				<!-- 로그인 전 -->
				<li><a href="https://www.goobne.co.kr/member/login.jsp">로그인</a></li>
				<li><a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>">회원가입</a></li>
			<% } else { %>
				<!-- 로그인 후 -->
				<li><a href="/mypage/my_qna_list.jsp">마이페이지</a></li>
				<% if (UserLevel.equals("22")) { %>
				<li><a href="/family/notice_list.jsp">가족게시판</a></li>
				<% } %>
				<li><a href="javascript:userlogout();">로그아웃</a></li>
			<% } %>
			</ul>
		</div>
		
    	<ul class="mGnb_wrap">
    		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<li>
    			<p>성공뱅크</p>
    			<ul>
					<li><a href="/family/successknow_list.jsp">성공노하우</a></li>
					<li><a href="/family/successstory_list.jsp">성공스토리</a></li>
    			</ul>
    		</li>
			<% } %>
			
    		<li>
    			<p>브랜드소개</p>
    			<ul>
<!--     				<li><a href="/brand/ceo.jsp">CEO 인사말</a></li> -->
					<li><a href="/brand/brandstory.jsp">브랜드스토리</a></li>
					<li><a href="/brand/about.jsp">연혁,수상내역</a></li>
					<li><a href="/brand/map.jsp">오시는길</a></li>
<!-- 					<li><a href="/brand/philosophy.jsp">경영 철학</a></li>200323 add -->
                    <li><a href="/brand/ceo_.jsp">CEO 인삿말</a></li>
    			</ul>
    		</li>
    		<li>
    			<p>메뉴소개</p>
    			<ul>
					<li><a href="/menu/new_s_w_f.jsp">스.우.파 세트</a></li>
					<li><a href="/menu/new_c_p_d.jsp">치PD</a></li>
					<!-- <li><a href="/menu/new.jsp">신메뉴</a></li> 211026 주석처리-->
<!-- 					<li><a href="/menu/menu_list.jsp">메뉴보기</a></li> -->
					<li><a href="/menu/menu_list.jsp?class=">치킨메뉴</a></li>
					<li><a href="/menu/menu_list.jsp?class=15">피자메뉴</a></li>
					<li><a href="/menu/menu_list.jsp?class=40">사이드메뉴</a></li>
					<!-- <li><a href="">세트메뉴</a></li>
					<li><a href="">사이드메뉴</a></li> -->
					<li><a href="/menu/recipe_list.jsp">레시피소개</a></li>
<!-- 					<li><a href="/menu/wing.jsp">고추바사삭 윙 소개</a></li> -->
				</ul>
    		</li>
    		<li>
    			<p>매장찾기</p>
    			<ul>
					<li><a href="/store/search_newstore.jsp">월별 신규매장</a></li>
					<li><a href="/store/search_store.jsp">국내매장</a></li>
					<li><a href="/global.jsp">해외매장</a></li>
				</ul>
    		</li>
    		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<li>
				<p>가족게시판</p>
				<ul>
<!-- 					<li><a href="/family/successstory_list.jsp">성공스토리</a></li> -->
<!-- 					<li><a href="/family/successknow_list.jsp">성공노하우</a></li> -->
					<!-- <li><a href="javascript:alert('준비중입니다.');">우수사례</a></li> -->
					<li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">매뉴얼</a></li>
					<li><a href="/family/suggest_list.jsp">건의사항</a></li>
					<li><a href="/family/notice_list.jsp">공지사항</a></li>
					<li><a href="/family/discussion_list.jsp">토론방</a></li>
					<li><a href="/family/reference_list.jsp">자료실</a></li>
					<li><a href="/family/cscenter_list.jsp">고객의소리</a></li>
				</ul>
			</li>
			<% } %>
    		
    		<li>
    			<p><a href="/franchise/franchise.jsp">창업정보</a></p>
    			
    		</li>
    		<!--
    		<li>
    			<p>홍보센터</p>
    			<ul>
					<li><a href="/advertise/press_list.jsp">언론보도</a></li>
					<li><a href="/advertise/social.jsp">굽네소셜미디어</a></li>
					<li><a href="/advertise/media.jsp">굽네미디어</a></li>
					<li><a href="/advertise/contribution_list.jsp">사회공헌</a></li>
					<li><a href="/advertise/goobcar_list.jsp">굽네소개</a></li>
				</ul>
    		</li> -->
    		<li>
    			<p>이벤트</p>
    			<ul>
					<li><a href="/event/event_list.jsp">진행중인 이벤트</a></li>
					<li><a href="/event/goobcarepil_list.jsp">굽카후기 이벤트</a></li>
					<li><a href="/event/win_list.jsp">당첨자 발표</a></li>
				</ul>
    		</li>
    		<li>
    			<p>고객지원센터</p>
    			<ul>
			<% if (UserIdx.equals("")) { %>	
					<li><a href="/member/login.jsp">고객의 소리</a></li>
					<li><a href="/member/login.jsp">고객공모전</a></li>
					<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
			<% } else { %>
					<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
					<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
					<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
			<% } %>
				</ul>
    		</li>
    		<li>
    			<a href="http://www.goobnemall.com/m/view/event/X4N7DFJQ6MH0DVV4/read?evnt_id=SZ1XHK58I&evntType=CMT&evntSt=20&brdId=I93CH23GL&pageNum=1" target="_blank"><img src="/resources/images/main/bn_main_gnmall_M.jpg" width="100%" alt="굽네몰 첫구매 100원, 볼케이노 소스"></a>
    		</li>
    		<li class="mGnb_sns_wrap">
    			<div class="sns_wrap mGnb_sns">
					<ul class="header_sns">
						<li class="foot_fb"><a href="https://www.facebook.com/goobne" target="_blank" title="굽네 페이스북 새창열림">facebook</a></li>
				<li class="foot_blog"><a href="http://blog.naver.com/goobne94" target="_blank" title="굽네 블로그 새창열림">blog</a></li>
				<li class="foot_insta"><a href="https://www.instagram.com/explore/tags/%EA%B5%BD%EB%84%A4%EC%B9%98%ED%82%A8/" target="_blank" title="굽네 인스타그램 새창열림">instagram</a></li>	
					</ul>
				</div>
    		</li>
    	</ul>
    </nav>  
</header>
<form name="loginnet" target="<%=formtarget%>" method="post">
<input type="hidden" name="useridxnet" id="useridxnet" value="<%=UserIdx %>" />
<input type="hidden" name="useridnet" id="useridnet" value="<%=UserId %>" />
<input type="hidden" name="userlevelnet" id="userleveldnet" value="<%=UserLevel %>" />
<input type="hidden" name="userbranchnet" id="userbranchdnet" value="<%=UserBranch %>" />
<input type="hidden" name="userurl" id="userurl" value="/order/delivery.aspx" />
</form>
