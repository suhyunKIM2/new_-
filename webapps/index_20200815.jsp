<%@ page import="com.cntt.base.Const"%>
<%@ page import="com.cntt.util.JspUtils"%>
<%@ page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<!-- //Header doc -->   
<meta charset="utf-8">
</head>
    
<body>
	<!-- skipNavi -->
<div id="skipNavi"><a href="#contents">본문 바로가기</a> <a href="#gnb">주메뉴 바로가기</a> <a href="#footer">사이트정보 바로가기</a> </div>
	
	<!-- 인트로 팝업 -->
	
	 <div id="intro_banner" style="background:#fff1ef;">
		<p class="pc_banner">
			<a href="javascript:void(0)" class="top_banner_close" title="탑배너 닫기"></a>
			<a href="javascript:loginnet('');"><img src="resources/images/main/pc_top.jpg"  alt="온라인주문 카드결제 서비스 잠시 중단 안내(기간 : 7/22 ~ 8/16)"/></a>
		</p>
		<p class="mobile_banner">
			<a href="javascript:void(0)" class="top_banner_close" title="탑배너 닫기"></a>
			<a href="javascript:loginnet('');"><img src="resources/images/main/m_top.jpg"  alt="온라인주문 카드결제 서비스 잠시 중단 안내(기간 : 7/22 ~ 8/16)"/></a>
		</p>
	</div> 
	
	<!-- 온라인 팝업 -->


	<!-- //skipNavi -->
		<!-- wrap -->
	<div id="wrap" class="main">
		<!-- Header -->
		<jsp:include page="/include/header.jsp" flush="false"/>
		<!-- //Header -->
		<!-- container -->
		<div id="container">
			<!-- contents -->
			<section id="contents">
			
				<!-- 20204 메인팝업  --> 
				
				<section class="pop_layer_main layer1 ">
						<a href="/menu/new.jsp">
						<img src="resources/images/main/img_pop_200417.jpg" class="web_img" alt="굽네바게트볼 갈릭크림" />
						</a>
						<a href="/menu/new.jsp">
						<img src="resources/images/main/img_pop_200417_M.jpg" class="mobile_img" alt="굽네바게트볼 갈릭크림" />
						</a>

					
					<div class="btn_wrap btn_blk">
						<a href="javascript:void(0);" id="todayPopChk" class="web_order">오늘하루 보지 않기</a>
                        <a href="javascript:void(0);"  id="mobile_order">오늘하루 보지 않기</a>
						<a href="javascript:void(0)" class="main_pop_close" title="닫기">닫기</a>
					</div>
				</section> 
				
				<!--
				<section class="pop_layer_main layer2">
					
						<a href="/menu/new.jsp">
						<img src="resources/images/main/img_pop_200417.jpg" class="web_img" alt="굽네바게트볼 갈릭크림" />
						</a>
						<a href="menu/new.jsp">
						<img src="resources/images/main/img_pop_200417_M.jpg" class="mobile_img" alt="굽네바게트볼 갈릭크림" />
						</a>

					<div class="btn_wrap btn_blk">
						<a href="javascript:void(0);" id="todayPopChk2">오늘하루 보지 않기</a>
						<a href="javascript:void(0)" class="main_pop_close2" title="닫기">닫기</a>
					</div>
				</section>
				-->
				
				<!-- // 191127 메인팝업 -->
				
				
				<!-- main KV slider -->
				<div class="main_kv_banner">
					<ul>
						<li style="background:#000 no-repeat center top;">
							
							<div class="main_movie_slide">
								<!-- 메인 영상을 바꾸려면 하단의 movieURL 변수에 URL을 수정 
								<iframe src="https://www.youtube.com/embed/UHU3WGFd_hE?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=0&amp;showinfo=0&amp;controls=1" title="굽네 차은우, 박보영 TV CF" ></iframe>-->
								
								<!-- 시카고 피자  
								<iframe src="https://www.youtube.com/embed/oTO1u0spVb8?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;playlist=oTO1u0spVb8&amp;showinfo=0&amp;controls=1" allow="autoplay; encrypted-media" title="굽네피자 유연석 TV CF" ></iframe>-->
								<!-- 20110214 -->
