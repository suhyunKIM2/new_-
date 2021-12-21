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
<meta name="keyword" content="굽네 치킨, 굽네 피자, 굽네 디저트_불금치킨" />
<title>메뉴소개</title>
<!-- //Header doc -->   

<!--- css여기---->
<style>
	.bg_color {background-color: #fafafa;}
	.img_size {margin: 0 auto; padding-bottom: 20%; max-width: 710px; width: 80%;}
	@media all and (max-width:500px) {
		.img_size {width: 92%;}
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
			<h2 class="cont_tit t_center">불금치킨</h2>
            <video  id="vid" width="100%" height="auto"  autoplay muted controls loop>
                <source src="/2021renew_img/mainbanner/211217_bg.mp4" type="video/mp4">
            </video>
			<div class="wrap_standard new_menu_wrap" style="margin-top: -10px;">
				<!--- S: 본문내용--->
				<div class="bg_color">
					<img src="/resources/images/contents/menu/bg/211215_bg_01.jpg">
					<img src="/resources/images/contents/menu/bg/211215_bg_02.jpg">
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