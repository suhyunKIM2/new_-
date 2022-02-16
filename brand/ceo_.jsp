<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Header doc -->
<jsp:include page="/include/header_doc.jsp" flush="false"/> 
<!-- //Header doc -->   
<style>
#container #contents.brand_contents .ceo_tit_wrap{height:440px;background:#242424;margin-top: 40px;}
#container #contents.brand_contents .ceo_tit_wrap:before{height:440px;background:url(/resources/images/contents/brand/750_360_03_5.jpg) no-repeat center bottom;    background-size: 120%;background-attachment: fixed;opacity: 0.3;content:'';}
#container #contents.brand_contents .ceo_tit_wrap h1 span:before{content:'';}
	#container #contents.brand_contents .ceo_tit_wrap h1 span:after{content:'';}
#container #contents.brand_contents .ceo_tit_wrap h1:after,#container #contents.brand_contents .ceo_tit_wrap h1{background-image:none;}
#container #contents.brand_contents .ceo_tit_wrap h1 span{margin-left:0;transform: translateX(-50%);-webkit-transform: translateX(-50%);-moz-transform: translateX(-50%);-ms-transform: translateX(-50%);-o-transform: translateX(-50%);white-space: pre-line;text-align:center;color: #fff;left:50%}
h2.cont_tit{height:48px;margin:0;margin-top:2.5625em;}
#container #contents.brand_contents .ceo_wrap ul li:first-child{padding-right:0;}
#container #contents.brand_contents .ceo_wrap ul li{width:100%;}
#container #contents.brand_contents .ceo_wrap ul li p strong{width:auto;margin-left:5px;font-size: 18px;font-weight: 400;color:#777;}
.fadeInUp{
    -webkit-animation-name: fadeInUp;
    animation-name: fadeInUp;
    -webkit-animation-duration:0.3s;
    animation-duration:0.3s;
}
.fadeInUp_1 {
    -webkit-animation-name: fadeInUp_1;
    animation-name: fadeInUp_1;
    -webkit-animation-duration:0.3s;
    animation-duration:0.3s;
}
.fadeInUp_2 {
    -webkit-animation-name: fadeInUp_2;
    animation-name: fadeInUp_2;
    -webkit-animation-duration:0.3s;
    animation-duration:0.3s;
}


.animated {
    -webkit-animation-duration:0.5s;
    animation-duration:0.5s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
@-webkit-keyframes fadeInUp {
			from { top:-80px;opacity: 0; }
			to { top:80px;opacity: 1; }
		}
		@keyframes fadeInUp {
			from { top:-80px; opacity: 0;}
			to { top:80px;opacity: 1;  }
		}
@-webkit-keyframes fadeInUp_1 {
			from {margin-top:2.5625em;opacity: 0; }
			to { margin-top:2.5625em;opacity: 1; }
		}
		@keyframes fadeInUp_1 {
			from { margin-top:2.5625em; opacity: 0;}
			to { margin-top:2.5625em;opacity: 1;  }
		} 
@-webkit-keyframes fadeInUp_2 {
			from {margin-top:-10%;opacity: 0; }
			to { margin-top:0;opacity: 1; }
		}
		@keyframes fadeInUp_2 {
			from { margin-top:-10%; opacity: 0;}
			to { margin-top:0;opacity: 1;  }
		} 
@media only screen and (max-width: 1250px){
#wrap {
    min-width: 280px; }
    }
