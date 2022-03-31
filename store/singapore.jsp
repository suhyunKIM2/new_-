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
<!-- style -->
<link rel="stylesheet" href="/resources/css/store_new_2.css" media="all" />
<script src="/resources/js/layerpop.js"></script>
<!-- //style -->
</head>
<body>
	<!-- skipNavi -->
	<div id="skipNavi"><a href="#contents">본문 바로가기</a> <a href="#gnb">주메뉴 바로가기</a> <a href="#footer">사이트정보 바로가기</a> </div>
	<!-- //skipNavi --> 
	<!-- wrap -->
	<div id="wrap"> 
	<!-- Header -->
	<jsp:include page="/include/header.jsp" flush="false"/>        
	<!-- //Header -->
	<!-- current page -->
	<div class="page_nav">
		<div class="page_nav_wrap_web" >
			<span><em>매장찾기</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
    <!--------중국 qr코드 레이어팝업 추가--------->
    <div id="mask"></div>
	<div id="layerbox" class="layerpop" style="width:350px; height:auto;overflow:hidden;">
        <article class="layerpop_area">
        <a href="javascript:popupClose();" class="layerpop_close" id="layerbox_close">X</a> <br>
            <div class="content">
                <img src="/resources/images/contents/store/qr.jpg">
            </div>
        </article>
    </div>
    <!--------//중국 qr코드 레이어팝업 추가--------->
	<!-- container -->
	<div id="container_list">
		<section id="contents"  class="store_contents">
			
			<div id="contents">
			<h2 class="cont_tit t_center">해외매장<br> Global Stores</h2>
			<div id="global" class="section">
				<p>
					<span>굽네치킨은 웰빙 트렌드에 부합하는 차별화된 '오븐구이' 치킨으로 새로운 시장을 구축,</span>
					<span><strong>No.1 오븐구이 치킨</strong> 브랜드로서 치킨업계를 선도하고 있습니다.</span>
					<span>국내에서는 10년만에 <strong>1,000개 가맹점을 돌파</strong>해 모두가 아는 브랜드로 성장했으며, </span>
					<span>해외에서는 홍콩을 시작으로 중국, 마카오, 일본, 말레이시아, 베트남, 호주, 싱가포르, 인도네시아 등에 진출해</span>
					<span>글로벌 소비자들의 입맛을 사로잡는 세계적인 브랜드로 도약하고 있습니다.</span>
				</p>
                <p style="margin:0 auto 50px;">
					<span>Goobne Chicken has established a new market with differentiated 'Oven Roasted' chicken that conform to the well-being trends,</span>
					<span>Leading the chicken industry as a<strong> No.1 Oven Roasted Chicken</strong>  brand.</span>
					<span>In Korea, it has <strong>surpassed 1,000 stores</strong> in 10 years and has grown into a brand that everyone knows,</span>
					<span>In global, starting with Hong Kong, we have entered China, Macau, Japan, Malaysia, Vietnam, Australia, Singapore, and Indonesia, etc.,</span>
					<span>Leaping into a global brand that captures the tastes of global consumers.</span>
				</p>
			    <ul class="g_s_info" style="width:100%;text-align:center;margin:0 auto 7%;">
                    <li style="display: block;width:auto;text-align:center;font-size:18px;font-weight:600;">해외사업 문의<br>
