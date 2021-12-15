<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Header doc -->
<jsp:include page="/include/header_doc.jsp" flush="false"/> 
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
			<span><em>브랜드소개</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container">
		<section id="contents" class="brand_contents">
			<h2 class="cont_tit t_center">경영 철학</h2>
			<section id="gachi1_2con" class="sec2">
			<div id="container" class="index_type phil_index">
			<div class="re_contents sec_reType sec_vision">
            	<div class="inner_wrap">
                	<!-- 경영철학 -->
					
                    <div class="area_article">
                        <div class="mod_title mod_title_type4">
                            
												</div>
												<div class="img_box type1">
													<img src="/resources/images/contents/brand/phil_img1.png" alt="굽네 경영철학">
												</div>
                        <ul class="img_vision">
													<li class="on">
														<a href="#" class="btn_view btn_view_1"><span class="blind">역지사지(易地思之): 상대편의 처지나 입장에서 먼저 생각해 보고 이해한다.</span></a>
														<div class="box_slogan">
															<div class="list_define" style="opacity: 1; display: block;">
																<div class="tit" style="left: 0px; opacity: 1;">경영철학</div>
																
																<dl style="left: 0px; opacity: 1;">
																	<!--<dt></dt>-->
																	<dd>역지사지(易地思之) : 상대편의 처지나 입장에서 먼저 생각해 <br>보고 이해한다.</dd>
																</dl>
																<div class="tit" style="left: 0px; opacity: 1; padding-top: 1em;">미션 <span class="pl10 subt">MISSION</span>
																</div>
																<dl style="left: 0px; opacity: 1;">
																	<!--<dt></dt>-->
																	<dd>역지사지(易地思之)의 마음으로 건강하고 믿을 수 있는 먹거리와 <br>
																		한단계 더 높은 서비스를 제공하여 세상을 행복하게 한다.</dd>
																</dl>
																<div class="tit" style="left: 0px; opacity: 1; padding-top: 1em;">비전 <span class="pl10 subt">VISION</span></div>
																
																<dl style="left: 0px; opacity: 1;">
																	<!--<dt></dt>-->
																	<dd>Everyone Knows GN! <br>
																		2025년 Top5 종합 외식기업</dd>
																</dl>
															</div>
														</div>
													</li>
													<li class="">
														<a href="#" class="btn_view btn_view_2"><span class="blind">인재상,핵심가치</span></a>
														<div class="box_slogan">
															<div class="list_define" style="opacity: 0; display: block;">
																<div class="tit" style="left: 0px; opacity: 1;">인재상 <span class="pl10 subt">P.R.O.</span></div>
																<!--<p class="explain" style="left: 0px; opacity: 1;">d</p>-->
																<dl style="left: 0px; opacity: 1;">
																	<dt>Professional person</dt>
																	<dd>담당 분야에 대해 최고의 역량을 가진 사람</dd>
																	<dt>Responsible person</dt>
																	<dd>고객과의 약속을 준수하는 책임감 있는 사람</dd>
																	<dt>Open minded person</dt>
																	<dd>열린 마음으로 타인을 이해하고 존중하며 화합하는 사람</dd>
																</dl>
																
																<div class="tit pt30" style="left: 0px; opacity: 1;">핵심가치 <span class="pl10 subt">CORE VALUES</span></div>
																<!--<p class="explain" style="left: 0px; opacity: 1;">d</p>-->
																<dl style="left: 0px; opacity: 1;">
																	<dt><span class="growth">성장</span> why&amp;how/도전 학습</dt>
																	<dd>더 나은 미래를 위해 도전적 태도를 견지하고,<br>문제의식에 기반한 최적의 솔루션을 실행하여 지속 성장한다.</dd>
																	<dt><span class="trust">신뢰</span> 윤리의식/약속준수</dt>
																	<dd>경청과 소통을 기반으로 상대방의 입장을 이해하고,<br>함께 협력하는 파트너십을 형성한다.</dd>
																	<dt><span class="win">상생</span> 소통/협력</dt>
																	<dd>윤리의식과 약속준수를 체화하여 상호 간의 믿음을 <br>지속적으로 강화한다.</dd>
																</dl>
															</div>
														</div>
													</li>
													
													
												</ul>

                    </div>
                    <!-- // 경영철학 -->
                </div>
            </div>
			</div>
			</section>
		</section>
	</div>
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
<!--
	<script>
		//인기메뉴 슬라이드
		$(document).ready(function(){
			$(".brand3_slide").owlCarousel({				 
				navigation : true, 
			    slideSpeed : 400,
			    //paginationSpeed : 400,
			    singleItem:true
			});
		});
	</script>-->
<script src="/resources/js/wscript/franchise/franchise.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="/resources/js/boxslider.js"></script>
<script>
var code = "1200365002";
var params = document.location.search;
var page = params.getValueByKey("page");
if (page == "") {
	page = "1";
}
var franchise = new CNTLib.Franchise("#contents","write");
</script>
</body>
</html>