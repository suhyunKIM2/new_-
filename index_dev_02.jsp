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
   
/*.section1.bg,.section1.bg1{background:#000 url(/2021renew_img/mainbanner/20220329_pc_bg.png)center bottom  !important;background-size:cover !important;opacity: 1 !important;transition: 0.4s all !important;}*/
.flower_div_top{position:absolute;top:-5px;right:-23px;width:300px;}
  .flower_div_top_left{position: absolute;
    top: -15px;
    left: -33px;
    width: 300px;
    transform: rotate(238deg);}
.section1.bg,.section1.bg1{background:#7c5538 url(/resources/images/main/220527_micro_ovbss/bg_pc.jpg)!important;background-size:cover !important;;transition: 0.4s all !important;}  
.section1.bg2{background:#7c5538 url(/2021renew_img/mainbanner/220503_columbasak/main_bg_columbasak.jpg)!important;background-size:cover !important;;transition: 0.4s all !important;}  
.section1.bg5{background:#ffedec url(/2021renew_img/spring_bg_3.jpg) !important;background-size:cover !important;opacity: 1 !important;transition: 0.4s all !important;}    
.section1.bg5 {
    background:#afd1ea url(/2021renew_img/mainbanner/main_banner_bg_02.png) no-repeat bottom !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover !important;
        background-color: #afd1ea  !important;
}
.section1.bg5 {
    background: url(/2021renew_img/mainbanner/220419_dhuman/bg_pc.jpg) no-repeat bottom !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover !important;
}
.section1.bg6 {
    background:#afd1ea url(/2021renew_img/mainbanner/main_banner_bg_02.png) no-repeat center !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover !important;
    background-color: #afd1ea  !important;
}


.section1.bg5 .flower_div_top_left,.section1.bg5 .flower_div_top{opacity: 0;transition: 0.4s all;}
.section1.bg5 .container_star{opacity: 0;transition: 0.4s all;}
.container_star{opacity: 0;transition: 0.4s all;}

.slider_img_background_bpset_menu{position:relative;margin: auto;}
.slider_img_background_bpset_menu_img{width:100%;max-height: 100% !important;}
.btn_text{position:absolute;top:23%;right:4%;width:22%;animation: motion 0.3s linear 0s infinite alternate; margin-top: 0;cursor: pointer;}
.btn_text img{image-rendering: auto !important;width:100% !important;}

.slider_img_background_img_m{display: none !important;}
.slick-slide .slider_img_background_img{width:60% !important;    min-width: 1100px;}
.slider_img_background_bpset_menu_2{width:16% !important;max-height: 100% !important;image-rendering: auto !important;}

.btn_text_02{right: auto;left:3%;width:38%;top:45%;}
.slick-slide .slider_img_background_bpset_menu_img_mo{display:none;}
	/* S: 콜럼바삭 logo */
	.list_slider .main_columbasak_img {width:60%;image-rendering: auto;}
	@media only screen and (max-width:1280px){
		.list_slider .main_columbasak_img {width:83%;}
	}
	@media only screen and (max-width:1024px){
		.list_slider .main_columbasak_img {width:95%;}
	}
	/* E: 콜럼바삭 logo */

/* S: 메인: 220506 공룡 콜라보 */
	/*.section1.bg3 {background: url('/2021renew_img/mainbanner/220506_dino/220504_mainbanner_collabo-dino_bg_pc.jpg') no-repeat center !important;background-size:cover !important;}*/
	.main_dino_bg {margin:0 auto;}
	.main_dino_bg .main_dino_img_pc {width: 100%;}
	.main_dino_bg .main_dino_img_pc img {width: 47%;max-height: 100%;height:auto;image-rendering: auto;}
	.main_dino_bg .main_dino_img_mo {display: none;}
@media only screen and (max-width:1280px){
	.main_dino_bg .main_dino_img_pc img {width: 65%;}
	}
@media only screen and (max-width:1024px){
	.main_dino_bg .main_dino_img_pc img {width: 77%;}
	}
@media only screen and (max-width:800px){
	/*.section1.bg3 {background: url('/2021renew_img/mainbanner/220506_dino/220504_mainbanner_collabo-dino_bg_mo.jpg') no-repeat center !important;background-size:cover !important;}*/
	.main_dino_bg .main_dino_img_pc {display: none;}
	.main_dino_bg .main_dino_img_mo {display: block;width: 100%;}
	.main_dino_bg .main_dino_img_mo img {width:50%;max-height: 100%;height:auto;image-rendering: auto;}
	}
	/* S: 타블렛 */
@media only screen and (min-device-width : 1024px) and (max-device-width : 1366px){
	.main_dino_bg .main_dino_img_pc img {width: 73%;}	
	}
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px){
	.main_dino_bg .main_dino_img_pc {margin-top: 5%;}
	.main_dino_bg .main_dino_img_pc img {width: 67%;}
	.main_dino_bg .main_dino_img_mo img {width: 65%;}
	}
@media only screen and (min-device-width : 800px) and (max-device-width : 1280px){
	.main_dino_bg .main_dino_img_pc {margin-top: 3%;}
	.main_dino_bg .main_dino_img_pc img {width: 60%;}
	}
@media only screen and (min-device-width : 600px) and (max-device-width : 1280px){
	.main_dino_bg .main_dino_img_pc img {width: 53%;max-height: 100%!important;height:auto;}
	}
@media only screen and (min-device-width : 540px) and (max-device-width : 720px){
	.main_dino_bg .main_dino_img_mo img {width: 40%;max-height: 100%!important;height:auto;}
	}
	/* E: 타블렛 */
@media only screen and (max-width:480px){
	.main_dino_bg .main_dino_img_mo img {width: 90%;}
	}
@media only screen and (max-width:414px){
	.main_dino_bg .main_dino_img_mo {margin-top: 23%;}
	}
@media only screen and (max-width:412px){
	.main_dino_bg .main_dino_img_mo {margin-top: 15%;}
	}
@media only screen and (max-width:411px){
	.main_dino_bg .main_dino_img_mo {margin-top: 23%;}
	}
@media only screen and (max-width:375px){
	.main_dino_bg .main_dino_img_mo {margin-top: 33%;}
	}
@media only screen and (max-width:360px){
	.main_dino_bg .main_dino_img_mo {margin-top: 37%;}
	}
@media only screen and (max-width:320px){
	.main_dino_bg .main_dino_img_mo {margin-top: 17%;}
	.main_dino_bg .main_dino_img_mo img {max-height: 100%!important;height:auto;}
	}
@media only screen and (max-width:280px){
	.main_dino_bg .main_dino_img_mo {margin-top: 55%;}
	}
/* E: 메인: 220506 공룡 콜라보 */
	
/* S: 메인: 220510 불금치킨 이벤트 */
	.section1.bg3 {background: url('/2021renew_img/mainbanner/220510_event_bgchicken/bg_pc.jpg') no-repeat center !important;background-size:cover !important;}
	.main_event_bgchicken_img_pc {margin-top: 1.5%;display: inline-block;width:100%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {max-width:1000px;width:75%;max-height: 100% !important; image-rendering:auto;}
	.main_event_bgchicken_img_mo {display: none;}
@media only screen and (max-width:1280px){
	.main_event_bgchicken_img_pc {margin-top: 5%;}
	}
@media only screen and (max-width:800px){
	.main_event_bgchicken_img_pc {margin-top: 17%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {width:90%;}
	.section1.bg3 {background: url('/2021renew_img/mainbanner/220510_event_bgchicken/bg_mo.jpg') no-repeat center !important;background-size:cover !important;}
	}
/* S: 타블렛 */
/* iPad Pro */
@media only screen and (min-device-width : 1024px) and (max-device-width : 1366px){
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {max-width: 1100px!important;width:90%;}
	}
/* iPad */
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px){
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {width:75%;}
	}
/* Nest Hub Max */
@media only screen and (min-device-width : 800px) and (max-device-width : 1280px){
	.main_event_bgchicken_img_pc {margin-top: 6%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {max-width: 800px;}
	}
/* Nest Hub but iPad Pro vertical*/
@media only screen and (min-device-width : 600px) and (max-device-width : 1280px){
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {width: 85%;}
	}
/* Surface Duo */	
@media only screen and (min-device-width : 540px) and (max-device-width : 720px){
	.main_event_bgchicken_img_pc {margin-top: 0%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_pc img {width:70%;}	
	}	
	/* E: 타블렛 */
@media only screen and (max-width:500px){
	.main_event_bgchicken_img_pc {display: none;}
	.main_event_bgchicken_img_mo {display: inline-block;width:100%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:80%;max-height: 100% !important;image-rendering:auto;}
	}
@media only screen and (max-width:414px){
	.main_event_bgchicken_img_mo {margin-top: 23%;}
	}
@media only screen and (max-width:412px){
	.main_event_bgchicken_img_mo {margin-top: 4%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:90%;}
	}
@media only screen and (max-width:411px){
	.main_event_bgchicken_img_mo {margin-top: 23%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:77%;}
	}
@media only screen and (max-width:375px){
	.main_event_bgchicken_img_mo {margin-top: 33%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:80%;}
	}
@media only screen and (max-width:360px){
	.main_event_bgchicken_img_mo {margin-top: 33%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:70%;}
	}
@media only screen and (max-width:320px){
	.main_event_bgchicken_img_mo {margin-top: 3%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:70%;}
	}
@media only screen and (max-width:280px){
	.main_event_bgchicken_img_mo {margin-top: 45%;}
	.main_event_bgchicken_bg .main_event_bgchicken_img_mo img {width:87%;}
	}*/
/* S: 메인: 220510 불금치킨 이벤트 */
	
/* S: 220415 오븐/치즈바사삭+찍먹커리 */
.section1.bg5 {background: url('/2021renew_img/mainbanner/220509_ovbss/bg_pc.jpg') no-repeat center !important;background-size:cover !important;}
.mainbanner_bss_background {position:relative;width:100% !important;max-height: 100%;}
.mainbanner_bss_img_pc {width:53% !important;max-height: none !important;image-rendering: auto !important;}
#mainbanner_bss_img_mo {display: none !important;}	
.mainbanner_bss_btn_pc {position: absolute;top: 81%;right: 25%;max-width: 344px;width: 19%;}
.mainbanner_bss_btn_mo {display: none;}
@media only screen and (max-width:1420px){
	.mainbanner_bss_img_pc {width:65% !important;margin-top: 2.5% !important;}
	}
@media only screen and (max-width:1024px){
	.mainbanner_bss_img_pc {width:80% !important;margin-top: 5% !important;max-height: 100% !important;}
	}
@media only screen and (max-height:601px){
	.section1.bg5 {background: url('/2021renew_img/mainbanner/220509_ovbss/bg_mo.jpg') no-repeat center !important;background-size:cover !important;}
	.mainbanner_bss_img_pc {width:45% !important;margin-top: 0 !important;}
	}
@media only screen and (max-width: 512px){
	.section1.bg5 {
    opacity: 1 !important;transition: 0.4s all !important;
    background-color: #fcd051  !important;
	}
	.mainbanner_bss_img_pc {display: none !important;}
	#mainbanner_bss_img_mo {display: block !important; margin-top: 3% !important; max-width: 77% !important; max-height: 100% !important;}
	.mainbanner_bss_btn_pc {display: none;}
    .mainbanner_bss_btn_mo {display: block; margin-top: 3% !important; margin-left: auto;margin-right: auto; padding-left: 5.7% !important; width: 60% !important;}	
	}
@media only screen and (max-width: 415px){
	#mainbanner_bss_img_mo {margin-top: 29% !important;}
	}
@media only screen and (max-width: 376px){
	#mainbanner_bss_img_mo {margin-top: 33.5% !important;}
	}	
@media only screen and (max-width: 361px){
	#mainbanner_bss_img_mo {margin-top: 40% !important;}
	}	
@media only screen and (max-width: 322px){
	#mainbanner_bss_img_mo {margin-top: 17% !important; max-width: 70% !important; max-height: 100% !important;}
	}
@media only screen and (max-width: 281px){
	#mainbanner_bss_img_mo {margin-top: 50% !important; max-width: 85% !important; max-height: 100% !important;}
	}	
/* E: 220415 오븐/치즈바사삭+찍먹커리 */
	
/* S: 220420 듀먼 */
	.list_slider .mainbanner_dhuman_bg {position: relative}
	.list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_pc {width: 30% !important;min-width: 650px;}
	.mainbanner_dhuman_btn {position: absolute;top: 82%;left: 41%;width: 18%;cursor: pointer;}
@media only screen and (max-width: 1600px){
	.mainbanner_dhuman_btn {top: 83%;left: 37.5%;width: 25%;}	
	}
@media only screen and (max-width: 1024px){
	.list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {max-width: 50% !important; min-width: 490px;}
	.mainbanner_dhuman_btn {top: 81%;left: 32%;width: 36%;}
	}
@media only screen and (max-width: 720px){
	.list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {min-width: 450px;}
	.mainbanner_dhuman_btn {top: 83%;left: 27.3%;width: 45%;}
	}
@media only screen and (max-width: 512px){
    .section1.bg5 {background: url(/2021renew_img/mainbanner/220419_dhuman/bg_mo.jpg) no-repeat bottom !important;
    background-size: cover;}
	.list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {min-width: 400px;}
	.mainbanner_dhuman_btn {left: 19.5%;width: 60%;}
	}
@media only screen and (max-width: 500px){
	.slider .list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {margin-top: 0px !important;}
	}
@media only screen and (max-width: 414px){
	.slider .list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {margin-top: 95px !important;min-width: 360px;width:40% !important;}
	}
@media only screen and (max-width: 360px){
	.slider .list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {margin-top: 130px !important;min-width: 290px;width:30% !important;}
	}
@media only screen and (max-width: 320px){
	.slider .list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {margin-top: 40px !important;min-width: 250px;}
	.mainbanner_dhuman_btn {left: 15%;width: 70%;}
	}
@media only screen and (max-width: 280px){
	.slider .list_slider .mainbanner_dhuman_bg .mainbanner_dhuman_title_mo {margin-top: 120px !important;}}
	
/* E: 220419 듀먼 */
	
	
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
.new_page style{display:none;}
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
.section1.bg5 {
    background: url(/2021renew_img/mainbanner/220419_dhuman/bg_mo.jpg) no-repeat center cover !important;}
/*.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 157px !important;
}
.slick-slide img.slider_img_background_02 {
    padding-top: 97px !important;}*/
.section1.bg6 {
    background:#afd1ea url(/2021renew_img/mainbanner/main_banner_bg_02.png) no-repeat center !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover !important;
    background-color: #afd1ea  !important;
}
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
	  .section1.bg6 {
    background:#afd1ea url(/2021renew_img/mainbanner/main_banner_bg_02.png) no-repeat center !important;
    opacity: 1 !important;transition: 0.4s all !important;
    background-size: cover !important;
	background-color: #afd1ea  !important;
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
@media only screen and (max-width:1000px){

.slick-slide .slider_img_background_bpset_menu_img_mo{display:block;padding-bottom: 5%;}
.slick-slide .slider_img_background_bpset_menu_img_pc{display:none;}
.btn_text.btn_text_02 {
    right: auto;
    left: 50%;
    width: 50%;
    top: 77%;
    transform: translateX(-50%);
}
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
.flower_div_top_left{left:-17px;}
.slick-slide .slider_img_background_img_m{width:80% !important;}
.slider_img_background_bpset_menu_2 {
    width: 40% !important;
}
.slick-slide .slider_img_background_bpset_menu_img_mo{width:90% !important;padding-bottom: 7%;padding-top: 7%;}
.btn_text.btn_text_02 {
    right: auto;
    left: 50%;
    width: 60%;
    top: 74%;
    transform: translateX(-50%);
}
}
  @media only screen and (max-width:717px){
  .slick-slide .slider_img_background_img_m{width: 60% !important;}
  .slider_img_background_bpset_menu_2 {
    width: 18% !important;
}
.slick-slide .slider_img_background.slider_img_background_img_m {
    margin-top: 25px !important;
}
.slick-slide img.slider_img_background_02 {
    width: 40% !important; margin-top: 0 !important;
}
  }
  @media only screen and (max-width:512px){ 
  .list_slider_ul_sns li:nth-child(1){height: auto;min-height: 100%;}
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
.slider_img_background_bpset_menu_02{width:100% !important;}
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
.section1.bg5 .flower_div_top_left,.section1.bg5 .flower_div_top{opacity: 100;} */ 
.section1.bg5 .container_star{opacity: 100;}
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
.slick-slide .slider_img_background_bpset_menu_img_mo{padding-top:0;}
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


@media only screen and (min-device-width : 512px) and (max-device-height : 717px) {
.btn_text.btn_text_02 {
    right: auto;
    left: 50%;
    width: 54%;
    top: 74%;
    transform: translateX(-50%);
}
.slick-slide .slider_img_background_bpset_menu_img_mo {
    width: 80% !important;
    padding-bottom: 4%;
}
#mainbanner_bss_img_mo {
    margin-top: 24% !important;
    max-width: 62% !important;
}
}
@media only screen and (min-device-width : 540px) and (max-device-height : 720px) {
.slick-slide .slider_img_background_bpset_menu_img_mo {
    width: 90% !important;
    padding-bottom: 7%;
    padding-top: 16%;
}
}
@media only screen and (min-device-width : 717px) and (max-device-height : 512px) {
.slick-slide .slider_img_background_bpset_menu_img_mo {
    width: 55% !important;
    padding-bottom: 7%;
}
.btn_text.btn_text_02 {
    right: auto;
    left: 50%;
    width: 32%;
    top: 74%;
    transform: translateX(-50%);
}
}
@media only screen and (min-device-width : 720px) and (max-device-height : 540px) {
.slick-slide .slider_img_background_bpset_menu_img_mo {
    width: 57% !important;
    padding-bottom: 7%;
    padding-top: 0%;
}
.btn_text.btn_text_02 {
    right: auto;
    left: 50%;
    width: 32%;
    top: 74%;
    transform: translateX(-50%);
}
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
.btn_text.btn_text_02{
    right: auto;
    left: 3%;
    width: 38%;
    top: 45%;
    transform: translateX(0);
}
.slick-slide .slider_img_background_bpset_menu_img_02 {
    width: 100% !important;
}
.slick-slide .slider_img_background_bpset_menu_img_pc {
    width: 100% !important;
}
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
.slick-slide .slider_img_background_bpset_menu_img_02 {
    width: 100% !important;
}
.slick-slide .slider_img_background_bpset_menu_img_pc {
    width: 100% !important;
}
}
/* 220517 S: 바비큐피자 */
  .banner-bbqpizza {width: 40%!important;}
@media only screen and (max-width:1280px){
    .banner-bbqpizza {width: 60%!important;}
  }
@media only screen and (max-width:800px){
    .slick-slide img.slider_img_background_02.banner-bbqpizza {width: 80%!important;}

  }
/* 220517 E: 바비큐피자 */	  
	  
	  
/* 220419 S: 더 알고 싶은 굽네: 대통령상, 좋은광고상 */
.sns_line_pc {margin-top:-3% !important;}
.sns_image_pc {top:5%;left:14.5%;}
@media only screen and (max-width:1250px){
	.sns_line_pc {width: 100% !important;margin-top: -10% !important;}
	.sns_image_pc {top:16%;left:18.5%;}}
@media only screen and (max-width:1024px){
	.sns_line_pc {margin-top: -19% !important;}
	.sns_image_pc {width:45%;top:36%;left:27.3%;}}
@media only screen and (max-width:768px){
	.sns_line_pc {margin-top: -7% !important;}
	.sns_image_pc {width:60%;top:17%;left:20%;}}
@media only screen and (max-width:700px){
	.sns_line_pc {margin-top: -7% !important;}
	.sns_image_pc {width:60%;top:17%;left:20%;}}
@media only screen and (max-width:640px){
	.list_slider_ul_sns li:nth-child(1){
		background-image: url('2021renew_img/footer_list_img/220419/sns_pre-award_background_mo.jpg') !important;
		height:100%;}
	.cover_slider3 li:nth-child(1){
		background-image: url('2021renew_img/footer_list_img/220419/sns_good-ad_background_mo.jpg') !important;
	}
	.list_slider_ul_sns li:nth-child(1),.cover_slider3 li:nth-child(1){
		background-repeat: no-repeat !important;
		background-position: center !important;
	}
	.sns_img_mo{height: 93% !important;}}
@media only screen and (max-width:414px){
	.sns_img_mo{height: 73% !important;margin-top: 20% !important;}}
@media only screen and (max-width:375px){
	.sns_img_mo{height: 65% !important;margin-top: 25% !important;}}
@media only screen and (max-width:320px){
	.sns_img_mo{height: 57% !important;margin-top: 35% !important;}}
@media only screen and (max-width:280px){
	.sns_img_mo{height: 50% !important;margin-top: 45% !important;}}
/* 220419 E: 더 알고 싶은 굽네: 대통령상, 좋은광고상 */
	  
/* 220517 S: 더 알고 싶은 굽네: 브랜드 평판 */
.sns_line_pc {margin-top:-3% !important;}
.reputation_title_pc {top:5%;left:5%;}
@media only screen and (max-width:1250px){
	.sns_line_pc {width: 100% !important;margin-top: -10% !important;}
	.reputation_title_pc {top:16%;left:8.5%;}}
@media only screen and (max-width:1024px){
	.sns_line_pc {margin-top: -19% !important;}
	.reputation_title_pc {width: 55%;top: 38%;left: 23.5%;}}
@media only screen and (max-width:768px){
	.sns_line_pc {margin-top: -7% !important;}
	.reputation_title_pc {width: 77%;top: 17%;left: 13%;}}
@media only screen and (max-width:700px){
	.sns_line_pc {margin-top: -7% !important;}
	.reputation_title_pc {width: 77%;top: 17%;left: 13%;}}
@media only screen and (max-width:640px){
	.cover_slider1 li:nth-child(1){background-image: url('/2021renew_img/footer_list_img/220517_reputation/bg_mo.jpg') !important;height:100%;}
@media only screen and (max-width:414px){
	.sns_img_mo{height: 73% ;margin-top: 20% !important;}}
@media only screen and (max-width:375px){
	.sns_img_mo{height: 65% ;margin-top: 25% !important;}}
@media only screen and (max-width:320px){
	.sns_img_mo{height: 57%;margin-top: 35% !important;}}
@media only screen and (max-width:280px){
	.sns_img_mo{height: 50%;margin-top: 45% !important;}}  
/* 220517 E: 더 알고 싶은 굽네: 브랜드 평판 */
	
/* 220419 S: 더 알고 싶은 굽네: 어나더사이드 오픈 */
@media only screen and (max-width:1024px){
	.sns_as_img_pc {width: 37% !important;}
	  }
@media only screen and (max-width:800px){
	.sns_as_img_pc {width: 49% !important;}
	  }
@media only screen and (max-width:640px){
	.cover_slider4 li:nth-child(1) {background-image:url('2021renew_img/footer_list_img/220425_sns/bg_mo.jpg')!important;}
	.sns_as_img_mo {width: 75% !important;margin-top: 10% !important;}
	  }
@media only screen and (max-width:540px){
	.sns_as_img_mo {margin-top: 19% !important;}
	  }
@media only screen and (max-width:414px){
	.sns_as_img_mo {margin-top: 35% !important;}
	  }
@media only screen and (max-width:280px){
	.sns_as_img_mo {margin-top: 60% !important;}
	  }	  
/* 220419 E: 더 알고 싶은 굽네: 어나더사이드 오픈 */
	  
</style>
<!---S:메인배너 수정시 파일명 버전 올리고 css파일 수정----->
<link href='/JQuery-Snowfall-master/dist/re_mainbanner_v8.css' rel='stylesheet' type='text/css'>
<!---E:메인배너 수정시 파일명 버전 올리고 css파일 수정----->

<!--<script>
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
  </script>-->
  <style>
      .display_none{display:none;}
/*유니버스 바사삭 추가부분 */      
.btn_position{position: absolute;
    left: 50%;
    top: 37%;
    transform: translate(-50%,-50%);
    /* margin-left: 297px; */
    width: 75%;
    cursor: pointer;
    max-width: 1000px;
    /* text-align: right;*/}
.btn_position img{image-rendering: auto;
    width: 24%;
    float: right;margin-right:73px;}
/*S: 버튼 모션 추가*/
.chatbox {animation: motion 0.3s linear 0s infinite alternate; margin-top: 0;}   
@keyframes motion {
0% {margin-top: 0px;}
100% {margin-top: 10px;}
}
-webkit-@keyframes motion {
0% {margin-top: 0px;}
100% {margin-top: 10px;}
}
/*E:버튼 모션 추가*/
@media only screen and (max-width: 800px){
.btn_position{top:49%;}
.btn_position img{margin-right:39px;}
}
@media only screen and (max-width: 500px){
.btn_position img {
    margin-right:-40px;width:45%;    margin-top: -115px;
}
.btn_position {
    top: 50%;width: 80%;
}
}
@media only screen and (max-width: 414px){
.btn_position img{margin-top:0;margin-right:-25px;}
}
@media only screen and (max-width: 412px){
.btn_position img{margin-top: -102px;}
}
@media only screen and (max-width: 411px){
.btn_position img{margin-top:0;}
}
@media only screen and (max-width: 375px){
.btn_position {
    top: 54%;}
    }
@media only screen and (max-width: 320px){
.btn_position {
    top: 42%;
}} 
@media only screen and (max-width: 280px){
.btn_position {
    top: 54%;
}} 

  </style>
</head>
<body id="page-top" class="index">

<!---S: 메인팝업--->

<div id="mask_popup"></div>
<span id="newcountdown" style="font-size:0;display:none;"></span>
<div class="window" id="window">
    <div class="slider single-item04" >
        <!--<div class="list_slider">
            <a href="https://www.goobne.co.kr/event/event_view_curry.jsp" ><img src="2021renew_img/popup/220401_event_preorder_popup.jpg"></a>
        </div>-->
		<!-- 요기요 이벤트 팝업 제거, 어광일과장 220425 긴급 요청 -->
		<!--div class="list_slider">
            <a href="https://hoy.kr/BrEMj"><img src="2021renew_img/popup/220415_popup_bss.jpg"></a>
        </div-->
		<!-- 요기요 이벤트 팝업 제거, 어광일과장 220425 긴급 요청 -->
		<!-- 220520 팝업: 공룡 콜라보 내림
		<div class="list_slider">
            <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=62326&page=1"><img src="2021renew_img/popup/220504_popup_dino.jpg" ></a>
        </div> -->
		<div class="list_slider">
            <a href="https://www.goobne.co.kr/event/event_view_bg.jsp"><img src="2021renew_img/popup/220510_popup_bgchicken.jpg" style="image-rendering:auto;"></a>
        </div>
        <div class="list_slider">
            <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=60905"><img src="2021renew_img/popup/220502_popup_dhuman.jpg" ></a>
        </div>
    </div>
    <!--<div id="new" style="visibility:hidden;">
        <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=60905"><img src="2021renew_img/popup/220302_popup_dhuman_2.jpg" ></a>
    </div>-->
    <div class="btn_wrap btn_blk">
        <ul class="popup_btn_ul ori">
            <li id="todayPopChk" class="web_order" onClick="javascript:todaycloseWin();" style="background:#36176e;">오늘 하루 보지 않기</li>
            <li id="closePopChk" class="main_pop_close close" onClick="javascript:closeWin();" style="background:#36176e;">닫기</li>
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
			<!--- 220421 벚꽃 제거 
            <div class="flower_div_top_left"><img src="/2021renew_img/flower_icon_r_1.png"></div>
            <div class="flower_div_top"><img src="/2021renew_img/flower_icon_r_1.png"></div> --->
          <div class="slider_div">
            <div class="slider single-item">
            <!--- 동영상이 첫번째 슬라이드 일때 적용 사항 : ① 첫번째 비디오 태그에 autoplay 추가, 첫번째 외 N번째는 태그에 autoplay삭제 / ② re_common_(버전 업 최상위 ex:re_common_v3.js) js파일 autoplay: false로 설정---->
            <!--- 동영상이 두번째부터~(즉, 첫번째 외 슬라이드 일때) 혹은 첫번째 슬라이드가 이미지 일 때 적용 사항 :  ① 비디오 태그에 autoplay삭제 / ② re_common_(버전 업 최상위 ex:re_common_v3.js) js파일 autoplay: true로 설정---->
                 <!--<div class="list_slider">
                       <a href="https://simte.xyz/%EC%82%AC%EB%82%B4%EC%97%B0%EC%95%A0%EC%9C%A0%ED%98%95%ED%85%8C%EC%8A%A4%ED%8A%B8" target="_blank"><img src="2021renew_img/mainbanner/bpset_mainbanner_btn.png" class="slider_img_background_bpset_btn"></a>
                       <div class="slider_img_background_bpset_menu slider_img_background_bpset_menu_02">
                           <img src="2021renew_img/mainbanner/20220329_pc_img_1.png" class="slider_img_background_bpset_menu_img slider_img_background_bpset_menu_img_pc">
                           <img src="2021renew_img/mainbanner/20220329_m_img_1.png" class="slider_img_background_bpset_menu_img slider_img_background_bpset_menu_img_mo">
                           <div class="btn_text btn_text_02" onClick="location.href='/event/event_view_curry.jsp'"><img src="2021renew_img/mainbanner/20220329_pc_btn.png" class="slider_img_background_bpset_menu_1"></div>
						</div>
                  </div>-->
                <div class="list_slider">
					  <div class="main_event_bgchicken_bg" style="position: relative;">
                          <div class="main_event_bgchicken_img_pc"><a href="/event/event_view.jsp?dt=62524"><img src="/resources/images/main/220527_micro_ovbss/img_pc_1.png"></a></div>
  						  <div class="main_event_bgchicken_img_mo"><a href="/event/event_view.jsp?dt=62524"><img src="/resources/images/main/220527_micro_ovbss/img_mo_1.png"></a></div>
                          <div class="btn_position chatbox"><a href="/event/event_view.jsp?dt=62524"><img src="/resources/images/main/220527_micro_ovbss/img_btn.png"></a></div>
					  </div>
                  </div>  
				<div class="list_slider">
					 <img src="/2021renew_img/mainbanner/220503_columbasak/main_img_columbasak.png" class="main_columbasak_img">
                     <div class='container container_video' style="margin-top: 1.5%;">
						<video id="vid" width="100%" height="auto" controls autoplay muted>
                           <source src="/2021renew_img/mainbanner/220503_columbasak/main_video_columbasak_2.mp4" type="video/mp4">
                        </video>
                     </div>
				  </div>
				  <div class="list_slider">
					  <div class="main_event_bgchicken_bg">
						  <div class="main_event_bgchicken_img_pc"><a href="https://www.goobne.co.kr/event/event_view_bg.jsp"><img src="/2021renew_img/mainbanner/220510_event_bgchicken/img_pc.png"></a></div>
  						  <div class="main_event_bgchicken_img_mo"><a href="https://www.goobne.co.kr/event/event_view_bg.jsp"><img src="/2021renew_img/mainbanner/220510_event_bgchicken/img_mo.png"></a></div>
					  </div>
                  </div>
				  <!-- 220520 롤링배너: 공룡 콜라보 내림
				  <div class="list_slider">
					  <div class="main_dino_bg">
						  <div class="main_dino_img_pc"><a href="https://www.goobne.co.kr/event/event_view.jsp?dt=62326&page=1"><img src="/2021renew_img/mainbanner/220506_dino/220504_mainbanner_collabo-dino_img_pc_2.png"></a></div>
  						  <div class="main_dino_img_mo"><a href="https://www.goobne.co.kr/event/event_view.jsp?dt=62326&page=1"><img src="/2021renew_img/mainbanner/220506_dino/220504_mainbanner_collabo-dino_img_mo_2.png"></a></div>
					  </div>
                  </div> -->
				  <div class="list_slider">
					  <div class="mainbanner_bss_background">
						   <img src="2021renew_img/mainbanner/220509_ovbss/img_pc_2.png" class="mainbanner_bss_img_pc">
  						   <img src="2021renew_img/mainbanner/220509_ovbss/img_mo.png" id="mainbanner_bss_img_mo" style="image-rendering:auto;">
						   <div class="mainbanner_bss_btn_pc">
							   <a href="https://www.goobne.co.kr/menu/new_ovenbasasak.jsp"><img src="2021renew_img/mainbanner/mainbanner_bss_btn_pc.png"></a>
						   </div>
   						   <div class="mainbanner_bss_btn_mo">
							   <a href="https://www.goobne.co.kr/menu/new_ovenbasasak.jsp"><img src="2021renew_img/mainbanner/mainbanner_bss_btn_pc.png"></a>
						   </div>
					  </div>
                  </div>
				  <div class="list_slider">
					  <div class="mainbanner_dhuman_bg">
						  <img src="2021renew_img/mainbanner/220419_dhuman/title_pc_4.png" class="slider_img_background slider_img_background_img mainbanner_dhuman_title_pc" style="image-rendering:auto;">
						  <img src="2021renew_img/mainbanner/220419_dhuman/title_mo_2.png" class="slider_img_background slider_img_background_img_m mainbanner_dhuman_title_mo">
						  <div class="mainbanner_dhuman_btn" onClick="window.open('https://order.goobne.co.kr:8481/login/login.aspx');"><img src="2021renew_img/mainbanner/220419_dhuman/btn_pc.png"></div>
					  </div>
                  </div>
				<!-- 220427 사내맞선세트 내림
				  <div class="list_slider">                      
                       <a href="https://simte.xyz/%EC%82%AC%EB%82%B4%EC%97%B0%EC%95%A0%EC%9C%A0%ED%98%95%ED%85%8C%EC%8A%A4%ED%8A%B8" target="_blank"><img src="2021renew_img/mainbanner/bpset_mainbanner_btn.png" class="slider_img_background_bpset_btn"></a>
                  <div class="slider_img_background_bpset_menu">
                       <img src="2021renew_img/mainbanner/bpset_mainbanner_menu_1.png" class="slider_img_background_bpset_menu_img">
                       <div class="btn_text" onClick="window.open('https://simte.xyz/%EC%82%AC%EB%82%B4%EC%97%B0%EC%95%A0%EC%9C%A0%ED%98%95%ED%85%8C%EC%8A%A4%ED%8A%B8');"><img src="2021renew_img/mainbanner/bpset_mainbanner_menu_2.png" class="slider_img_background_bpset_menu_1"></div>
                  </div> 
                  </div> -->
                 <div class="list_slider">
                       <img src="2021renew_img/mainbanner/main_banner_img_07_1.png" class="slider_img_background slider_img_background_02 banner-bbqpizza">
                 </div>
				 <!--- 220421 구울레옹 세트 동영상 내림
				 <div class="list_slider">
                     <div class='container container_video' style="margin-top: 4%;">
                      <video id="vid" width="100%" height="auto" muted controls>
                        <source src="2021renew_img/mainbanner/gouleon-set.mp4" type="video/mp4">
                    </video>
                    </div>
                 </div> --->
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
            <h2 class="title_h2">이달의 추천 메뉴</h2>
                <div class="container_width" >
                <div class="slider single-item02">
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=10&cateid=14&productid=31885&classbtn="><img src="2021renew_img/mainbanner/oven_chicken_2.png"></a></p>
                          <ul>
                              <li>오븐 바사삭</li>
                              <li>오븐 바사삭</li>
                              <li><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=10&cateid=14&productid=31885&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=10&cateid=100&productid=31888&classbtn="><img src="2021renew_img/mainbanner/cb_chicken_2.png"></a></p>
                          <ul>
                              <li>치즈 바사삭</li>
                              <li>치즈 바사삭</li>
                              <li><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=10&cateid=100&productid=31888&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
				  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=10&cateid=01&productid=31891&classbtn="><img src="2021renew_img/mainbanner/sauce_curry.png"></a></p>
                          <ul>
                              <li>굽네 찍먹 커리</li>
                              <li style="opacity: 1;">치킨 마크니 / 티카 마살라</li>
                              <li><a href="https://www.goobne.co.kr/menu/menu_view.jsp?classid=40&cateid=01&productid=31891&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
				  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=10&cateid=27&productid=31759&classbtn="> <img src="2021renew_img/mainbanner/bg_chicken.png" ></a></p>
                          <ul>
                              <li>불금치킨</li>
                              <li>불금치킨</li>
                              <li><a href="/menu/menu_view.jsp?classid=10&cateid=27&productid=31759&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=15&cateid=09&productid=31777&classbtn="><img src="2021renew_img/mainbanner/pizza_bbqchicago_2.png" style="image-rendering: auto;"></a></p>
                          <ul>
                              <li>바비큐 시카고 딥디쉬 피자</li>
                              <li>바비큐 시카고 딥디쉬 피자</li>
                              <li><a href="/menu/menu_view.jsp?classid=15&cateid=09&productid=31777&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                    </div>
                      <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31595&classbtn="><img src="2021renew_img/mainbanner/emt_dessert.png" class="d_img" style="image-rendering: auto;"></a></p>
                          <ul>
                              <li>에그미니 타르트</li>
                              <li>에그미니 타르트</li>
                              <li><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31595&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
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
                                         <li style="width:100%;background:url('/2021renew_img/footer_list_img/220517_reputation/bg_pc.jpg');background-size: cover;" class="sns_back_2">
											 <div style="position: relative;">
												 <img src="/2021renew_img/footer_list_img/220517_reputation/line_pc.png" class="cover_img pc_sns sns_line_pc">
											 	 <div style="position: absolute;" class="sns_image_pc reputation_title_pc">
													 <img src="/2021renew_img/footer_list_img/220517_reputation/title_pc.png" class="cover_img pc_sns">
												 </div>
											 </div>
                                             <img src="/2021renew_img/footer_list_img/220517_reputation/title_mo_4.png" class="cover_img mobile_sns sns_img_mo reputation_title_mo">
                                        </li> 
                                     </ul>
                                  </div>
								  <div class="list_slider cover_slider2">
                                      <ul class="list_slider_ul_sns">
                                         <li style="width:100%;background:url('2021renew_img/footer_list_img/220419/sns_pre-award_background_pc.jpg');background-size: cover;">
                                             <div style="position: relative;">
												 <img src="2021renew_img/footer_list_img/220419/sns_line_pc.png" class="cover_img pc_sns sns_line_pc">
											 	 <div style="position: absolute;" class="sns_image_pc">
													 <img src="2021renew_img/footer_list_img/220419/sns_pre-award_pc.png" class="cover_img pc_sns">
												 </div>
											 </div>
                                             <img src="2021renew_img/footer_list_img/220419/sns_pre-award_mo_2.png" class="cover_img mobile_sns sns_img_mo">
                                        </li> 
                                     </ul>
                                  </div>
								  	 <div class="list_slider cover_slider3">
                                      <ul class="list_slider_ul_sns">
                                         <li style="width:100%;background:url('2021renew_img/footer_list_img/220419/sns_good-ad_background_pc.jpg');background-size: cover;" class="sns_back_2">
											 <div style="position: relative;">
												 <img src="2021renew_img/footer_list_img/220419/sns_line_pc.png" class="cover_img pc_sns sns_line_pc">
											 	 <div style="position: absolute;" class="sns_image_pc">
													 <img src="2021renew_img/footer_list_img/220419/sns_good-ad_pc.png" class="cover_img pc_sns">
												 </div>
											 </div>
                                             <img src="2021renew_img/footer_list_img/220419/sns_good-ad_mo_2.png" class="cover_img mobile_sns sns_img_mo">
                                        </li> 
                                     </ul>
                                  </div>
								   <div class="list_slider cover_slider4">
                                      <ul class="list_slider_ul_sns">
                                         <li style="width:100%;background:url('2021renew_img/footer_list_img/220425_sns/bg_pc_2.jpg');background-size: cover;">
											 <div>
												 <a href="https://www.instagram.com/anotherside_coffee/"><img src="2021renew_img/footer_list_img/220425_sns/img_pc.png" class="cover_img pc_sns sns_as_img_pc"></a>
											     <a href="https://www.instagram.com/anotherside_coffee/"><img src="2021renew_img/footer_list_img/220425_sns/img_pc.png" class="cover_img mobile_sns sns_as_img_mo"></a>
											 </div>
                                        </li> 
                                     </ul>
                                  </div>
                              </div>
                            </div>
                        </li>
                        <li class="top_footer_list_li">
                            <img src="/2021renew_img/icon_04.svg" style="height:100px;width:100px;">
                            <div class="bottom_right">
                                <h4>고객센터</h4>
                                <span class="call_num">1661-9494</span>
                                <span class="sub_font">AM 12:00 ~ PM 11:00</span>
                                    <!--<a href="/customer/cscenter_regi.jsp" class="footer_list_link_a">바로가기 ></a>-->
                            </div>
                        </li>
                        <li class="top_footer_list_li">
                            <div class="youtube_div">
                            <h4><img src="/2021renew_img/youtube.png" style="width:30px;margin-right:5px;">굽네 TV </h4>
                            <span class="go_link"><a href="https://www.youtube.com/channel/UCwx2AFi2Zg8_SYzjaJ7Hfmg" target="_blank">바로가기 ></a></span>
                            </div>
                            <ul class="youtube_list">
                                <li style="background:url('/2021renew_img/youtube/220503_gntv_thum_columbasak.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=c99aYibEys4')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/220421_gn-tv_02.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=-MydkYkc0cw')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/220421_gn-tv_03.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=KGpThF04pNQ&t=30s')"><img src="/2021renew_img/youtube.png"></li>
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

>