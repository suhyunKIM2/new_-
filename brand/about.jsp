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
/*200724_브라우저별 css캐시 문제로 추가*/
.about_tab_contents ul li.award_2017{top:566px;}
.about_tab_contents ul li.award_2019{top:222px;}
.about_tab_contents li.mt_40:nth-child(1){padding-top:0;}

.about_tab_contents ul li.history_2017{top:395px;}
.about_tab_contents ul li.history_2019{top:48px;    padding-top: 40px !important;}
.about_tab_contents ul li.history_2015{top:565px;}
.tab_contents2 ul li.history_2017{padding-top:72px !important;}
.about_tab_contents ul li.award_2011 {
   top: auto;
    bottom: 540px;
}
.about_tab_contents ul li.award_2009 {
    top: auto;bottom:260px;
}
.about_tab_contents ul li.award_2013{    top: auto;
    bottom: 1090px;}
.about_tab_contents ul li.award_2015 {
    top: auto;
    bottom: 1654px;
}    
.tab_contents2 ul li.history_2013 {
    top: 858px;
}
.tab_contents2 ul li.history_2016{padding-top:125px;}
.tab_contents2 ul li.history_2015{top:620px;}
.about_tab_contents li.mt_40 {
    margin-top: 161px;
}
.about_tab_contents ul li.award_2021{margin-top: 42px;}
.about_tab_contents ul li.history_2005 {
    top: 2021px;
}
.about_tab_contents ul li.history_2007 {
    top: 1746px;
}
.about_tab_contents li.mt_80 {
    margin-top: 0;
    padding-top: 0;
}
.about_tab_contents ul.award_contents li.about_right{padding-top:0;}
.about_tab_contents ul li.about_right{padding-top:226px;}
@media only screen and (max-width: 760px){

.about_tab_contents ul li.about_right {
    top: auto;padding-top:0;bottom:auto;
}
.about_tab_contents ul li.history_2016 {
    padding-top: 0px;
}
.about_tab_contents li.history_2014 {
    padding-top: 0 !important;
}
.about_tab_contents li.mt_40 {
    margin-top: 40px;
}
.tab_contents2 ul li.history_2017,.tab_contents2 ul li.history_2019{padding-top:0 !important;}
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
			<h2 class="cont_tit t_center">수상 &amp; 연혁</h2>
			<div class="brand_standard_wrap">
				<ul class="tab tab_step about_tab">
					<li class="on"><div><a href="">수상</a></div></li>
					<li class="btn_award"><div><a href="">연혁</a></div></li>
				</ul>
				
                <div class="tab_contents tab_contents1 about_tab_contents">
					<h1 class="award_tit">GOOBNE <span>AWARD</span></h1>
					<ul class="award_list">
						<li class="award_16">2018 소비자의 선택 </li>
						<li class="award_15">2018 브랜드 대상</li>
						<li class="award_14">2017 소비자의 선택 </li>
						<li class="award_13">2017년 아시아 소비자 대상</li>
						<li class="award_1">대한민국 일하기좋은 100대기업 2011</li>
						<li class="award_2">2005년 100대 프렌차이즈</li>
						<li class="award_3">2014 미래창조경영우수기업</li>
						<li class="award_4">2014 소비자의 선택 </li>
						<li class="award_5">BRAND</li>
						<li class="award_6">경기도 힐하기 좋은 기업GGWP</li>
						<li class="award_7">한국 프랜차이즈 대상</li>
						<li class="award_8">한국 프렌차이즈 대상</li>
						<li class="award_9">2008상반기 히트상품</li>
						<li class="award_10">2007 고객만족도 1위상품</li>
						<li class="award_11">사회공헌대상</li>
						<li class="award_12">2007 마케팅대상</li>
					</ul>
					
					<ul class="award_contents">
                        <li class="about_right award_2021 mt_40">
                                <h5><strong>2021</strong></h5>
                                <p>
                                    2021 매일경제 '매경 100대 프랜차이즈' 수상  <span>07</span>
                                </p>
                                <p>
                                    중앙일보 '2021 소비자의 선택' 치킨전문점 9년 연속 수상 <span>10</span>
                                </p>
                                <p>
                                    2021 올해의 브랜드 대상 11년 연속 수상 <span>10</span>
                                </p>
                                <p>
                                    2021 한국 프랜차이즈 산업 유공 '대통령 표창' 수상 <span>11</span>
                                </p>
                            </li>	
                        <li class="mt_40" style="padding-top:0;">
							<h5><strong>2020</strong></h5>
							<p>
								매일경제 '매경 100대 프랜차이즈' 수상 <span>07</span>
							</p>
                            <p>
								2020 굽네치킨 올해의 브랜드 대상 수상 <span>10</span>
							</p>
						</li>
						<li class="about_right award_2019 mt_40">
							<h5><strong>2019</strong></h5>
							<p>
								중앙일보 '2019 소비자의 선택' 치킨전문점 7년 연속 선정 <span>10</span>
							</p>
							<p>
								한국소비자포럼 주최 '2019 올해의 브랜드 대상' 치킨전문점 10년 연속 선정 <span>08</span>
							</p>
							<p>
								매일경제 '매경 100대 프랜차이즈' 수상 <span>03</span>
							</p>
						</li>				
						<li class="mt_40 award_2018">
							<h5><strong>2018</strong></h5>
							<p>
								김포복지재단 '3억원 나눔의 탑' 수상 <span>12</span>
							</p>
							<p>
								중앙일보 '2018 소비자의 선택' 치킨전문점 6년 연속 선정 <span>10</span>
							</p>
							<p>
								한국소비자포럼 주최 '2018 올해의 브랜드 대상' 9년 연속 선정 <span>07</span>
							</p>
							<p>
								매일경제 '매경 100대 프랜차이즈' 수상 <span>03</span>
							</p>
							<p>
								지앤푸드, 고용노동부 주최 '청년친화 강소기업' 인증 <span>01</span>
							</p>
						</li>
						<li class="about_right award_2017 mt_40">
							<h5><strong>2017</strong></h5>
							<p>
								중앙일보 '2017 소비자의 선택' 치킨전문점 5년 연속 선정 <span>11</span>
							</p>
							<p>
								한국소비자포럼 주최 ‘2017 올해의 브랜드 대상’ 8년 연속 선정 <span>09</span>
							</p>
							<p>
								매일경제 '매경 100대 프랜차이즈' 수상 <span>03</span>
							</p>
							<p>
								아시아경제 '2017 아시아소비자대상' 치킨부문 최우수상 수상 <span>01</span>
							</p>
						</li>						
						<li class="mt_40">
							<h5><strong>2016</strong></h5>
							<p>
								중앙일보 '2016 소자의 선택' 치킨전문점 4년 연속 선정<span>11</span>
							</p>
							<p>
								한국 소비자포럼 주최 ‘2016 올해의 브랜드 대상’ 7년 연속 선정<span>07</span>
							</p>
							<p>
								아시아경제 '2016 아시아소비자대상' 치킨부문 최우수상 수상<span>01</span>
							</p>
							<p>
								<img src="/resources/images/contents/about/img_award_img1.jpg"  alt="올해의 브랜드 대상" />
							</p>
						</li>
						<li class="about_right award_2015 mt_40">
							<h5><strong>2015</strong></h5>
							<p>
								중앙일보 ‘2015 소비자의 선택’ 치킨전문점 3년 연속 선정 <span>11</span>
							</p>
							<p>
								한국소비자포럼 주최 ‘2015 올해의 브랜드 대상’ 6년 연속 선정<span>10</span>
							</p>
							<p>
								중앙일보 '2015 소비자의 선택' 치킨전문점 3년 연속 선정
							</p>
							<p>
								<img src="/resources/images/contents/about/img_award_img2.jpg"  alt="올해의 브랜드 대상" />
							</p>
							<p>
								매일경제 ‘매경 100대 프랜차이즈’ 수상<span>03</span>
							</p>
						</li>
						<li>
							<h5><strong>2014</strong></h5>
							<p>
								2014 제2회 미래창조경영우수기업 고용노동부장관 표창 수상<span>10</span>
							</p>
							<p>
								중앙일보 '2014 소비자의 선택' 치킨전문점 2년 연속 선정
							</p>
							<p>
								한국소비자포럼 '2014 올해의브랜드대상' 오븐치킨부문 5년 연속 선정<span>09</span>
							</p>
							<p>
								<img src="/resources/images/contents/about/img_award_img3.jpg"  alt="올해의 브랜드 대상" />
							</p>
							<p>
								복지부장관상 행복나눔인상 수상<span>03</span>
							</p>
							<p>
								매일경제 ‘매경100대 프랜차이즈’ 수상<span>02</span>
							</p>
							<p>
								아시아경제 ‘2014아시아소비자대상’ 수상<span>01</span>
							</p>
							<p>
								아시아경제 '2014 아시아소비자대상' 프랜차이즈부문 최우수상 수상
							</p>
						</li>
						<li class="about_right award_2013 mt_40">
							<h5><strong>2013</strong></h5>
							<p>
								2013 우리지역 일하기 좋은 기업으로 선정 (산업자원 통상부 주관)<span>12</span>
							</p>
							<p>
								2013 ‘경기도 일하기 좋은 기업’ 재 인증<span>11</span>
							</p>
							<p>
								한국소비자포럼 '2013 올해의브랜드대상' 오븐치킨부문 4년 연속 선정<span>10</span>
							</p>
							<p>
								중앙일보 '2013 소비자의 선택' 치킨전문점 선정
							</p>
							<p>
								<img src="/resources/images/contents/about/img_award_img4.jpg"  alt="올해의 브랜드 대상" />
							</p>
							<p>
								2013 소비자의 선택 최고의 브랜드 선정
							</p>
							<p>	
								매일경제 100대 프랜차이즈 선정<span>01</span>
							</p>
						</li>
						<li class="mt_40">
							<h5><strong>2012</strong></h5>
							<p>
								우수 외식기업 대형 가맹사업자 부문 우수상 수상<span>12</span>
							</p>
							<p>
								제 1회 인구의날 및 제3회 아이낳기 좋은세상<span>07</span>
							</p>
							<p>
								운동경진대회 보건복지부 장관상 수상
							</p>
							<p>
								경기도지사 표창장 수상<span>04</span>
							</p>
							<p>
								(2012 이웃돕기 유공자 포상 및 성금 전달식)
							</p>
							<p>
								2012 행복더함 사회공헌대상 지역사회공헌부문 대상 수상<span>03</span>
							</p>
						</li>
						<li class="about_right award_2011 mt_40">
							<h5><strong>2011</strong></h5>
							<p>
								SBS 희망내일 나눔대상 기업부분 수상<span>12</span>
							</p>
							<p>
								<img src="/resources/images/contents/about/img_history_img2.jpg"  alt="SBS" />
							</p>
							<p>
								한국프랜차이즈 대상 국무총리상 수상<span>11</span>
							</p>
							<p>GWP(Great Work Place) 대한민국 일하기 좋은 100대 기업 판매·유통부분 대상 수상</p>
							<p>
								2011 프랜차이즈 &amp; 라이센싱 아시아 어워드(FLA) 인터내셔널 프랜차이즈상 수상<span>09</span>
							</p>
							<p>
								지식경제부주관 우리지역 일하기 좋은 기업 선정<span>06</span>
							</p>
						</li>
						<li class="mt_100">
							<h5><strong>2010</strong></h5>
							<p>
								2010년 경기도 일하기 좋은 10대 기업 대상<span>12</span>
							</p>
							<p>
								국가경쟁력대상 기업대상 프랜차이즈 부문 수상
							</p>
							<p>
								경영혁신형 중소기업선정<span>05</span>
							</p>
							<p>
								제1회 아이낳기좋은세상운동경진대회 국무총리 표창수상<span>09</span>
							</p>
						</li>
						<li class="about_right award_2009">
							<h5><strong>2009</strong></h5>
							<p>
								가경쟁력대상 기업대상 프렌차이즈 부분 수상<span>12</span>
							</p>
							<p>
								한국프랜차이즈협회대상 중소기업청장상 수상<span>06</span>
							</p>
							<p>
								2009 한국윤리경영대상 고객만족경영부문 수상<span>04</span>
							</p>
							<p>
								경기도지사 표창장 수상 (희망 2009 나눔캠페인)<span>03</span>
							</p>
						</li>
						<li class="mt_40">
							<h5><strong>2008</strong></h5>
							<p>
								김포시장상 수상 (2008년 이웃돕기 후원 유공)<span>12</span>
							</p>
							<p>
								한국프랜차이즈협회 대상 한국프랜차이즈협회회장상 수상<span>06</span>
							</p>
						</li>
					</ul>
				</div>
				<div class="tab_contents tab_contents2 about_tab_contents">
					<h1 class="history_tit">GOOBNE <span>HISTORY</span></h1>
					<ul>
						
						<li class="history_2020">
							<h5><strong>2020</strong></h5>
							<p>인도네시아 진출, PIK점 오픈<span>02</span></p>
							<p>싱가포르 진출, 그레이트월드점 오픈<span>01</span></p>
						</li>
						<li class="about_right history_2019">
							<h5><strong>2019</strong></h5>
							<p>호주 진출, 시드니 달링스퀘어점 오픈<span>11</span></p>
							<p>베트남 호치민 2호점 오픈<span>09</span></p>
							<p>홍콩 통청점 오픈<span>09</span></p>
							<p>가산물류센터 설립<span>09</span></p>
							<p>정태용 대표이사 취임<span>09</span></p>
							<p>일본 후쿠오카텐진점 오픈<span>08</span></p>
							<p>굽네피자 3종 출시<span>05</span></p>
							<p>일본 아케보노바시점 오픈<span>04</span></p>
							<p>일본 한류백화점점 오픈<span>03</span></p>
						</li>
						<li class="history_2018">
							<h5><strong>2018</strong></h5>
							<p>베트남 진출, 호치민 1호점 오픈<span>11</span></p>
							<p>말레이시아 진출, 쿠알라룸푸르 Mytown점 오픈<span>09</span></p>
							<p>마카오 쾌자기점 오픈<span>07</span></p>
							<p>자카르타 PIK점 오픈<span>03</span></p>
						</li>
						<li class="about_right history_2017">
							<h5><strong>2017</strong></h5>
							<p>홍콩 정관오점 오픈<span>11</span></p>
							<p>청소년 장학생 후원 (매월 60명 지원)<span>05</span></p>
							<p>마카오 타이파점 오픈<span>04</span></p>
							<p>일본 도쿄 가부키초점 오픈(2호점)<span>03</span></p>
							<p>용인 아카데미 설립<span>02</span></p>
						</li>
						<li class="history_2016">
							<h5><strong>2016</strong></h5>
							<p>일본 진출, 도쿄 신오쿠보점 오픈<span>12</span></p>
							<p>홍콩 센트럴점 오픈<span>10</span></p>
							<p>홍콩 코즈웨이베이점 오픈<span>09</span></p>
							<p><img src="/resources/images/contents/about/img_history_img_store_11.jpg"  alt="홍콩코즈웨이베이" /></p>
							<p>홍콩 취난점 오픈<span>05</span></p>
							<p>청소년 장학생 후원 (매월 60명 지원))</p>
							<p>계룡 물류센터, 계룡 아카데미 설립</p>
						</li>
						<li class="about_right history_2015">
							<h5><strong>2015</strong></h5>
							<p>홍콩 몽콕점 오픈<span>10</span></p>
							<p>청소년 장학생 후원 (매월 60명 지원)<span>05</span></p>
							<p>초록우산 어린이재단 협약식<span>04</span></p>
						</li>
						<li class="history_2014">
							<h5><strong>2014</strong></h5>
							<p>홍콩 진출, 홍콩 침사추이점 오픈<span>11</span></p>
							<p>사옥(목동 공항대로변) 이전<span>06</span></p>
							<p>청소년 장학생 후원 (매월 61명 지원)<span>05</span></p>
						</li>
						
						<li class="about_right history_2013">
							<h5><strong>2013</strong></h5>
							<p>고양·파주지역 범죄피해자연합회 후원<span>05</span></p>
							<p>청소년 장학생 후원 (매월 60명 지원)</p>
						</li>
						<li>
							<h5><strong>2012</strong></h5>
							<p>서울고용노동청과 ‘배달용 이륜차 재해예방 업무협약’ 체결<span>04</span></p>
							<p>김포경찰서 ‘학교폭력 예방 및 신고 활성화’ 업무협약 체결<span>03</span></p>
						</li>
						<li class="about_right history_2011">
							<h5><strong>2011</strong></h5>
							<p>
								굽네치킨 850호점 개점<span>08</span>
							</p>
							<p><img src="/resources/images/contents/about/img_history_img2.jpg"  alt="SBS" /></p>
							<p>
								청소년 장학생 후원 (매월 60명 지원)<span>03</span>
							</p>
						</li>
						<li>
							<h5><strong>2010</strong></h5>
							<p>㈜GN FOOD로 회사명 변경<span>12</span></p>
							<p>베트남 엔뚜이지역 아동 1,000명 매월 지원<span>11</span></p>
							<p>청소년 장학생 후원 (매월 45명 지원)<span>05</span></p>
						</li>
						<li class="about_right history_2009">
							<h5><strong>2009</strong></h5>
							<p>제 14회 아시아태평양 소폐업자대회 후원<span>12</span></p>
							<p>사회복지 공공 모금회(사랑의 열매)기부</p>
							<p>용인물류센터 설립<span>09</span></p>
							<p>제 1회 굽네치킨배 전국동호인 테니스대회개최</p>
							<p>정읍 물류센터 설립<span>08</span></p>
							<p>물류법인 ㈜맛있는 서비스 별도 법인 설립</p>
							<p><img src="/resources/images/contents/about/img_history_img4.jpg"  alt="SBS" /></p>
							<p>청소년 장학생 후원 (매월 37명 지원)<span>03</span></p>
						</li>
						<li class="mt_80">
							<h5><strong>2008</strong></h5>
							<p>굽네치킨 500호점 개점<span>11</span></p>
							<p>사단법인 생명의 숲 후원 (숲 가꾸기 운동)</p>
							<p>광주 물류센터 설립<span>07</span></p>
							<p>물화사업실시 – 뮤지컬 아산 메인 스폰서<span>06</span></p>
							<p>굽네치킨 400호점 개점<span>05</span></p>
							<p>청소년 장학생 후원 (매월 25명 지원)</p>
							<p>구미물류센터 설립<span>04</span></p>
							<p>소녀시대 광고모델 계약<span>03</span></p>
						</li>
						<li class="about_right history_2007">
							<h5><strong>2007</strong></h5>
							<p>굽네치킨 300호점 개점<span>12</span></p>
							<p>사단법인 프랜차이즈협회 정회원 가입<span>11</span></p>
							<p>굽네치킨 200호점 개점<span>06</span></p>
							<p>대구물류센터 마산으로 이전<span>04</span></p>
							<p>유성물류센터 설립<span>01</span></p>
						</li>
						<li class="mt_40">
							<h5><strong>2006</strong></h5>
							<p>굽네치킨 100호점 개점<span>12</span></p>
							<p>굽네치킨 서비스표등록(41-2006-0028432)<span>11</span></p>
							<p>대구 물류센터 설립</p>
							<p>굽네치킨 10호점 개점<span>02</span></p>
						</li>
						<li class="about_right history_2005">
							<h5><strong>2005</strong></h5>
							<p>굽네치킨 2호점(김포사우점)개점, 가맹사업 개시<span>07</span></p>
							<p>맛있는생각 본사 설립<span>05</span></p>
							<p>굽네치킨 1호점(김포북변점)개점<span>03</span></p>
						</li>
						<li class="mt_40">
							<h5><strong>2004</strong></h5>
							<p> 굽네치킨 브랜드 신규 런칭<span>12</span></p>
						</li>
					</ul>
				</div>
				
				
				
			</div>			
		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
	<script>
		$(function(){
			$('.award_list').owlCarousel({ //수상내역 리스트 슬라이더	 
				navigation : true, 
				autoPlay: 3000, 
				items : 6, 
				itemsDesktopSmall : [1250,4], 
				itemsTablet: [760,4], 
				itemsMobile : [480,3] 
			});
		});
	</script>
</body>
</html>