Overseas Business Inquiry</li>
                    <li style="display: block;width:auto;text-align:center;font-size:18px;font-weight:500;color: #0e5fb3;">gnglobal@gngrp.com</li>
                </ul>
			
			<div id="tab_wrap"><!-- 내용 -->
				<div class="overseas_tab">
				<ul>
				    <li>
                        <a href="hongkong.jsp" id="hong"><span>홍콩<br>Hong Kong</span><img src="/resources/images/contents/store/ico_hongkong.jpg" alt="hongkong"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/GoobneHK');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobnehk/');">
                            <img src="/resources/images/contents/store/sns_icon_03.png" width="35" style="cursor: pointer;" onClick="window.open('https://www.weibo.com/goobne');" class="last-child_img">
                        </div>
                    </li>
				
                    <li>
                        <a href="makao.jsp" id="makao"><span>마카오<br>Macau</span><img src="/resources/images/contents/store/ico_makao.jpg" alt="makao"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/goobnemacau');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobne.macau/');">
                        </div>
                    </li>

                    <li>
                        <a  href="china.jsp" id="china"><span>중국<br>China</span><img src="/resources/images/contents/store/ico_china.jpg" alt="china"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_04.png" width="30" style="cursor: pointer;" onClick="javascript:goDetail();">
                        </div>
                    </li>

                    <li>
                        <a href="japan.jsp" id="japan"><span>일본<br>Japan</span><img src="/resources/images/contents/store/ico_japan.jpg" alt="japan"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_05.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.goobnejapan.jp');">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/Goobnechickenjapan');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobne_japan/');">
                        </div>
                    </li>
				
				    <li>
                        <a href="malaysia.jsp"><span>말레이시아<br>Malaysia</span><img src="/resources/images/contents/store/ico_malaysia.jpg" alt="malaysia"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/goobnemalaysia');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobnemalaysia/');">
                        </div>
                    </li>
				
				    <li>
                        <a href="vietnam.jsp"><span>베트남<br>Vietnam</span><img src="/resources/images/contents/store/ico_vietnam.jpg" alt="vietnam"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/goobnevn');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobnevn/');">
                        </div>
                    </li>
				
				    <li>
                        <a href="hoju.jsp"><span>호주<br>Australia</span><img src="/resources/images/contents/store/ico_hoju.jpg" alt="hoju"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_05.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.goobnechicken.com.au/');">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/goobneaustralia');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobneaustralia/');">
                        </div>
                    </li>
			
				    <li class="active">
                        <a href="singapore.jsp"><span>싱가포르<br>Singapore</span><img src="/resources/images/contents/store/ico_singapore.jpg" alt="singapore"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/GoobneSingapore');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobnesingapore/');">
                        </div>
                    </li>
				    <li>
                        <a href="indo.jsp" id="indo"><span>인도네시아<br>Indonesia</span><img src="/resources/images/contents/store/ico_indo.jpg" alt="indo"></a>
                        <div class="sns_icon_btn">
                            <img src="/resources/images/contents/store/sns_icon_02.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.facebook.com/Goobne.Indonesia');">
                            <img src="/resources/images/contents/store/sns_icon_01.png" width="30" style="cursor: pointer;" onClick="window.open('https://www.instagram.com/goobne_id/');">
                        </div>
                    </li>	
					
				    <li style="visibility: hidden;">
                        <a href=""></a>
                    </li>
				    <li style="visibility: hidden;">
                        <a herf=""></a>
                    </li>
				    <li style="visibility: hidden;">
                        <a href=""></a>
                    </li>
                </ul>
				</div>
				
			</div>
							
			<!--싱가포리스트 시작-->	
				<div id="japan_wrap">
			<div class="overseas_list mt50">
				<ul>
					<li>
							<dl>
								<dt><img src="/resources/images/contents/store/singa/detail_img1.jpg" alt="그레이트월드점"></dt>
								<dd>
									<strong>그레이트월드점 1호점</strong>
									<strong>T.  (+65) 8879-5898 </strong>
									<span>1 Kim Seng Promenade, Singapore 237994  Great world  #01-115 unit</span>
								</dd>
							</dl>
						
					</li>
                    <li>
							<dl>
								<dt><img src="/resources/images/contents/store/singa/detail_img2.jpg" alt="그레이트월드점"></dt>
								<dd>
									<strong>세랑군점 2호점</strong>
									<strong>T. <span style="color:#343434;font-size:15px;">(배달전용 매장)</span></strong>
									<span>55, Serangoon North Ave 4, S9 Building #01-02/19/20, S(555859)</span>
								</dd>
							</dl>
						
					</li>
					
				</ul>
					
			</div>
			</div><!--싱가포르리스트 감싸기 끝-->			
				
			</div>
		</div>
	
		<!--리스트내용 끝-->
	
		
	
			
			<ul class="pager">
			</ul>
			
		</section>
	</div>
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>	
<script src="/resources/js/wscript/store/store.js?v=<%=System.currentTimeMillis() %>"></script>

</body>
</html>