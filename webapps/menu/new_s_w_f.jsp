<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
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
<!-- Header doc -->
<jsp:include page="/include/header_doc.jsp" flush="false"/> 
<meta name="keyword" content="굽네 치킨, 굽네 피자, 굽네 디저트_ 치피디" />
<title>메뉴소개</title>
<!-- //Header doc -->   

<!--- css여기---->
<style>
	.youtube_position_div{position:relative;width:100%;}
    .youtube_position_absolute{position:absolute;left:0;top:-1px;width:100%;z-index: 9;}
    .youtube_position_absolute_02{position:relative;height: 433px;
    background: #000;}
    .iframe_youtube{ position: absolute;
    height: 100%;
    width: 68%;
    left: 50%;
    transform: translate(-50%, 5px);
    border-radius: 81px;
    z-index: 9;}
    .btn_box_01{background:#f5f1ff;text-align: center;padding-bottom: 7%;}
    .btn_box_01 img{width:50%;}
    .btn_box_02{background:url(/resources/images/contents/menu/swf/bg.png);background-size: 100%;padding-bottom: 7%;}
    .btn_box_02 ul{width:80%;margin: auto;text-align: center;}
    .btn_box_02 ul li{display: inline-block;width:21%;margin:0 1%;}
    .video_wrap{ position: relative; overflow: hidden; height: 0; padding-bottom:45%; background:#000;}
    .video_wrap iframe{     position: absolute;
    top: 0;
    left: 50%;
    height: 100%;
    z-index: 9;
    width: 68.5%;
    transform: translate(-50%, 0px);
    border-radius: 16%;}
.mobile_a{display: none;}
	@media all and (max-width:500px) {
	.mobile_a{display: block;}
    .pc_a{display: none;}
	}
</style>
</head>
<body>
	<!-- skipNavi -->
	<div id="skipNavi"><a href="#contents">본문 바로가기</a> <a href="#gnb">주메뉴 바로가기</a> <a href="#footer">사이트정보 바로가기</a> </div>
	<!-- //skipNavi --> 
	<!-- wrap -->
	<div id="wrap" > 
	<!-- Header -->
	<jsp:include page="/include/header.jsp" flush="false"/>        
	<!-- //Header -->
	<!-- current page -->
	<div class="page_nav">
		<div class="page_nav_wrap_web" >
			<span><em>메뉴소개</em> > <i class="current_page"></i></span>
		</div>

	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container" >
		<section id="contents" >
			<h2 class="cont_tit t_center">스.우.파 세트</h2>

			<div class="wrap_standard new_menu_wrap">
				<!--- S: 본문내용--->
				<div class="swf_contents">
                    <img src="/resources/images/contents/menu/swf/img_01.png">
                    <div class="youtube_position_div">
                        <div class="youtube_position_absolute youtube_position_absolute_01">
                            <img src="/resources/images/contents/menu/swf/img_02.png">
                        </div>
                        <div class="video_wrap">
                            <iframe class="" id="iframe_test" width="100%" src="https://www.youtube.com/embed/noa3tux1dzQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <img src="/resources/images/contents/menu/swf/img_03_2.png">
                    <div class="btn_box_01">
                        <a href="https://www.facebook.com/goobne/photos/a.396876457020764/6278153538892997/" target="_blank" class="pc_a"><img src="/resources/images/contents/menu/swf/img_04.png"></a>
                        <a href="https://m.facebook.com/goobne/photos/a.396876457020764/6278153538892997/" target="_blank" class="mobile_a"><img src="/resources/images/contents/menu/swf/img_04.png"></a>
                    </div>
                    <img src="/resources/images/contents/menu/swf/img_05.png">
                    <div class="btn_box_02">
                        <ul class="btn_ul_box">
                            <li><a href="https://order.goobne.co.kr:8481/login/login.aspx" target="_blank"><img src="/resources/images/contents/menu/swf/btn_01.png"></a></li>
                            <li><a href="https://baeminkr.onelink.me/XgL8/1a9b704f " target="_blank"><img src="/resources/images/contents/menu/swf/btn_02.png"></a></li>
                            <li><a href="https://hoy.kr/BrEMj" target="_blank"><img src="/resources/images/contents/menu/swf/btn_03.png"></a></li>
							<li><a href="https://share.coupangeats.com/0BoyWPP5Jkb" target="_blank"><img src="/resources/images/contents/menu/swf/btn_04.png"></a></li>
                        </ul>
                    </div>
                </div>
                <!--- E: 본문내용--->
			</div>

		</section>
	</div>
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
</body>
</html>