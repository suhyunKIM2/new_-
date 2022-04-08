<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.cntt.beans.UserLogBean"%>
<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.JspUtils"%>
<%
	String web_id = "";
	String order_type = "";
	Object objLogedData = request.getSession().getAttribute("logeInfo");
	String logData = (String) objLogedData;	
	
	Cookie[] cookie = request.getCookies();
	if(cookie != null){
		for(int i=0; i<cookie.length; i++){
			if(cookie[i].getName().equals("mb_id")){
				web_id = cookie[i].getValue(); 
				if(web_id != null){
					web_id = java.net.URLDecoder.decode(web_id, "UTF-8");
				}
			}
			if(cookie[i].getName().equals("order_type")){
				order_type = cookie[i].getValue(); 
			}
		}
	}
	
	if(web_id != null && logData == null){
		if(!web_id.equals("")){
			
			UserLogBean log = new UserLogBean();
			Date currentDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			String DateString = sdf.format(currentDate);
			String logDate = DateString.substring(0, 8);
			String logTime = DateString.substring(8, 12);
			//log.setUserLog(request, web_id, logDate, logTime);
			request.getSession().setAttribute("logeInfo", "1");
			request.getSession().setMaxInactiveInterval(1800);
		}else{
			request.getSession().setAttribute("logeInfo", null);
		}
	}
%>
<style>
.footer_re,.footer_back{display:none;}
</style>
<footer id="footer">
	<div class="inner">
		<ul class="foot_menu">
			<li><a href="/etc/rules.jsp">이용약관</a></li>
			<li><a href="/etc/privacy.jsp" class="t_private">개인정보처리방침</a></li>
			<li><a href="/etc/emailRefuse.jsp">이메일무단수집거부</a></li>
			<li><a href="/brand/map.jsp">찾아오시는길</a></li>
			<!--<li><a href="/etc/sitemap.jsp">사이트맵</a></li>-->
			<li class="footer_family_site">
				<select onChange="if (this.value != '') { window.location.href=this.value }">
					<option value="">Family site</option>
					<option value="http://www.goobnemall.com/">굽네몰</option>
				</select>
			</li>
		</ul>
		<div class="sns_wrap">
			<ul class="foot_sns">
				<li class="foot_fb"><a href="https://www.facebook.com/goobne" target="_blank" title="굽네 페이스북 새창열림">facebook</a></li>
				<li class="foot_blog"><a href="http://blog.naver.com/goobne94" target="_blank" title="굽네 블로그 새창열림">blog</a></li>
				<li class="foot_insta"><a href="https://www.instagram.com/explore/tags/%EA%B5%BD%EB%84%A4%EC%B9%98%ED%82%A8/" target="_blank" title="굽네 인스타그램 새창열림">instagram</a></li>	
			</ul>
		</div>
		<div class="foot_info">
			<p>
				<span>주식회사 지앤푸드 대표자 : 정태용</span>
			</p>
			<p>
				<span class="footer_re">주문상담  : 080-388-9494</span>
                <span class="footer_back">주문상담  : 1661-9494</span>
			</p>
			<!--  <p>
				<span>개인정보보호책임자 :홍영호(cameo305@gngrp.com)</span>
			</p>-->
			<p>
				<span>사업자등록번호 :137-81-80324 </span>
				<span>통신판매업 : 제 2014-서울양천-0426호</span>
			</p>
		</div>
		<div class="foot_info">
			<p>서울특별시 강서구 강서로 318 (내발산동 677) 지앤빌딩  <span class="footer_phone">TEL 02-2648-2005</span>  FAX 02-2648-9458<span class="copy">COPYRIGHT. 2009-2016  GOOBNE.CO.ALL RIGHT RESERVED</span> </p>
		</div>
	</div>
	<a href="#" id="toTop" title="컨텐츠 상단으로 이동" class="" >컨텐츠 상단으로 이동</a>
</footer>
<script>

	
	$(document).ready(function(){
		$('.footer_phone').click(function(){
			//푸터 모바일 전화번호 클릭시
			//본사 전화번호
			var device = check_device();
			if(device !=''){
				location.href='tel:02-2648-2005';
		    }
		});
	});
	
	//모바일 디바이스 체크
	var check_device = function(){
		var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
		var device_name = '';
		for (var word in mobileKeyWords){
			if (navigator.userAgent.match(mobileKeyWords[word]) != null){
				device_name = mobileKeyWords[word];
				break;
			}
		}
		return device_name;
	}

	var device = check_device();
    
    
    if (new Date() >= new Date('09/21/2020 09:00:00')            // *신버전 언제부터
            && new Date() < new Date('12/31/2020 23:59:59')) {        // 언제까지 실행하기 
            //alert('test');
            //$('container').addClass('a')
           $(document).ready(function () {
                $('.footer_re').css('display','block');
            }); 
        } else if (new Date() >= new Date('01/01/2021 00:00:00')            // *구버전 언제부터
            && new Date() < new Date('10/05/2095 08:59:59')) {      // 언제까지 실행하기 
            $(document).ready(function () {
                $('.footer_back').css('display','block');
            }); 
        }
</script>
<script>
/*  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-91267323-1', 'auto');
  ga('send', 'pageview');
*/
</script>
<!-- //Footer -->