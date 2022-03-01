<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.JspUtils"%>
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
.header_top_banner{width:1070px;margin:auto;}
@media only screen and (max-width: 760px){
.header_top_banner{width:auto;}
}
</style>
<!--- S: 211126 트래킹코드 설치 --->
<script type="text/javascript">
(function(w, d, a){
    w.__beusablerumclient__ = {
        load : function(src){
            var b = d.createElement("script");
            b.src = src; b.async=true; b.type = "text/javascript";
            d.getElementsByTagName("head")[0].appendChild(b);
        }
    };w.__beusablerumclient__.load(a);
})(window, document, "//rum.beusable.net/script/b211126e173652u678/74a88a2305");
</script>
<!--- E: 211126 트래킹코드 설치 --->
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
        <!-----------210127 상단배너 추가---------------->
        <div class="header_top_banner" style="display:none;">
            <a href="http://kko.to/wvYzltUD0" target="_blank">
                <img src="http://www.goobne.co.kr/img/210719_PC_top_banner.jpg" width="100%" class="pc_banner">
                <img src="http://www.goobne.co.kr/img/210719_MO_top_banner.jpg" width="100%" class="mobile_banner">
            </a>
        </div>
        <!-----------//END 210127 상단배너 추가//---------------->
        
		<section id="contents" class="menu_section">
			<h2 class="cont_tit t_center" id="menutxt">메뉴보기</h2>
			<!--  
			<ul class="tab tab_step menu_selection_web">
				<li class="on all_menu"><div><a href="">전체메뉴</a></div></li>
				<li><div><a href=""><i>굽네</i> 볼케이노 <i>시리즈</i></a></div></li>
				<li><div><a href=""><i>굽네</i> 오리지널 <i>시리즈</i></a></div></li>
				<li><div><a href=""><i>굽네</i> 고추바사삭 <i>시리즈</i></a></div></li>
			</ul>
			-->
			 
			<div class="menu_select_wrap">
				<div class="menu_swipe_list">
					<div class="on menuItem" id="class"><a href="javascript:menu.getClass('');">전체메뉴</a></div>
					<div class="menuItem" id="class10"><a href="javascript:menu.getClass('10');">치킨 시리즈</a></div>
					<div class="menuItem" id="class15"><a href="javascript:menu.getClass('15');">피자 시리즈</a></div>
					<div class="menuItem" id="class20"><a href="javascript:menu.getClass('20');">세트 메뉴</a></div>
					<div class="menuItem" id="class30"><a href="javascript:menu.getClass('30');">색다른 메뉴</a></div>
					<div class="menuItem" id="class40"><a href="javascript:menu.getClass('40');">사이드 메뉴</a></div>
				</div>
			</div>
			
			<form name="searchform">
			<input type="hidden" name="ex" value="Menu" />
			<input type="hidden" name="ac" value="selectMenu" />
			<input type="hidden" name="sPage" value="1" />
			<input type="hidden" name="class_id" id="class_id" value="" />
			<input type="hidden" name="classbtn" id="classbtn" value="" />
			</form>
			<!-- 전체메뉴 -->
			<div class="menu_list_wrap">
				<ul class="order_menu_select" id="menu_list">
					<!-- <li>
						<img src="http://testgoobne.cntt.co.kr//Upload/menu//굽네오리지널치킨_L_01.png"  alt="제품" />
						<p>				
							<span>굽네 오리지널 시리즈</span>	
						</p>
					</li>
					<li>
						<img src="http://testgoobne.cntt.co.kr//Upload/menu//굽네오리지널치킨_L_01.png"  alt="제품" />
						<p>					
							<span>사이드메뉴</span>	
						</p>
					</li>
					<li>
						<img src="http://testgoobne.cntt.co.kr//Upload/menu//굽네오리지널치킨_L_01.png"  alt="제품" />
						<p>				
							<span>굽네 고추바사삭 시리즈</span>	
						</p>
					</li>
					<li>
						<img src="http://testgoobne.cntt.co.kr//Upload/menu//굽네오리지널치킨_L_01.png"  alt="제품" />
						<p>				
							<span>굽네 고추바사삭 시리즈</span>	
						</p>
					</li> -->
				</ul>
			</div>
			<!-- // 전체메뉴 -->
						
		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
	<script>
		$(document).ready(function(){
			
// 			var name = "class";
// 			var val = "";
// 			var nowAddress = unescape(location.href);
// 			var parameters = (nowAddress.slice(nowAddress.indexOf('?')+1,nowAddress.length)).split('&');
				
// //  				apiutil.log(parameters[0] );
// // 				for(var i = 0 ; i < parameters.length ; i++) {
// // 					var varName = parameters[i].split('=')[0];
// // 					if(varName.toUpperCase() == name.toUpperCase()) {
// 						val = parameters[0].split('=')[1];
// // 						break;
// // 					}
// // 				}

// 			$("#gobtn").attr("value",val);
// 			apiutil.log("gobtn"+ $("#gobtn").val());
				
				
			//스와이프 메뉴
// 			menuListSwipe();
			$(".menu_swipe_list").owlCarousel({
				navigation : true, 
				rewindNav: false,
				responsiveRefreshRate: 50,
				//autoPlay: 3000, 
				items : 6,
				autoPlay : false,
				itemsDesktopSmall : [1250,6], 
				itemsTablet: [900,4], 
				itemsMobile : [480,2],
				afterMove: afterMove
            });
			function afterMove(owl){
				data = $(owl).data('owlCarousel');
				isLast = data.currentItem + data.visibleItems.length == data.itemsAmount;
				/*
				if(owl.currentItem == 0){
				 $('.owl-next').show()
				 $('.owl-prev').hide()
				}else if(isLast){
				 $('.owl-prev').show()
				 $('.owl-next').hide()
				}else{
				 $('.owl-prev ').show();
				 $('.owl-next ').show()
				}
				*/
			}
		})
	</script>
<script src="/resources/js/wscript/menu/menu.js?v=<%=System.currentTimeMillis() %>"></script>
<script>
var GnHome = "<%=Const.GnHome%>";
var GnHomeImg = "<%=Const.GnHomeImg %>";
var GnOrder = "<%=Const.GnOrder%>";
var GnOrderImg = "<%=Const.GnOrderImg%>";
var params = document.location.search;
var page = params.getValueByKey("page");
var classbtn = params.getValueByKey("classbtn");
if (page == "") {
	page = "1";
}
var menu = new CNTLib.Menu("#contents","list");
</script>
</body>
</html>