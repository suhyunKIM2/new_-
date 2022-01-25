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
	.video-div {
		position: relative;
	}
	.video {
		float: left;
		width: 83.9%;
		position: absolute;
		top: 12.6%;
		left: 7.8%;
	}
	.blackbox {
		float: left;
		width: 83.9%;
		height: 72%;
		position: absolute;
	    top: 10%;
    	left: 7.8%;
		background-color: #000000;
	}
    .footer_app{margin-top:-4%;position: relative;padding:0 0 5%;}
    .footer_app img{width:100%;}
    .footer_app h3{width:45%;margin:2% auto 0;}
    .footer_app .app_list{width:100%;text-align: center;margin-top:7%;}
    .footer_app .app_list li{display:inline-block;width:auto;margin: 0 1%;}
    .border_box_cont{border:1px solid #eee;}
    @media all and (max-width:742px) {
    #wrap{min-width: 280px;}
    .footer_app .app_list li:nth-child(1),.footer_app .app_list li:nth-child(2){margin-bottom:4%;}
    .footer_app .app_list li{width:23%;margin:0;}
    }
	@media all and (max-width:500px) {
		.img_size {width: 92%;}
        .footer_app .app_list li{width:33%;}
        .footer_app h3{width:65%;}
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
			<h2 class="cont_tit t_center">구울레옹 세트</h2>
            <div class="border_box_cont">
			<div class="wrap_standard new_menu_wrap" style="margin-top: -10px;">
				<!--- S: 본문내용--->
				<div class="bg_color">
					<img src="/resources/images/contents/menu/g-set/220114_g-set_01.jpg">
					<img src="/resources/images/contents/menu/g-set/220114_g-set_02.jpg">
					<img src="/resources/images/contents/menu/g-set/220114_g-set_03_3_25.jpg">
					<div class="video-div">
						<div class="blackbox"></div>
						<video  id="vid" class="video" width="100%" height="auto"  autoplay muted controls loop>
                		<source src="/2021renew_img/mainbanner/211217_bg.mp4" type="video/mp4">
     		      		</video>
					<img src="/resources/images/contents/menu/g-set/220114_g-set_04.jpg">
					</div>
				</div>
                
				<!--- S: footer 배달앱---->
                <div class="footer_app">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 980 83"><g id="레이어_2" data-name="레이어 2"><g id="레이어_1-2" data-name="레이어 1"><image width="980" height="83" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA9QAAABTCAYAAAB+iU95AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmVkYTJiM2ZhYywgMjAyMS8xMS8xNy0xNzoyMzoxOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpjNmVkNmY1NC0wMWMwLTEwNDktOThjZC0xYmJkMzFkODBkNWYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RDkyMkFDOTM2RTk2MTFFQ0EyMTQ5QTg4QjUzMTVDNDAiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RDkyMkFDOTI2RTk2MTFFQ0EyMTQ5QTg4QjUzMTVDNDAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIzLjEgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6YzZlZDZmNTQtMDFjMC0xMDQ5LTk4Y2QtMWJiZDMxZDgwZDVmIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmM2ZWQ2ZjU0LTAxYzAtMTA0OS05OGNkLTFiYmQzMWQ4MGQ1ZiIv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"/></g></g></svg>
                  
                    <h3><img src="/resources/images/contents/menu/footer_app/f_02.png"></h3>
                    <ul class="app_list">
                        <li>
                            <a href="https://order.goobne.co.kr:8481/order/delivery.aspx" target="_blank">
                                <img src="/resources/images/contents/menu/footer_app/f_03.png">
                            </a>
                        </li>
                        <li>
                            <a href="https://baeminkr.onelink.me/XgL8/1a9b704f" target="_blank">
                                <img src="/resources/images/contents/menu/footer_app/f_04.png">
                            </a>
                        </li>
                        <li>
                            <a href="https://hoy.kr/BrEMj" target="_blank">
                                <img src="/resources/images/contents/menu/footer_app/f_05.png">
                            </a>
                        </li>
                        <li>
                            <a href="https://share.coupangeats.com/0BoyWPP5Jkb" target="_blank">
                                <img src="/resources/images/contents/menu/footer_app/f_06.png">
                            </a>
                        </li>
                    </ul>
                </div>
                <!--- E: footer 배달앱---->
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