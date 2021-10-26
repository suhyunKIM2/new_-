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
			<h2 class="cont_tit t_center">치피디</h2>

			<div class="wrap_standard new_menu_wrap">
				<!--- S: 본문내용--->
				<div class="bg_color">
					<img src="/resources/images/contents/menu/cpd/211018/img_01.jpg">
					<img src="/resources/images/contents/menu/cpd/211014/img_02.jpg">
					<div class="img_size">
						<img src="/resources/images/contents/menu/cpd/211014/img_03_4.jpg">
						<a href="http://kko.to/TdMHeRZfH"><img src="/resources/images/contents/menu/cpd/211014/img_03_2.jpg" style="margin-top: 15%;"></a>
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