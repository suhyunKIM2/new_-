<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
<%
String stxt = request.getParameter("stxt");
if (stxt == null || "".equals(stxt))
{
	stxt = "";
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>

	
<!-- Header doc -->
<jsp:include page="/include/header_doc.jsp" flush="false"/> 
<!-- //Header doc -->   

<style>
.mobile{display:none;}
#container_global{background:none;}	
.overseas_guide>a:first-child{width:232px;height:160px;margin:0 10px;background: url(/resources/images/contents/store/overseas_guide_bg_1.jpg) no-repeat left bottom;font-weight: bold;font-size:16px;line-height:1;color:222;letter-spacing:-1px;display:inline-block;vertical-align: top;}
	.overseas_guide>a{width:160px;height:160px;margin:0 10px;background: url(/resources/images/contents/store/overseas_guide_bg_1.jpg) no-repeat left top;font-weight: bold;font-size:16px;line-height:1;color:#222;letter-spacing:-1px;display:inline-block;vertical-align: top;}
.mobile_arrow{display:none !important;}    
@media only screen and (max-width: 568px){
#container_global {max-height: 100%;}
.mobile{display:block;}
.pc{display:none;}
}
@media only screen and (max-width: 480px){
.overseas_guide>a:hover .border-raidus_css{border-color:#df1a23;}
.overseas_guide {
    display: block;}
.overseas_guide>a{background:none;width:37%;}    
.overseas_guide>a:first-child{background:none;width:37%;}
#container_global #contents #global p{    margin: 7% auto !important;}
.border-raidus_css{    border: 10px solid #eee;
    padding-top: 30px;
    border-radius: 50%;
    line-height: 1.4 !important;
    padding-bottom: 8px;font-size: 100% !important;}
.border-raidus_css span{font-size:80% !important;} 
.mobile_arrow{display:inline-block !important;width:auto !important;margin:0 !important;line-height: 160px !important;    color: #9f9f9f !important;
    font-size: 18px !important;}
.overseas_guide>a:first-child .border-raidus_css{border-color:#df1a23;}     
}
@media only screen and (max-width: 380px){
.border-raidus_css {
    border:7px solid #eee;    padding-top: 30px;}
    .overseas_guide>a, .overseas_guide>a:first-child {
    width: 40%;
}
}
@media only screen and (max-width: 340px){
.border-raidus_css {
    border: 8px solid #eee;    padding-bottom: 4px;padding-top: 20px;}
 .overseas_guide>a,.overseas_guide>a:first-child{background:none;width:39%;}  
 #container_global #contents #global p{max-width:98%;}
 #wrap{min-width:280px;}
}
@media only screen and (max-width: 300px){
.overseas_guide>a, .overseas_guide>a:first-child {
    width: 44%;
    margin: 0;
}
}
</style>
</head>
<body>
	<!-- skipNavi -->
	<div id="skipNavi"><a href="#contents">?????? ????????????</a> <a href="#gnb">????????? ????????????</a> <a href="#footer">??????????????? ????????????</a> </div>
	<!-- //skipNavi --> 
	<!-- wrap -->
	<div id="wrap" > 
	<!-- Header -->
	<jsp:include page="/include/header.jsp" flush="false"/>        
	<!-- //Header -->
	<!-- current page -->
	<div class="page_nav">
		<div class="page_nav_wrap_web" >
			<span><em>????????????</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container_global">
		<section id="contents"  class="store_contents">
			
			<div id="contents">
			<h2 class="cont_tit t_center">???????????? / Global</h2>
			<div id="global" class="section">
				<p>
					<span>?????? ?????? ??????<strong> 9??????</strong> ???????????? <strong>??? 37??? </strong>????????? ?????? ?????? ????????????.</span>
                    <span>We are operating<strong> 37 overseas stores</strong> in <strong>9 countries</strong></span>
				</p>
                <div class="overseas_guide">
						<a href="javascript:void(0);" class="active" style="cursor:default;">
							
							<p style="margin-right: 70px;" class="border-raidus_css">?????? ??????<span style="font-weight:500;font-size:16px;line-height: 1.2;">Countries</span><strong>9</strong></p>
						</a>
                        <a class="mobile_arrow">???</a>
						<a href="/store/hongkong.jsp">
							<p class="border-raidus_css">????????????<span style="font-weight:500;font-size:16px;line-height: 1.2;">Overseas Stores</span><strong>37</strong></p>
						</a>
					</div>
			</div>
			<div id="section2"><!-- ?????? -->
                
				<div class="overseas_wrap active">

					
					<div class="overseas_wrap_img_box pc">
                    <img src="/resources/images/contents/store/overseas_bg_1.png" width="100%">
                    </div>
<!--
					<p class="img_box_icon1"><a href="china.jsp"><img src="/resources/images/contents/store/btn_china_1.png" alt="china"></a></p>
					<p class="img_box_icon2"><a href="makao.jsp"><img src="/resources/images/contents/store/btn_makao_1.png" alt="makao"></a></p>
					<p class="img_box_icon3"><a href="hongkong.jsp"><img src="/resources/images/contents/store/btn_hongkong_1.png" alt="hongkong"></a></p>
					<p class="img_box_icon4"><a href="japan.jsp"><img src="/resources/images/contents/store/btn_japan_1.png" alt="japan"></a></p>
					<p class="img_box_icon5"><a href="vietnam.jsp"><img src="/resources/images/contents/store/btn_vietnam_1.png" alt="vietnam"></a></p>
					<p class="img_box_icon6"><a href="malaysia.jsp"><img src="/resources/images/contents/store/btn_malaysia_1.png" alt="malaysia"></a></p>
					<p class="img_box_icon9"><a href="indo.jsp"><img src="/resources/images/contents/store/btn_indo_1.png" alt="indonesia"></a></p>
					<p class="img_box_icon7"><a href="singapore.jsp"><img src="/resources/images/contents/store/btn_singapore_1.png" alt="singapore"></a></p>
					<p class="img_box_icon8"><a href="hoju.jsp"><img src="/resources/images/contents/store/btn_hoju_1.png" alt="hoju"></a></p>
-->                 <div class="overseas_wrap_img_box mobile">
                    <img src="/resources/images/contents/store/overseas_bg_m.png" width="100%">    
					</div>
				</div>
			</div>
		</div>
	</div>
	
		
	
			
			<ul class="pager">
			</ul>
			
		</section>
	
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>	
<script src="/resources/js/wscript/store/store.js?v=<%=System.currentTimeMillis() %>"></script>


</body>
</html>