<!--
								<iframe src="https://www.youtube.com/embed/IdXt1yU5WeU?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;playlist=oTO1u0spVb8&amp;showinfo=0&amp;controls=1" allow="autoplay; encrypted-media" title="성훈표 굽네 고추바사삭" ></iframe>-->

								<iframe src="https://www.youtube.com/embed/SsB77ASoj8Y?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;showinfo=0&amp;controls=1" allow="autoplay; encrypted-media" title="성훈표 굽네 고추바사삭 윙" ></iframe>
								
								<!--iframe ..... allow="autoplay; encrypted-media" 크롬 자동재생을 위한 속성값 -->
								<img src="resources/images/main/img_main_kv_movie.gif" class="w_img" alt=""/>
								<img src="resources/images/main/m_img_main_movie.gif" class="m_img" alt=""/>							
							</div>
					
						</li>
						<!--191129 굽네시카고피자 메인배너-->
						<li style="background:#d5d5d5 url('resources/images/main/img_main_cicago_pizza_bg.jpg')no-repeat center top;">
							<div style="position: relative; width: 1200px; margin: 0 auto;">
							<dl class="ef1"><img src="resources/images/main/cicago_txt_ef.gif" class="w_img" alt="굽네 시카고 피자"/></dl>
							</div>
							<div style="position: relative; width: 1200px; margin: 0 auto;">
							<dl class="ef2"><img src="resources/images/main/cicago_txt_ef2.gif" class="w_img" alt="입 안 가득 퍼지는 5가지 프리미엄 치즈의 풍부한 맛!"/></dl>
							</div>
							<div style="position: relative; width: 1200px; margin: 0 auto;">
							<dl class="ef3"><img src="resources/images/main/cicago_txt_ef3.gif" class="w_img" alt="굽네 시카고 피자"/></dl>
							</div>
							<a href="/menu/new.jsp">
								<img src="resources/images/main/img_main_cicago_pizza0129.jpg" class="w_img" alt="굽네 시카고 피자"/>
								<img src="resources/images/main/img_main_cicago_pizza0203_M.gif" class="m_img" alt="굽네 시카고 피자"/>		
							</a>
						</li><!--191129 굽네시카고피자 메인배너 끝-->
						<!--200417 굽네 바게트볼 갈릭크림 메인배너-->
						<li style="background:#f8f8f8 url('resources/images/main/img_main_bageteubol_bg.jpg')no-repeat center top;">
							<div style="position: relative; width: 1200px; margin: 0 auto;">
							<dl class="ef1_2"><img src="resources/images/main/baget_txt_ef.gif" class="w_img" alt="굽네 바게트볼 갈릭크림"/></dl>
							</div>
							<div style="position: relative; width: 1200px; margin: 0 auto;">
							<dl class="ef2_2"><img src="resources/images/main/baget_txt_ef2.gif" class="w_img" alt="굽네 바게트볼 갈릭크림"/></dl>
							</div>
							<a href="/menu/new.jsp">
								<img src="resources/images/main/img_main_bageteubol200420.jpg" class="w_img" alt="굽네 바게트볼 갈릭크림"/>
								<img src="resources/images/main/img_main_bageteubol_M.gif" class="m_img" alt="굽네 바게트볼 갈릭크림"/>		
							</a>
						</li><!--190705 마볼치킨 메인배너 끝-->
						<!--190501 굽네피자 메인배너-->
						<!--
						<li style="background:#d5d5d5 url('resources/images/main/img_main_pizza_bg.jpg')no-repeat center top;">
							<a href="http://order.goobne.co.kr:8081/login/login.aspx" target="_blank">
								<img src="resources/images/main/img_main_pizza.jpg" class="w_img" alt="굽네 피자 3종 출시"/>
								<img src="resources/images/main/img_main_pizza_M.jpg" class="m_img" alt="굽네 피자 3종 출시"/>		
							</a>
						</li>-->
						<!--190501 굽네피자 메인배너 끝-->	
						<!--190801~0831 갈비천왕소스 메인배너 끝-->
						<li style="background-color:#000">
							<a href="http://order.goobne.co.kr:8081/login/login.aspx" target="_blank">
								<img src="resources/images/main/img_main_vc.jpg" class="w_img" alt="굽네 볼케이노"/>
								<img src="resources/images/main/img_main_vc_M.jpg" class="m_img" alt="굽네 볼케이노"/>
							</a>							
						</li>		
						<li style="background-color:#ece5dd">
							<a href="http://www.goobnemall.com/" target="_blank" title="새창열림">
								<img src="resources/images/main/img_main_kv_20170831_1.png" class="w_img" alt="굽네치킨의 기술로 만든 맛있는 닭가슴살"/>
								<img src="resources/images/main/m_img_main_kv_20170831_1.jpg" class="m_img" alt="굽네치킨의 기술로 만든 맛있는 닭가슴살"/>
							</a>
						</li>
						<li style="background:#fff url('resources/images/main/img_main_chibob_bg.jpg')no-repeat center top;">
							<a href="http://www.goobnemall.com/view/category/4NAHGTSM08RVI4XA" target="_blank">
								<img src="resources/images/main/img_main_chibob.jpg" class="w_img" alt="굽네 갈비천왕 치밥"/>
								<img src="resources/images/main/img_main_chibob_M.jpg" class="m_img" alt="굽네 갈비천왕 치밥"/>
							</a>							
						</li>
						
					</ul>
					<div id="quick" class="quick_new">
				  		<ol>
					  		<li class="goobne_mall">
					  			<a href="http://www.goobnemall.com/view/event/X4N7DFJQ6MH0DVV4/read?evnt_id=SZ1XHK58I&evntType=CMT&evntSt=20&brdId=I93CH23GL&pageNum=1" target="goobnemall">
					  				<img src="resources/images/main/bn_main_gnmall.jpg" alt="굽네몰 첫구매 100원, 볼케이노 소스" width="150" height="150"/>
					  			</a>
								<a href="http://www.dhuman.co.kr/rest/pindex" target="dhumanmall">
					  				<img src="resources/images/main/bn_main_dhuman.jpg" alt="맛있는 자연 영양식 듀먼" width="150" height="150"/>
					  			</a>
					  		</li>
							
					  		<li class="franchise_btn"><a href="/franchise/franchise_consulting.jsp">창업문의</a></li>
					  		<li class="recruit"><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">인재채용</a></li>
					  	</ol>
				  	</div>
				</div>
				<!-- //main KV slider --> 
				
				<form name="searchform">
				<input type="hidden" name="ex" value="Main" />
				<input type="hidden" name="ac" value="selectRecommendMenu" />
				<input type="hidden" name="sPage" value="1" />
				<input type="hidden" name="stxt" id="stxt" value="" />
				</form>
				
				<form name="searchstore" method="get" action="/store/search_store.jsp">
				<input type="hidden" name="stxt" id="stxt" value="" />
				</form>
				
				<!-- main menu slide -->
				<div class="main_menu_slider">
					<!-- 퀵메뉴  -->
					<!--  2017 05 30 업데이트  -->
					<!--
					<div id="quick">
				  		<ol>
					  		<li class="goobne_mall"><a href="http://www.goobnemall.com/" target="goobnemall">굽네몰</a></li>
					  		<li class="franchise_btn"><a href="/franchise/franchise_consulting.jsp">창업문의</a></li>
					  		<li class="recruit"><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">인재채용</a></li>
					  	</ol>
				  	</div>
				  	-->
					<div class="inner">
						<ul id="menu_list">
							<!-- <li class="new_menu">
								<div class="main_menu_wrap">
									<p class="main_menu_img">
										<img src="//testgoobne.cntt.co.kr//Upload/menu//굽네볼케이노_L_01_view.png"  alt="굽네 볼케이노 굽네 볼케이노 / 볼케이노 순살 / 볼케이노 통다리 / 볼케이노 윙 불맛이 활활 - 화산처럼 폭발하는 매운맛!"/>
									</p>
									<div>
										<h2>굽네 볼케이노</h2>
										<p><i>굽네 볼케이노  </i>
											 불맛이 활활 - 화산처럼 폭발하는 매운맛!
										</p>
										<span>
											<a href="/menu/menu_view.jsp?dt=30001">자세히보기</a>
											<a href="javascript:loginnet();" class="btn_online_order">온라인주문</a>
										</span>
									</div>
								</div>
							</li>
							<li class="">
								<div class="main_menu_wrap">
									<p class="main_menu_img">
										<img src="//testgoobne.cntt.co.kr//Upload/menu//굽네볼케이노_L_01_view.png"  alt="굽네 볼케이노 굽네 볼케이노 / 볼케이노 순살 / 볼케이노 통다리 / 볼케이노 윙 불맛이 활활 - 화산처럼 폭발하는 매운맛!"/>
									</p>
									<div>
										<h2>굽네 볼케이노</h2>
										<p><i>굽네 볼케이노 / 볼케이노 순살 / 볼케이노 통다리 / 볼케이노 윙 </i>
											 불맛이 활활 - 화산처럼 폭발하는 매운맛! 불맛이 활활 - 화산처럼 폭발하는 매운맛!
										</p>
										<span>
											<a href="/menu/menu_view.jsp?dt=30001">자세히보기</a>
											<a href="javascript:loginnet();" class="btn_online_order">온라인주문</a>
										</span>
									</div>
								</div>
							</li> -->
						</ul>
					</div>
					<!--// main menu slide -->
				</div>
					
				<!-- main contents -->
				<div class="main_contents main_under_contents">
					<div class="inner">
						<ul>
							<li class="content_sns">
								<div>
									<h5>SNS</h5>
