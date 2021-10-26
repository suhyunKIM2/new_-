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
<meta name="keyword" content="굽네 바게트볼, 굽네치킨 신메뉴, 굽네치킨 바게트볼, 굽네치킨 사이드 메뉴, 굽네 바게트볼 갈릭크림, 굽네 바게트볼 갈릭크림 출시, 굽네 디저트" />
<title>메뉴소개</title>
<!-- //Header doc -->   

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
			<h2 class="cont_tit t_center">신메뉴</h2>

			<div class="wrap_standard new_menu_wrap">
				<a href="https://gift.kakao.com/brand/9663?input_channel_id=2636" title="카카오톡 선물하기 바로가기"><p class="new_menu_web"><img src="/resources/images/contents/menu/new/210614_eggminitart_banner_PC.jpg" alt="굽네 에그미니 타르트"/></p></a>
				<a href="javascript:loginnet('');" title="지금 바로 주문하기"><p class="new_menu_web"><img src="/resources/images/contents/menu/new/210614_eggminitart_page_PC.jpg" alt="굽네 에그미니 타르트"/></p></a>
				<a href="https://gift.kakao.com/brand/9663?input_channel_id=2636" title="카카오톡 선물하기 바로가기"><p class="new_menu_mobile"><img src="/resources/images/contents/menu/new/210614_eggminitart_banner_MO.jpg" alt="굽네 에그미니 타르트"/></p></a>
 				<a href="javascript:loginnet('');" title="지금 바로 주문하기"><p class="new_menu_mobile"><img src="/resources/images/contents/menu/new/210614_eggminitart_page_MO.jpg" alt="굽네 에그미니 타르트"/></p></a>
			</div>
<!--
			<div class="wrap_standard new_menu_wrap t_center">
				<iframe src="https://www.youtube.com/embed/VI_EKUMcxOk?&amp;autoplay=1&loop=1&amp;playlist=VI_EKUMcxOk" frameborder="0"	style="width:100%; height: 60vh" ></iframe>
			</div>
-->
		</section>
	</div>
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
</body>
</html>