@media only screen and (max-width: 1050px){
#container #contents.brand_contents .ceo_tit_wrap:before{background-size: auto 100%;}
}        
@media only screen and (max-width: 760px){
#container #contents.brand_contents .ceo_tit_wrap{height:400px;margin-top:0;}
#container #contents.brand_contents .ceo_tit_wrap:before{height:400px;background: url(/resources/images/contents/brand/ceo4_4.jpg) no-repeat center bottom;background-size:auto 120%;background-attachment: fixed;}
}  
@media only screen and (max-width: 540px){
#container #contents.brand_contents .ceo_wrap ul li p strong{margin-left:3px;font-size:15px;}
}
@media only screen and (max-width: 320px){#container #contents.brand_contents .ceo_tit_wrap h1{    font-size: 0.9em;}


}
@media only screen and (max-width: 280px){#container #contents.brand_contents .ceo_tit_wrap h1{    font-size:11px;}
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
			<span><em>브랜드소개</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container" >
		<section id="contents" class="brand_contents">
			<h2 class="cont_tit t_center fadeInUp_1 animated" style="animation-delay:0.2s;">CEO 인삿말</h2>
			<div class="ceo_tit_wrap">
				<h1 class="ceo_tit" >
					<span class="fadeInUp animated" style="animation-delay:0.5s;">
						    '역지사지'의 경영철학 아래 
                            가맹점 사장님과 고객의 입장에서 생각하겠습니다.
                            자랑스러운 브랜드, 믿을 수 있는 브랜드가 되기 위해
                            안주하지 않고 도전하는 굽네치킨이 되겠습니다.

					</span>
				</h1>
			</div>
			<div class="brand_standard_wrap ceo_wrap fadeInUp_2 animated" style="animation-delay:0.8s;">
                <ul>
					<li>
						<p>
							오븐구이 치킨 프랜차이즈 ‘굽네치킨’은 2005년 3월, 첫 매장을 오픈하며 차별화된 메뉴 경쟁력으로 업계에 비범한 첫 걸음을 떼었습니다. 굽네치킨은 ‘역지사지’의 경영 철학 아래 고객 입장에서 먼저 생각하고, 건강하고 믿을 수 있는 먹거리를 제공한다는 미션을 위해 15년간 고민을 멈추지 않았습니다. 많은 고객님들과 가맹점 사장님들께 그 노력을 인정받아, 굽네치킨은 지금 명실상부한 오븐구이 No.1 치킨 브랜드가 되었습니다. 
						</p>
						<p>
							굽네치킨은 출범 이후부터 가맹점, 고객, 직원 모두의 행복을 목표로 하는 ‘3生’ 정신을 운영의 바탕으로 두고 있습니다. 가장 먼저, 회사의 성공을 위해서는 반드시 가맹점 사장님의 성공을 우선해야 한다는 믿음으로 본사와 가맹점의 상생을 실천하고 있습니다.  
						</p>
						<p>또, 굽네치킨은 업계 트렌드를 선도하는 히트 메뉴의 출시와 도전적인 메뉴 개발로 고객님들의 꾸준한 신뢰와 사랑을 받고 있습니다. 오븐구이 치킨에서만 구현할 수 있는 맛을 강점으로 ‘굽네 오리지널’, ‘굽네 고추바사삭’, ‘굽네 볼케이노’, ‘굽네 갈비천왕’ 등 차별화된 치킨 메뉴를 지속 선보이고 있음은 물론이고, 2019년 굽네피자 시리즈의 출시로 새로운 저변을 개척하며 고객님들께는 다채로운 즐거움을, 가맹점 사장님들께는 매출 확대의 도약점을 마련했습니다. 더불어 ‘굽네 바게트볼’을 필두로 오븐 조리된 사이드 메뉴를 지속 출시하여 굽네치킨의 탄탄한 메뉴력에 한 몫을 더하고 있습니다. </p>
						<p>그 결과, 굽네치킨은 현재 국내 1,060개 매장을 보유하고 있고 해외에서도 통하는 경쟁력으로 10개국가에 40개 매장을 오픈하며 순조로운 확장을 이어나가고 있습니다. 높은 품질력을 기반으로 국내를 넘어 해외까지 발길을 뻗으며 글로벌 브랜드로서의 성장을 도모하고 있습니다. </p>
						<p>앞으로도 굽네치킨은 안주하지 않고 끝없는 혁신을 거듭하며 정진해 나갈 것을 약속 드립니다. 고객님들과 가맹점 사장님들께 자랑스러운 브랜드, 믿을 수 있는 브랜드로서 보내주시는 사랑에 보답할 수 있는 굽네치킨이 되겠습니다. 굽네치킨의 새로운 내일과 성장을 기대해주십시오.</p>
						<p>감사합니다.</p>
						<!--<p class="t_right">GNFOOD 대표이사 <strong>정태용</strong></p>-->
					</li>
<!--
					<li>

						<p>그 결과, 굽네치킨은 현재 국내 1,025개 매장을 보유하고 있고 해외에서도 통하는 경쟁력으로 8개국가에 21개 매장을 오픈하며 순조로운 확장을 이어나가고 있습니다. 비단 국내에서의 인정뿐만이 아닌 세계에게 각광받는 브랜드로 성장을 거듭하고 있습니다. </p>
						<p>앞으로도 굽네치킨은 안주하지 않고 끝없는 혁신을 거듭하며 정진해 나갈 것을 약속 드립니다. 고객님들과 가맹점 사장님들께 자랑스러운 브랜드, 믿을 수 있는 브랜드로서 보내주시는 사랑에 보답할 수 있는 굽네치킨이 되겠습니다. 굽네치킨의 새로운 내일과 성장을 기대해주십시오.</p>
						<p>감사합니다.</p>
						<p class="t_right">GNFOOD 대표 <strong>정태용</strong></p>
			        </li>
-->
				</ul>
<!--
				<ul>
					<li>
						<p>
							오븐구이 치킨 프랜차이즈 ‘굽네치킨’은 2005년 3월, 첫 매장을 오픈하며 차별화된 메뉴 경쟁력으로 업계에 비범한 첫 보를 떼었습니다. 굽네치킨은 ‘역지사지’의 경영 철학 아래 고객 입장에서 먼저 생각하고, 건강하고 믿을 수 있는 먹거리를 제공한다는 미션을 위해 15년간 고민을 멈추지 않았습니다. 많은 고객님들과 가맹점 사장님들께 그 노력을 인정받아, 굽네치킨은 지금 명실상부한 오븐구이 No.1 치킨 브랜드가 되었습니다.
						</p>
						<p>
							굽네치킨은 출범 이후부터 가맹점, 고객, 직원 모두의 행복을 목표로 하는 ‘3生’ 정신을 운영의 바탕으로 두고 있습니다. 가장 먼저, 회사의 성공을 위해서는 반드시 가맹점 사장님의 성공을 우선해야 한다는 믿음으로 로열티·보증금·인테리어 마진을 받지 않는 정책을 통해 사장님의 초기 부담을 줄이며 본사와 가맹점의 상생을 실천하고 있습니다. 
						</p>
						<p>또, 굽네치킨은 업계 트렌드를 선도하는 히트 메뉴의 출시와 도전적인 메뉴 개발로 고객님들의 꾸준한 신뢰와 사랑을 받고 있습니다. 오븐구이 치킨에서만 구현할 수 있는 맛을 강점으로 ‘굽네 오리지널’, ‘굽네 고추바사삭’, ‘굽네 볼케이노’, ‘굽네 갈비천왕’ 등 차별화된 치킨 메뉴를 지속 선보이고 있음은 물론이고, 2019년 굽네피자 시리즈의 출시로 새로운 저변을 개척하며 고객님들께는 다채로운 즐거움을, 가맹점 사장님들께는 매출 확대의 도약점을 마련했습니다. ‘굽네 바게트볼’을 필두로 오븐 조리된 사이드 메뉴를 지속 출시하여 굽네치킨의 탄탄한 메뉴력에 한 몫을 하고 있습니다. </p>
						
					</li>
					<li>

						<p>그 결과, 굽네치킨은 현재 국내 1,025개 매장을 보유하고 있고 해외에서도 통하는 경쟁력으로 8개국가에 21개 매장을 오픈하며 순조로운 확장을 이어나가고 있습니다. 비단 국내에서의 인정뿐만이 아닌 세계에게 각광받는 브랜드로 성장을 거듭하고 있습니다. </p>
						<p>앞으로도 굽네치킨은 안주하지 않고 끝없는 혁신을 거듭하며 정진해 나갈 것을 약속 드립니다. 고객님들과 가맹점 사장님들께 자랑스러운 브랜드, 믿을 수 있는 브랜드로서 보내주시는 사랑에 보답할 수 있는 굽네치킨이 되겠습니다. 굽네치킨의 새로운 내일과 성장을 기대해주십시오.</p>
						<p>감사합니다.</p>
						<p class="t_right">GNFOOD 대표 <strong>정태용</strong></p>
			</li>
				</ul>
-->
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