<!-- 									<a href="https://www.facebook.com/goobne/videos/vb.233442686697476/1837712519603810/?type=3&theater" target="_blank"></a> -->
<!-- 									<p> -->
<!-- 										<span> 될놈될.avi 정신 못 차리게 맛있는 굽네 갈비천왕 땡기지 않냐굽? 댓글 남겨주면 ...<span class="blind">#굽네치킨 #굽네갈비천왕 #될놈될 #이벤트</span></span> -->
<!-- 										<em>2018-03-07</em> -->
<!-- 									</p>		 -->
									<a href="https://www.facebook.com/goobne/posts/3473916352650077?__xts__[0]=68.ARB4JL6S0CmXnlia81Fmkb78q9-4HERLkrAlbq6DnvfB01dZEhIuGHmGENloB-KaFqOK2HlmlJXTWAmtCTTdlanXN8VhR3xdpcZz6aRMGNBS2yPD4VZivvzKnU30apHLOGEKA8oiEBTEZQsbzK3L4SertFvnMJL2u-YP1BxF8xUget2TSBzHZoiBLc_wBjhTodYi3hL_207ArdUnfKV10IvIdaVw2ZFCZXIdVsItxVqEnqCE7ojw0mi0XobB10d41Jgq-vg_M4ynk2NrPelR39pn8cEFP-ftXdcv9vRiv3ePf__IvxNMj2T-cSsjamoaq7oywuB3Duhuhb5xAerOmv6saw&__tn__=-R" target="_blank"></a>
									<p>
										<span>한번만 먹은 사람은 절대 없는 굽네 꿀조합 (*~▽~) 같이 즐기면 더 맛있는 조합!굽네 메이트를 태그해보라굽 😋 5명 추첨, 고추바사삭 윙 쏜다!...(~6/26일 발표)<span class="blind">#굽네치킨 #굽네꿀조합 #고추바사삭 #시카고피자 #바게트볼</span></span>
										<em>2020-07-07</em>
									</p>		
								</div>
							</li>
							<li class="content_store">
								<div >
									<h5>매장찾기</h5>
									<p>가까운 굽네치킨 매장을 찾아보세요</p>
									<label>
										<input type="text" name="searchtxt" id="searchtxt" placeholder="매장명 또는 주소를 입력하세요.">
										<a href="javascript:main.searchStore();"></a>
									</label>
									<a href="/store/search_store.jsp"><i>바로가기</i></a>		
								</div>
							</li>
							<li class="content_news">
								<div>
									<h5>굽네소식</h5>					
									<a href="/customer/cscenter_notice.jsp" ></a>
									<ul>
										<li style="overflow: visible;display: block;">굽네 홈페이지 카드결제 기능 추가<br/>(BC탑포인트 청구할인 가능)<br/>2020-06-30</li>
									</ul>
									<i>바로가기</i>					
								</div>
							</li>
							<li class="content_seminar">
								<div>
									<a href=""></a>
									<h5>창업정보</h5>
									<p><a href="/franchise/franchise.jsp"></a><i class="seminar_web">굽네치킨 창업상담</i><em>창업상담</em><span class="seminar_phone"><strong>1899-9458</strong></span><i>바로가기</i></p>
								</div>
							</li>
						</ul>
						<ul>
							<li class="content_recipe">
								<div>
									<a href="/menu/recipe_list.jsp"></a>
									<h5>굽네 치밥레시피</h5>
									<p>
										굽네 갈비천왕으로 맛있는 파채치밥을<br />
										<span>따라 해보세요~</span>
									</p>
									<img src="/resources/images/main/img_main_recipe2018.jpg" alt="굽네 갈비천왕으로 맛있는 파채 치밥을 따라해 보세요~" />
									<i>바로가기</i>	
								</div>
							</li>

							<li class="content_movie content_short">
								<div>
									<!--<iframe src="https://www.youtube.com/embed/xJc_lzRbIqs?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=0&loop=1&amp;showinfo=0&amp;controls=1" width="100%" height="100%" ></iframe> -->
									<!--<iframe src="https://www.youtube.com/embed/IgdUv2IN1rM?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=0&loop=1&amp;showinfo=0&amp;controls=1" width="100%" height="100%" ></iframe> -->
									<iframe src="https://www.youtube.com/embed/X-hXaUHGS4I?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=0&loop=1&amp;showinfo=0&amp;controls=1" width="100%" height="100%" ></iframe>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--// main contents -->
			</section>
			<!-- //contents --> 
		</div>
		<!-- //container -->           

		<!-- Footer -->
		<jsp:include page="/include/footer.jsp" flush="false"/>
		<!-- //Footer -->
	</div>
	<!-- //wrap -->
