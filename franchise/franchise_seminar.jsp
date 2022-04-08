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
			<span><em>창업정보</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container">
		<section id="contents" class="franchise_contents">
			<h2 class="cont_tit t_center">창업 전화상담</h2>

			<section id="frcs_consulting" >
				<div class="frcs_contents_wrap">
					<h5>창업을 준비하시는 예비창업주님들을 초대합니다!</h5>
					<ul class="frcs_schedule">
						<li class="frcs_schedule_date"><i>시간</i> : 평일 오전 10시~오후 6시</li>
						<li class="frcs_schedule_info"><i>내용</i> : 굽네치킨 창업소개, 성공창업을 위한 지원제도, Q&amp;A, 1:1상담</li>
					</ul>
					<div class="franchise_map" id="franchise_map"></div>
					<ul class="frcs_map_icons">
						<li class="phone">전화번호<span>1899-9458</span></li>
						<li class="address">주소<span>서울특별시 강서구 강서로 318</span></li>
						<li class="public_trans">대중교통 
							<ul>
								<li>지하철 : 5호선 발산역 6번 출구 | 5호선 우장산역 1번 출구
                                </li>
								<li>간선 : 652, 661, N65(심야)</li>
								<li>마을 : 강서05, 강서06</li>					
								<li>지선 : 6629, 6630, 6645, 6648, 6657</li>
							</ul>
						</li>
					</ul>
				</div>
			</section>

		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
	
<!-- <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=72279ee0b283ca005ef6d19456a3ca41&libraries=services"></script> -->
<%-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7a74bb368747555b65350286c83f080"></script> --%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=06a09dd86fbe20403df2966b35b370c4"></script>
<!-- https://developers.kakao.com/카카오 계정 : pcm9090@naver.com로 사용함/신규URL 등록해야함 -->
<script>
var mapContainer = document.getElementById('franchise_map'), // 지도를 표시할 div 
mapOption = { 
	center: new daum.maps.LatLng(37.554028, 126.837150), // 지도의 중심좌표
	level: 3 // 지도의 확대 레벨
};
var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
var marker = "";
var daumGEO = function(){
	var lat = "37.554028";
	var lng = "126.837150";
	var imageSrc = "//www.goobne.co.kr/resources/images/common/mappin.png";
	var coords = new daum.maps.LatLng(lat, lng);
	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new daum.maps.Size(24, 35); 
	// 마커 이미지를 생성합니다    
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
	// 마커를 생성합니다
	marker = new daum.maps.Marker({
		map: map, // 마커를 표시할 지도
		position: coords, // 마커를 표시할 위치
		image : markerImage // 마커 이미지 
	});
	var moveLatLon = new daum.maps.LatLng(lat, lng);
	map.setCenter(moveLatLon);
}
daumGEO();
</script>
</body>
</html>