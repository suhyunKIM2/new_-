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
/* iOS only */ 
@supports (-webkit-touch-callout: none) { 
height: -webkit-fill-available; 
}
</style>
    
  <jsp:include page="/include/header_doc.jsp" flush="false"/>  
  <jsp:include page="/include/header.jsp" flush="false"/>
  
<style>
/*background 메인롤링배너*/
.section1.bg,.section1.bg1{background:url(/2021renew_img/mainbanner/main_banner_bg_01.png) no-repeat;opacity: 1;background-color: #ca291a;transition: 0.4s all;    background-size: cover;}
.slick-slide img.slider_img_background{max-height: 100%;width:70%;max-width: 1200px;}
.slick-slide img.slider_img_background_mobile{display:none;    max-height: 100% !important;}
@media only screen(max-width:1024px) and (max-height:812px){
.slick-slide img.slider_img_background_mobile_text{width:60% ;margin-top: 60px;float: left;}
.slick-slide img.slider_img_background_mobile_img{width:100%;    max-width: 545px !important;}
.section1.bg1,.section1.bg{background-position-y: 67% !important;}
}
@media only screen and (max-height:600px){
.slick-slide img.slider_img_background_mobile_text{width:60% ;margin-top: 60px;float: left;}
.slick-slide img.slider_img_background_mobile_img{width:100%;    max-width: 545px !important;}
.section1.bg1,.section1.bg{background-position-y: 67% !important;}
}
@media only screen and (max-height:512px){
.slick-slide img.slider_img_background_mobile_text {width: 24% !important;float: none;}
.slick-slide img.slider_img_background_mobile_img{width:100%;    max-width: 463px !important;}
.section1.bg1,.section1.bg{background-position-y: 67% !important;}
}



@media only screen and (max-width:1024px){
.section1.bg,.section1.bg1{background:url(/2021renew_img/mainbanner/m_main_banner_bg_01.png) no-repeat bottom;opacity: 1;background-color: #ca291a;transition: 0.4s all;    background-size: cover;}
.slick-slide img.slider_img_background_pc{display:none;}
.slick-slide img.slider_img_background_mobile{display:block;}
.slick-slide img.slider_img_background_mobile_text{max-width: 350px;}
.slick-slide img.slider_img_background_mobile_img{max-width: 600px;}
}
/* 태블릿, 아이패드 */
@media only screen and (min-device-width : 1024px) and (max-device-width : 1366px) {
.slick-slide img.slider_img_background_mobile_img {
    max-width: 750px;
}
}
@media only screen and (max-width:800px){
.slick-slide img.slider_img_background_mobile_text{width:35% ;}
.slick-slide img.slider_img_background_mobile_img{width:80%;}
}
@media only screen and (max-width:717px){
.slick-slide img.slider_img_background_mobile_text{width:60% ;margin-top: 60px;}
.slick-slide img.slider_img_background_mobile_img{width:100%;}
}
</style>

</head>
<body id="page-top" class="index">
    

 <div id="main" class="scroll-container">
		<section class="section1 bg">
          <div class="slider_div">
            <div class="slider single-item">
                  <div class="list_slider">
                       <img src="2021renew_img/mainbanner/main_banner_img_04.png" class="slider_img_background slider_img_background_pc">
                       <img src="2021renew_img/mainbanner/main_banner_img_06.png" class="slider_img_background slider_img_background_mobile slider_img_background_mobile_text">
                       <img src="2021renew_img/mainbanner/main_banner_img_05.png" class="slider_img_background slider_img_background_mobile slider_img_background_mobile_img">
                       
                  </div>
                  <div class="list_slider">
                      <p class="title">굽네 치PD </p>
                      <img src="2021renew_img/mainbanner/cpd_img_1.png" >
                      <p class="subtitle">오븐 마스터 굽네의 출구 없는 삼대장</p>
                 </div>
                 <div class="list_slider">
                     <!--<div class="player_div">
                      <iframe class="yt-player" src="2021renew_img/mainbanner/cpd.mp4" ></iframe>
                      </div> autoplay loop muted controls-->
                      <div class='container container_video' style="margin-top: 4%;">
                      <video  id="vid" width="100%" height="auto"  muted controls>
                        <source src="2021renew_img/mainbanner/cpd.mp4" type="video/mp4">
                    </video>
                    </div>
                 </div>
             </div>
             <span class="pagingInfo"></span>
            </div>  
          <!---S: 눈효과---->
          <jsp:include page="/JQuery-Snowfall-master/examples/indexpure_star.html" flush="true"/>
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
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=10&cateid=27&productid=31759&classbtn="> <img src="2021renew_img/mainbanner/bg_chicken.png" ></a></p>
                          <ul>
                              <li>굽네 불금치킨</li>
                              <li>굽네 불금치킨</li>
                              <li><a href="/menu/menu_view.jsp?classid=10&cateid=27&productid=31759&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=15&cateid=04&productid=31247&classbtn="><img src="2021renew_img/mainbanner/cd_pizza.png" ></a></p>
                          <ul>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li>굽네 시카고 딥디쉬 피자</li>
                              <li><a href="/menu/menu_view.jsp?classid=15&cateid=04&productid=31247&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
                          </ul>
                      </div>
                      </div>
                      <div class="list_slider">
                      <div class="list_section_02">
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=40&cateid=01&productid=31595&classbtn="><img src="2021renew_img/mainbanner/emt_dessert.png"  class="d_img"></a></p>
                          <ul>
                              <li>굽네 에그미니타르트</li>
                              <li>굽네 에그미니타르트</li>
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
                          <p class="list_img"><a href="/menu/menu_view.jsp?classid=15&cateid=07&productid=31497&classbtn=" ><img src="2021renew_img/mainbanner/scd_pizza.png" ></a></p>
                          <ul>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li>굽네 슈림프 시카고 딥디쉬 피자</li>
                              <li><a href="/menu/menu_view.jsp?classid=15&cateid=07&productid=31497&classbtn=" class="more_btn">상세보기</a><a href="javascript:loginnet('');" class="order_btn">주문하기</a></li>
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
                                  <div class="list_slider">
                                      <ul class="list_slider_ul_sns">
                                          <li>
                                              <img src="/2021renew_img/footer_list_img/sns_img01.jpg" class="pc_sns">
                                              <img src="/2021renew_img/footer_list_img/sns_img01_m.jpg" class="mobile_sns">
                                          </li>
                                          <li>
                                              <div class="top_sns">
                                                  <a href="https://www.instagram.com/goobne___official/" target="_blank">
                                                      <span class="top_sns_left"><img src="/2021renew_img/icon_05_1.svg">goobne___official</span>
                                                      <span class="top_sns_right"><img src="/resources/images/contents/advertise/icon_social_insta.jpg"></span>
                                                  </a>
                                              </div>
                                              <div class="container_sns">
                                                 [구울레옹 전투 준비 태세 Ep.1]
⠀
                                                    하나, 둘, 하나, 둘 ...
                                                    ⠀
                                                    한참을 양 손에 닭다리를 하나씩 들고 체력 단련을 하다,
                                                    문득 지나간 날들이 떠올랐다.
                                                    ⠀
                                                    나 구울레옹이 승리를 거머쥐었던 여러 날들.
                                                    항상 뜨겁게 살고, 싸워왔던 여러 날들
                                                    ⠀
                                                    굽민들은 나를 향해 여러 칭송을 보냈고,
                                                    나는 이에 보답해야한다.
                                                    그 보답 역시 전투로!
                                                    ⠀
                                                    12월 15일,튀길레옹과의 전투!
                                                    나는 우리 굽민들을 위해 또 한번의 승리 할 것이다!
                                                    ⠀
                                                    기다려라 튀길레옹!
                                                    나의 병사들과 기름 튀기는 너의 영토를
                                                    확실하게 구워주지.
                                                    ⠀
                                                    곧 다가올 전투를 위하여
                                                    나는 오늘도 체력 단련과 보충을 위해
                                                    구운치킨을 저녁으로.. 음, 뭐 먹지..
                                                    ⠀
                                                    다음화에 계속 ...
                                                    ⠀
                                                    #굽네_새모델_맞추면_고추바사삭
                                                    #구울레옹_1편_감상댓글_남겨도_고추바사삭
                                                    #따우스레스자우르스_크리스마스_케이크는_덤
                                              </div>
                                              <div class="bottom_sns">
                                                  <span><div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#999" height="20" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div></span>	
                                                <div class="sns_date">
                                                    2021년 12월 10일
                                                </div>
                                              </div>
                                          </li>
                                      </ul>
                                   </div>
                                  <div class="list_slider">
                                      <ul class="list_slider_ul_sns">
                                          <li><img src="/2021renew_img/footer_list_img/sns_img02.jpg"></li>
                                          <li>
                                              <div class="top_sns">
                                                  <a href="https://www.instagram.com/goobne___official/" target="_blank">
                                                      <span class="top_sns_left"><img src="/2021renew_img/icon_05_1.svg">goobne</span>
                                                      <span class="top_sns_right"><img src="/resources/images/contents/advertise/icon_social_insta.jpg"></span>
                                                  </a>
                                              </div>
                                              <div class="container_sns">
                                                 THE 굽스터, 오픈 하자마자
                                                    100만 팔로워를 달성했다고? 😙
                                                    ⠀
                                                    우리 굽스터들의
                                                    핫하고 힙한 소식만 전하는 GOOBNEWS
                                                    ⠀
                                                    다음 소식 기대되는 사람 냅다 손들어 🙋
                                                    혹시, 에디터G에게 더 핫한 소식 전해준다면
                                                    기프티콘이 있을지도..?
                                                    ⠀
                                                    #100만_팔로워_가보자고
                                                    #굽스터_평생_함께해
                                                    #솔로부대_기죽지마라
                                                    #깜짝_놀랄_소식은_뭘까?
                                              </div>
                                              <div class="bottom_sns">
                                                  <span><div class="QBdPU rrUvL"><span class=""><svg aria-label="좋아요" class="_8-yf5 " color="#262626" fill="#999" height="20" role="img" viewBox="0 0 48 48" width="24"><path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></span></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="댓글 달기" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path></svg></div>
                                                <div class="QBdPU rrUvL"><svg aria-label="게시물 공유" class="_8-yf5 " color="#262626" fill="#999" height="24" role="img" viewBox="0 0 48 48" width="20"><path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path></svg></div></span>	
                                                <div class="sns_date">
                                                    2021년 12월 10일
                                                </div>
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
                                <span class="call_num">1661-9458</span>
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
                                <li style="background:url('/2021renew_img/youtube/youimg01.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=l1ohWUHTI9c')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/youimg02.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=C4j05la6lsM')"><img src="/2021renew_img/youtube.png"></li>
                                <li style="background:url('/2021renew_img/youtube/youimg03.jpg')center;background-size:100%;" onClick="window.open('https://www.youtube.com/watch?v=Iwm0NTxcdg0')"><img src="/2021renew_img/youtube.png"></li>
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
  <script src="/JQuery-Snowfall-master/dist/re_common.js"></script>


  
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