<script>
	$(document).ready(function(e) {
		introBannerClose();
		
		//메인 팝업
		var cookiedata = document.cookie;
		$('.pop_layer_main').hide();
		$('.pop_layer_main .main_pop_close').click(function(){
			$('.layer1').fadeOut();
			return false;
		});
		$('.pop_layer_main .main_pop_close2').click(function(){
			$('.layer2').fadeOut();
			return false;
		});
		
		$('#todayPopChk').click(function() {					
			setCookie( "todayPop", "done" , 1 );
			$('.layer1').fadeOut();
		});
		
		$('#todayPopChk2').click(function() {					
			setCookie( "todayPop2", "done" , 1 );
			$('.layer2').fadeOut();
		});
		
		if (cookiedata.indexOf("todayPop=done") < 0 ) {
			$('.layer1').show();
		}
		if (cookiedata.indexOf("todayPop2=done") < 0 ) {
			$('.layer2').show();
		}

		
		//퀵메뉴
		quick();
		
		//mainSlide();
		mainTopBanner();
		$(window).scroll(function() {
			 var hT = $('.main_contents ul').offset().top,
					 hH = $('.main_contents ul').outerHeight(),
					 wH = $(window).height(),
					 wS = $(this).scrollTop();
			 if (wS > (hT+hH-wH)){
					mainContentAnimate();
			 }
		});
		$('.gnb_wrap ul li').removeClass('on');
		$('.mGnb_wrap p, .mGnb_wrap li').removeClass('on')
		$('.mGnb_wrap ul').hide();
		
		//메인 모바일 전화번호 클릭시
		//창업설명회
		$('.seminar_phone').click(function(){
			var device = check_device();
			if(device !=''){
				location.href='tel:18999458';
		    }
		});

	});
	//쿠키 셋팅
	function setCookie (name,value,expiredays){
	  var exdate = new Date();
	  exdate.setDate(exdate.getDate()+expiredays);
	  
	  var cookie = null;
	  cookie = document.cookie;
	  cookie = name+"="+escape(value)+ "; path=/" + ((expiredays==null)?"":";expires="+exdate.toGMTString());
	  //cookie.Path = "/";
	  document.cookie = cookie;
	}
	
	function mainTopBanner(){
		$('.top_banner_close').click(function(){
			$('#intro_banner').slideUp();
		});
	}
	
	function introBannerClose(){
		$('.intro_banner_close').click(function(e){
			e.preventDefault();
			$('#intro_banner').slideUp();
		});
	}
	
	function mainSlide(){
		var $main_kv_banner = $('.main_kv_banner');
		var $main_kv_banner_img = $('.main_kv_banner ul li img');
		var $main_menu_slider_btn = $('.main_menu_slider ul li a');
		var $main_movie = $('.main_movie_slide iframe');
		
		
		//메인 키비주얼 배너
		//메인 롤링배너 2개 이상시에 ON
		//var movieURL = 'https://www.youtube.com/embed/UHU3WGFd_hE?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=0&amp;showinfo=0&amp;controls=1';
		//피자3종
		//var movieURL = 'https://www.youtube.com/embed/VK1nLVsHkic?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=0&amp;showinfo=0&amp;controls=1';
		//치킨 광고
		//var movieURL = 'https://www.youtube.com/embed/dFijTHDFWLo?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=0&amp;showinfo=0&amp;controls=1';
		//시카고 피자
		//var movieURL = 'https://www.youtube.com/embed/oTO1u0spVb8?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;playlist=oTO1u0spVb8&amp;showinfo=0&amp;controls=1';
		//성훈표 고추바사삭
		//var movieURL = 'https://www.youtube.com/embed/IdXt1yU5WeU?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;playlist=IdXt1yU5WeU&amp;showinfo=0&amp;controls=1';
		//성훈표 고추바사삭 윙
		var movieURL = 'https://www.youtube.com/embed/SsB77ASoj8Y?rel=0&amp;wmode=opaque&amp;autohide=1&amp;autoplay=1&loop=1&amp;showinfo=0&amp;controls=1';
		
		$('.main_kv_banner ul').bxSlider({
			auto:true,
			autoHover:true,
			pause:80000,//영상 슬라이드 타임 조정
			autoDelay:3000,
			pager:true,
			startText:'시작',
			stopText:'정지',
			prevText:'이전',
			nextText:'다음',
			mode : 'fade',
			onSlideNext:function (currentSlide, totalSlides, currentSlideHtmlObject) {
				$main_movie.attr('src','');
				$('.main_kv_banner ul>li').removeClass('active');
				//console.log(currentSlideHtmlObject);
				$('.main_kv_banner ul>li').eq(currentSlideHtmlObject).addClass('active');
				if($('.main_movie_slide').parent('li').hasClass('active')){
					$main_movie.attr('src',movieURL);
				}
				if($('.bg_wht').hasClass('active')){
					$main_kv_banner.addClass('gray_arr');
				}else{
					$main_kv_banner.removeClass('gray_arr');
				}
			},
			onSlidePrev:function (currentSlide, totalSlides, currentSlideHtmlObject) {
				$main_movie.attr('src','');
				$('.main_kv_banner ul>li').removeClass('active');
				$('.main_kv_banner ul>li').eq(currentSlideHtmlObject).addClass('active');
				if($('.main_movie_slide').parent('li').hasClass('active')){
					$main_movie.attr('src',movieURL);
				}
				if($('.bg_wht').hasClass('active')){
					$main_kv_banner.addClass('gray_arr');
				}else{
					$main_kv_banner.removeClass('gray_arr');
				}
			},
			onSliderLoad: function(){ 
				 $('.main_kv_banner ul>li').eq(0).addClass('active')
				 $main_movie.attr('src',movieURL);
				 $main_kv_banner.removeClass('gray_arr');
			},
			
		});

		
		//메인 메뉴 슬라이드
		
		$('.main_menu_slider ul').bxSlider({
			auto:true,
			autoHover:true,
			pause:3000,
// 			autoDelay:3000,
			pager:true,
			startText:'시작',
			stopText:'정지',
			prevText:'이전',
			nextText:'다음',
		});
	}
	
	//퀵메뉴
	function quick(){
		var elem = $("#quick"),
			elemTop = elem.offset().top,
			elemH = elem.height();
		$(window).bind('scroll resize',function(){
			scrollQuick()
		});
		function scrollQuick(){
			var winTop = $(window).scrollTop(),
				bodyH =$('body').height(),
				bottom = bodyH - (elemH);
			if (winTop > elemTop){
				elem.addClass('fixed');
			}else{
				elem.removeClass('fixed');
			}
		}
	} 
	
	//메인 컨텐츠 에니메이션
	function mainContentAnimate(){
		var $mainContents = $('.main_contents ul li');
		$mainContents.each(function(showIn){
			$(this).delay(showIn * 400).fadeIn().addClass('fadeInRight animated');
			$('.main_contents ul .content_news ul li').removeClass('fadeInRight animated');
		});
	}
</script>
<script src="/resources/js/wscript/main.js?v=<%=System.currentTimeMillis() %>"></script>
<script>
var GnHome = "<%=Const.GnHome%>";
var GnHomeImg = "<%=Const.GnHomeImg %>";
var GnOrder = "<%=Const.GnOrder%>";
var GnOrderImg = "<%=Const.GnOrderImg%>";

var main = new CNTLib.Main("#contents","main");
</script>
</body>

</html>

