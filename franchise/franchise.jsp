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
<style>
.m_img{display:none;}
#container #contents.franchise_contents #frcs1{min-height:800px;}
#container #contents.franchise_contents section{background:none !important;color:#000 !important;max-width: 1000px;margin: auto;text-align: left !important;}
#container #contents.franchise_contents section h3, #container #contents.franchise_contents section p{color:#000 !important;text-align: left;}
#container #contents.franchise_contents section p{color:#fff !important;}
#container #contents.franchise_contents section h2 {max-width:1000px;margin: auto;text-align: left;display:block;}
#container #contents.franchise_contents section h2 p{text-align:left;display: inline-block;background:#D80414;color:#fff;padding:0 15px;margin-right:10px;margin-bottom:0;}
.s_info{margin-top:10px;}
.arrow {position:relative;}
.arrow.test_1 {width:100%;height:100px;}
.arrow:after {content:''; position:absolute; width:0; height:0; border-style:solid;}
.arrow.test_1:after {border-width:50px 50px;}
.arrow.test_1:after {top:0; left:100%;z-index: 9;}

.arrow_2:before {
     content: "";
    border-top: 50px solid #ffffff;
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid transparent;
    transform: rotateZ(270deg) translateY(0) translateX(0%);
    -webkit-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -moz-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -ms-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -o-transform: rotateZ(270deg) translateY(0) translateX(0%);
    position: relative;
    display: inline-block;
    position:absolute;
    z-index:1;
}
.arrow_div{width:19%;float:left;margin-top: 25px;min-height:150px;margin-right: 10px;}
.arrow div{color:#fff;  padding-left: 25px;  text-align: center;font-weight:600;    padding-top: 35px;line-height: 1.2;}
.arrow div b{text-decoration: underline;font-size: 20px;}
.arrow_2 div{padding-left:50px;}

/*화살표bg*/
.bgcolor_01{ background:#F8B616;}
.bgcolor_02{ background:#BFC0C0;}
.bgcolor_03{ background:#B5B5B6;}
.bgcolor_04{ background:#AAABAB;}
.bgcolor_05{ background:#9FA0A0;}
.bgcolor_06{ background:#949495;}
.bgcolor_07{ background:#898989;}
.bgcolor_08{ background:#7D7D7D;}
.bgcolor_09{ background:#727171;}
.bgcolor_10{ background:#D90514;}

.bgcolor_01:after{ border-color:transparent transparent transparent #F8B616;}
.bgcolor_02:after{ border-color:transparent transparent transparent #BFC0C0;}
.bgcolor_03:after{ border-color:transparent transparent transparent #B5B5B6;}
.bgcolor_04:after{ border-color:transparent transparent transparent #AAABAB;}
.bgcolor_05:after{ border-color:transparent transparent transparent #9FA0A0;}
.bgcolor_06:after{ border-color:transparent transparent transparent #949495;}
.bgcolor_07:after{ border-color:transparent transparent transparent #898989;}
.bgcolor_08:after{ border-color:transparent transparent transparent #7D7D7D;}
.bgcolor_09:after{ border-color:transparent transparent transparent #727171;}
.bgcolor_10:after{ border-color:transparent transparent transparent #D90514;}

table.type07 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
  margin: 20px 0;
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #B4B4B5;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: middle;
  text-align: center;
  color: #fff;
  border-right:1px solid #ccc;
}
table.type07 th:last-child{border-right:0;}
table.type07 tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
 }
table.type07 td {
  width: 350px;
  padding: 10px;
  vertical-align: middle;
  text-align: center;
  border-bottom: 1px solid #ccc;
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
}

.font_color_{color:#F08C00;font-size:18px;font-weight:600;}
table.type07 td b{font-size:18px;}
.div_01_img{width:100%;margin:100px auto;}
.div_01_img ul li{width:49%;float:left;}
.div_01_img ul li:last-child{float:right;}
.div_01_img ul li img{width:100%;}
.div_02_img{width:92%;margin:60px auto;}
.div_02_img img{width:100%;}
.h2_text{margin:20px auto;font-size:25px;text-align:center;}
.div_01_text{width:100%;margin:20px auto;text-align:center;font-size:20px;}
#container #contents.franchise_contents #frcs7:after{background:none;height:auto;}
.font_color_bla{font-weight:600;color:#000;font-size:22px;}
.font_color_re{font-weight:600;color:#C90609;font-size:22px;}
.div_02_text{width:100%;margin:50px auto;text-align:center;}
.div_02_text li{width:182px;display: inline-block;}
.div_02_text li:nth-child(1){border:2px solid #F7B515;border-radius: 50%;padding: 45px 0;}
.div_02_text li:nth-child(2){border-top:3px dotted #ccc;padding: 20px 0;}
.div_02_text li:nth-child(3){border:2px solid #80C2AC;border-radius: 50%;padding: 45px 0;}
.div_02_text li:nth-child(4){display:block;width:100%;margin: 60px auto;}
.div_03_text{margin:10px  auto;}
.frcs6_ul li{width:50%;float:left;}
.frcs6_ul li:last-child{float:right;}
.div_03_text ul.text_box_ul li{width:100%;float:left;}
.div_03_text ul.text_box_ul li:nth-child(2){width:90%;}
.div_03_text ul.text_box_ul li:nth-child(1){width:7px;height:30px;margin-right:10px;background:#b60000;}
.div_03_text ul.text_box_ul li:last-child {}
.div_01_img .div_01_img_ul li{width:49.8%;}
#frcs7 .div_03_text .text_box_ul li h2{width:auto;float:left;}
.d_span{background: #80C2AC;color: #fff;position: relative;float: left;padding-left: 20px;padding-right:20px;width:auto;margin-top: 5px;margin-left: 5px;}
.d_span:after {top: 0;left: 100%;z-index: 9;border-width: 0px 0px 20px 10px;border-color: transparent transparent transparent #80c2ac;content: '';position: absolute;width: 0;height: 0;border-style: solid;}
.d_span:before {top: 0;left: 0;z-index: 9;border-width: 0px 0px 20px 10px;border-color: transparent transparent transparent #fff;content: '';position: absolute;width: 0;height: 0;border-style: solid;}
.div_03_text ul.text_box_ul_02 li:nth-child(1){width:20%;float:left;}
.div_03_text ul.text_box_ul_02 li:nth-child(2){width:79%;float:right;}
.text_box_ul_02{margin-top:10px;}
.web_table{width:97%;margin:5% auto;}
@media only screen and (max-width: 1250px){
#wrap {min-width:280px;}
#container #contents.franchise_contents #frcs1{max-width:90%;}
#container #contents.franchise_contents section h2{max-width:100%;}
.arrow_div{margin-right:1%;}
.arrow div{padding-top:13%;}
#container #contents.franchise_contents #frcs6,#container #contents.franchise_contents #frcs7{display:block;    padding-bottom: 20%;}
}
@media only screen and (max-width: 876px){
.d_span{float:none;margin-left:-14px;clear:both;padding-left:15px;}
.d_span:before{border-width:0;}
.div_03_text ul.text_box_ul li:nth-child(1){width:7px;margin-right:7px;}
}
@media only screen and (max-width: 800px){
#container #contents.franchise_contents #frcs1{max-width:100%;margin:auto;margin-left: 1%;min-height:1200px;}
.arrow_div{width:32.3%;}
.bgcolor_06:before {
    content: "";
    border-top: 50px solid #ffffff;
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid transparent;
    transform: rotateZ(270deg) translateY(0) translateX(0%);
    -webkit-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -moz-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -ms-transform: rotateZ(270deg) translateY(0) translateX(0%);
    -o-transform: rotateZ(270deg) translateY(0) translateX(0%);
    position: relative;
    display: inline-block;
    position: absolute;
    z-index: 1;}
.arrow.bgcolor_10:before ,.arrow.bgcolor_03:after,.arrow.bgcolor_04:before,.arrow.bgcolor_06:after,.arrow.bgcolor_07:before,.arrow.bgcolor_09:after{content:none;} 
.arrow.bgcolor_03 div,.arrow.bgcolor_04 div,.arrow.bgcolor_07 div{padding-left:50px;}
.arrow.bgcolor_10 div{padding-left:0}
table.type07 thead{border-right:0;border-left:0;}
table.type07 td{font-size:11px;width:auto;padding:0;line-height: 1.2; padding:10px 1px;}
table.type07 thead th,.font_color_{font-size:13px !important;margin-left: 3%;}
table.type07 td b{font-size:15px;}
.div_01_img ul li,.div_01_img ul li:last-child{float:none;width:100%;margin:5% auto;}
.div_01_img{margin:5% auto;}
table.type07 thead th:nth-child(1){width:30%;}
table.type07 thead th:nth-child(5){width:20%;}
#container #contents.franchise_contents section{width:98%;}
.h2_text{font-size:18px !important;}
.div_01_text{font-size:15px;}
.frcs6_ul li{width:100%;}
.div_01_img .div_01_img_ul li{width:100%;}
.div_03_text ul.text_box_ul_02 li:nth-child(2){float:none;width:100%;}
.div_03_text ul.text_box_ul_02 li:nth-child(1){width:40%;margin:auto !important;float:none;}
#frcs7 table.type07 thead th:nth-child(1){width:auto;}

}
@media only screen and (max-width: 760px){
.web_img{display:none;}
.m_img{display:block;}
.div_02_img{width:100%;}
#container #contents{padding:0;}
.div_02_text li:nth-child(2){width:100px;}

}
@media only screen and (max-width: 600px){
.arrow_2:before,.bgcolor_06:before {
    content: "";
    border-top: 30px solid #ffffff;
    border-left: 30px solid transparent;
    border-right: 30px solid transparent;
    border-bottom: 30px solid transparent;
}
.arrow_div{min-height: 60px;}
.arrow.test_1:after {
    border-width: 30px 30px;
}
.arrow div,.arrow div b,.arrow.bgcolor_03 div,.arrow.bgcolor_04 div,.arrow.bgcolor_07 div {
    padding-top:0;
    font-size: 13px;
    padding-left:15px;
    transform: translateY(-50%);-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-o-transform: translate(-50%,-50%);
}
.arrow.test_1 {
    height: 60px;
}
.arrow div{position: absolute;
    top: 50%;
    left: 50%;
    width: 90%;
    z-index: 99;}
.s_info {font-size: 11px;}   
#container #contents.franchise_contents #frcs1{min-height: auto;}
.div_02_text li{font-size:10px;width:162px;}
.font_color_bla{font-size:18px;}
.font_color_re{font-size:20px;}
.div_02_text li:nth-child(2){width:30px;}
.div_02_text li:nth-child(4){margin:5% auto;}
#container #contents.franchise_contents h3,#container #contents.franchise_contents section h2{font-size:17px;padding: 2% 0;}
#container #contents.franchise_contents section h2 p{padding:0 8px;font-size: 18px !important;}
.div_03_text ul.text_box_ul li:nth-child(1){height:20px;}
.div_02_text{margin:5% auto;}
.div_02_img{margin:10% auto;}
}
@media only screen and (max-width: 450px){
.arrow_div{width:49%;    margin-top: 20px;}
.arrow.bgcolor_02:after,.arrow.bgcolor_04:after,.arrow.bgcolor_08:after,.arrow.bgcolor_03:before,.arrow.bgcolor_05:before,.arrow.bgcolor_09:before,.arrow.bgcolor_10:after   {content:none;} 
.arrow.bgcolor_03:after,.arrow.bgcolor_09:after  {
    content: "";
    border-width: 30px 30px;
}
.arrow.bgcolor_04:before,.arrow.bgcolor_10:before{
    content: "";
    border-top: 30px solid #ffffff;
    border-left: 30px solid transparent;
    border-right: 30px solid transparent;
    border-bottom: 30px solid transparent;
}
.s_info {
    height: 120px;
    overflow: scroll;
    padding-bottom: 7%;
    position: relative;
    z-index: 9;
}
.arrow div, .arrow div b, .arrow.bgcolor_03 div,.arrow.bgcolor_05 div,.arrow.bgcolor_07 div,.arrow.bgcolor_09 div{padding-left:0;}
.arrow.bgcolor_02 div,.arrow.bgcolor_04 div,.arrow.bgcolor_06 div,.arrow.bgcolor_08 div{padding-left:18%;    width: 78%;}
#container #contents.franchise_contents #frcs1 div:last-child .s_info{margin-bottom:10%;}
.arrow div{font-weight:500;}

.div_01_text{font-size:13px;width:78%;}
.div_02_text li:nth-child(1),.div_02_text li:nth-child(3){padding:10% 0;}
.div_02_text li{width:34%;}
.div_02_text li:nth-child(2){width:5%;}
.font_color_bla {
    font-size: 13px;
}
.font_color_re {
    font-size: 15px;
}
.div_02_text,.div_03_text{font-size:12px;}

}
@media only screen and (max-width:360px){
.div_02_text li{width:37%;}
}
@media only screen and (max-width: 280px){
table.type07 td{padding:10px 0;font-size:10px;}
table.type07 thead th, .font_color_ {
    font-size: 10px !important;}
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
			<span><em>창업정보</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container">
		<section id="contents" class="franchise_contents">
			<h2 class="cont_tit t_center" style="display:none;">창업정보</h2>
			<ul id="rightFixedNav" class="navBgBlack" style="display:none;">
				<li class="frcs1 active"><a href="#contents" class="rnb_home"><span>창업정보</span></a></li>
				<li class="frcs2"><a href="#frcs2"><span>성공스토리</span></a></li>
				<li class="frcs3"><a href="#frcs3"><span>굽네치킨의 장점</span></a></li>
				<li class="frcs4"><a href="#frcs4"><span>차별화된 조리방법</span></a></li>
				<!-- <li class="frcs5"><a href="#frcs5"><span>본사지원시스템</span></a></li> -->
				<li class="frcs6"><a href="#frcs6"><span>창업지원시스템</span></a></li>
				<li class="frcs7"><a href="#frcs7"><span>배송 시스템</span></a></li>
				<li class="frcs8"><a href="#frcs8"><span>생산 시스템</span></a></li>
				<li class="frcs9"><a href="#frcs9"><span>마케팅 운영전략</span></a></li>
				<li class="frcs10"><a href="#frcs10"><span>창업절차</span></a></li>
				<li class="frcs11"><a href="#frcs11"><span>굽네 사업현황</span></a></li>
				<!-- <li class="frcs9"><a href="#frcs9"><span>인테리어</span></a></li> -->

			</ul>
           
			<section id="frcs1" class="section">
				 <h3>창업 프로세스 /  가맹점 개설 비용</h3>
                 <h2><p>1</p>창업 프로세스</h2>
                 <div class="m_img" style="margin-top:5%;"><img src="/resources/images/contents/franchise/new/img_005_5.png" width="100%"></div>
                 <div class="web_img">
                    <div class="arrow_div">
                        <div class="arrow test_1 bgcolor_01"><div><b>01</b> 창업연구소 1차 상담</div></div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_02"><div><b>02</b> 창업승인팀 2차<br> 상담</div></div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_03"><div><b>03</b> 스타매장 교육<br>&nbsp;&nbsp;&nbsp; (적응교육 2일)</div></div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_04"><div><b>04</b> 지역 팀장 3차 상담</div></div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_05"><div><b>05</b> 시장조사 및 점포 개발</div></div>
                        <div class="s_info">- 상권/입지 분석 <br>
                        - 영업구역 확인 및 점포 확정</div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 bgcolor_06"><div><b>06</b> 가맹 계약</div></div>
                        <div class="s_info">- 나이스 다큐 가입 및 전자서명 <br>
                        :15일간 3회 체크<br>
                        <span style="color:#DD0003">정보공개서 수령 후 15일<br> 계약서 작성</span><br>
                        - 가맹비/교육비 예치
                        </div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_07"><div><b>07</b> 실측 및 공사 진행</div></div>
                        <div class="s_info">- 점포 실측 (철거 완료 후 )<br>
                        - 도면 작성 및 협의 확정<br>
                        - 인테리어 업체 입찰 후 <br>
                        업체 선정<br>
                        - 공사 진행(15일~25일 )<br>
                        - 각종 인허가 신청 <br>
                        &nbsp;&nbsp;(공사 중 완료)
                        </div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_08"><div><b>08</b> 가맹점 입문 교육</div></div>
                        <div class="s_info">
                            - 입문교육<br>
                            &nbsp;&nbsp;(서울 아카데미 4박5일)<br>
                            - 오픈 행사 준비 <br>
                            &nbsp;&nbsp;(홍보물, 판촉물)
                        </div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_09"><div><b>09</b> 장비설치 및 집기류 입고</div></div>
                        <div class="s_info">
                            - 오븐기 설치 <br>
                            &nbsp;&nbsp;(전기 or 가스[배관설치])<br>
                            - 주방 장비 설치 <br>
                            &nbsp;&nbsp;(냉장/냉동고,작업대,실온/냉트롤리 등)<br>
                            - 집기류 발주 <br>
                            &nbsp;&nbsp;(그리드,C팬, 믹싱볼, 가위, 집게, 오븐장갑 등)
                        </div>
                    </div>
                    <div class="arrow_div">
                        <div class="arrow test_1 arrow_2 bgcolor_10"><div><b>10</b> 오픈</div></div>
                        <div class="s_info">
                            - 초도물품 발주<br>
                            - AM 오픈 교육
                        </div>
                    </div>
                    </div>
			</section>
			
			<section id="frcs2" class="section">
                 <h2><p>2</p>가맹점 개설 비용</h2>
                 <div class="web_table">
                 <div class="div_03_text">
                 <ul class="text_box_ul">
                        <li></li>
                        <li style="float:left;width:auto;">
                            <h2>투자 비용 산출 내역</h2>
                        </li>
                        <li style="float:right;width:auto;margin-top: 10px;">(단위:만원)</li>
                    </ul>
                </div>
                <div class="web_img">
                 <table class="type07">
                  <thead>
                      <tr>
                        <th scope="cols" colspan="2">구분</th>
                        <th scope="cols">15평<br>(Delivery)</th>
                        <th scope="cols">20평<br>(Beer Pub)</th>
                        <th scope="cols">25평<br>(Beer Pub)</th>
                        <th scope="cols">비고</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td rowspan="6" >가입비</td>
                      </tr>
                      <tr>
                          <td>가맹비</td>
                          <td>500</td>
                          <td>500</td>
                          <td>500</td>
                          <td>VAT 별도</td>
                      </tr>
                      <tr>
                          <td>교육비</td>
                          <td>200</td>
                          <td>200</td>
                          <td>200</td>
                          <td>VAT 별도</td>
                      </tr>
                      <tr>
                          <td>보증금</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>로열티</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>인테리어 감리비</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td>없음</td>
                          <td></td>
                      </tr>
                      <tr>
                        <td rowspan="12" >인테리어 공사</td>
                      </tr>
                      <tr>
                          <td>인테리어</td>
                          <td>3,100</td>
                          <td>3,800</td>
                          <td>4,500</td>
                          <td>3.3m<sup>2</sup>당&erDot;<br>180~200만원 기준</td>
                      </tr>
                      <tr>
                          <td>기타공사</td>
                          <td colspan="3">전기,가스 증설 및 설치 공사, 철거 공사, 의탁자, 냉/난방기기, 화장실 공사, 폴딩도어 시공, 전면 교체, 창호 교체, 외부 창고 설치, 워크인 쿨러, 배수 별도 공사, 그리스텝 설치 공사, 온수기, DID구입</td>
                          <td>직접 비용<br>(점포에 따라 상이함)</td>
                      </tr>
                      <tr>
                          <td>간판 및 유리 시트</td>
                          <td>350</td>
                          <td>400</td>
                          <td>500</td>
                          <td>점포 환경에 따라 상이함</td>
                      </tr>
                      <tr>
                          <td  rowspan="4">오븐<br>(10단/6단 기준)</td>
                          <td  rowspan="4">2,799</td>
                          <td  rowspan="4">2,799</td>
                          <td  rowspan="4">2,799</td>
                      </tr>
                      <tr>
                          <td>가스 공사 별도</td>
                      </tr>
                      <tr>
                          <td>오븐 10단 2대 기준</td>
                      </tr>
                      <tr>
                          <td>2,930</td>
                      </tr>
                      <tr>
                          <td>주방 장비, 집기</td>
                          <td>1,150</td>
                          <td>1,210</td>
                          <td>1,210</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>배달 용품</td>
                          <td>180</td>
                          <td>180</td>
                          <td>180</td>
                          <td>오토바이 1대 기준</td>
                      </tr>
                      <tr> 
                          <td>POS 및 통신 장비</td>
                          <td>180</td>
                          <td>250</td>
                          <td>250</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td><b>합계</b></td>
                          <td><span class="font_color_">7,759</span></td>
                          <td><span class="font_color_">8,639</span></td>
                          <td><span class="font_color_">9,439</span></td>
                          <td></td>
                      </tr>
                      
                  </tbody>
                </table>
                <div class="font_color_" style="font-size:100%;font-weight: 500;">
                    *별도 품목: 가스, 철거, 전기승압, 냉/난방, 닥트 설비등<br>
                    *상기 금액은 점포 특성에 따라 변동 될 수 있습니다.<br>
                    *지역/상권에 따라 일부 추가 비용이 발생할 수 있습니다.
                </div>
                </div>
                <div class="m_img">
                <img src="/resources/images/contents/franchise/new/img_005_3.png" width="100%">
                </div>
                </div>
                <div class="div_01_img">
                    <ul>
                        <li><img src="/resources/images/contents/franchise/new/img_001.png"></li>
                        <li><img src="/resources/images/contents/franchise/new/img_002.png"></li>
                    </ul>
                </div>
			</section>
			
			<section id="frcs3" class="section">
				<h3>회사소개</h3>
				<h2><p>1</p>사업 현황</h2>
                <div class="div_02_img">
                    <img src="/resources/images/contents/franchise/new/img_004.png" class="web_img">
                    <img src="/resources/images/contents/franchise/new/img_004.png" class="m_img">
                </div>
                <h2><p>2</p>해외 매장</h2>
                <div>
                    <div class="font_color_ h2_text">굽네 치킨의 해외 진출</div>
                    <div class="div_01_text">
                    굽네치킨은 홍콩을 시작으로 총 9개국에 30개 해외매장을 운영하고 있습니다.<br>
                    한국을 넘어 세계인의 입맛을 사로잡으며 글로벌 치킨 브랜드로 도약하고 있습니다.
                    </div>
                    <ul class="div_02_text">
                        <li>
                            <div class="font_color_bla">해외 진출</div>
                            <div class="font_color_re">9개국</div>
                            (2021년 7월 기준)
                        </li>
                        <li></li>
                        <li>
                            <div class="font_color_bla">해외 매장</div>
                            <div class="font_color_re">총 30개</div>
                            (2021년 7월 기준)
                        </li>
                        <li><img src="/resources/images/contents/franchise/new/img_005.png" width="100%"></li>
                    </ul>
                </div>
             
			</section>
		
			
			<section id="frcs6" class="section">
				<h3>굽네치킨만의 특별함</h3>
                <h2><p>1</p>차별화된 오븐구이 치킨 & 간편 조리 시스템</h2>
                <div class="div_03_text">굽네치킨은 오븐에 구워 치킨 본연의 맛을 즐길 수 있으며, 촉촉한 육즙이 살아 잇어 깊은 감칠맛과 불맛을 느낄 수 있습니다.</div>
				<div class="div_02_img">
                    <img src="/resources/images/contents/franchise/new/img_006.png" width="100%">
                </div>
                <ul class="frcs6_ul div_01_img">
                    <li>
                        <h2><p>2</p>자체 생산 시스템</h2>
                        <div class="div_03_text">원료 관리부터 도계, 가공, 양념, 포장까지 굽네치킨의 생산에는 빈틈이 없습니다.</div>
                    </li>
                    <li>
                        <img src="/resources/images/contents/franchise/new/img_007_1.png" width="100%">
                    </li>
                </ul>
                <div class="div_01_img">
                    <h2><p>3</p>신선 배송 시스템</h2>
                    <div class="div_02_text">굽네치킨은 원료육을 주 6일 배송으로 가맹점에 공급하기 때문에 가맹점 사장님께서 신선한 계육을 받아 보실 수 있으며, 안정적인 재고 관리를 할 수 있습니다.<br>
                     또한 전국 7개의 물류센터 김포, 용인, 계룡, 정읍, 광주, 김해, 가산(구미)을 보유해 전국 유통망을 확보하고 있어 고객들에게<br> 항상 신선한 제품을 공급할 수 있는 경쟁력을 확보하고 있습니다.
                    </div>
                    <div class="div_01_img"><img src="/resources/images/contents/franchise/new/img_008.png" width="100%"></div>
                </div>
			</section>
			<section id="frcs7" class="section">
				<h3>체계적인 교육 시스템 / 마케팅 지원 시스템</h3>
                <h2><p>1</p>체계적인 교육 시스템</h2>
                <div class="div_03_text">굽네치킨은 교육, 훈련을 통해 사장님이 '장사의 전문가'가 될 수 있도록 운영에 필요한 지식과 노하우를 전수하고 있습니다.</div>
                <div class="web_img">
                <table class="type07">
                  <thead>
                      <tr>
                        <th scope="cols">구분</th>
                        <th scope="cols">교육내용</th>
                        <th scope="cols">교육방식</th>
                        <th scope="cols">기한</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                          <td>적응 교육</td>
                          <td>스타교육 매장에서 실제 매장경험</td>
                          <td>실습교육</td>
                          <td>입문 교육 이전</td>
                      </tr>
                     <tr>
                          <td>입문 교육</td>
                          <td>회사소개/마인드함양/매뉴얼/위생/홍보 및 서비스 등 매장 운영을 위한 교육</td>
                          <td>이론/실습교육</td>
                          <td>영업 개시 이전</td>
                      </tr>
                      <tr>
                          <td>오픈 교육</td>
                          <td>실제 운영 매장에서 지역 담당자가 제품 조리 및 운영 실무 교육</td>
                          <td>이론/실습교육</td>
                          <td>영업 개시 후</td>
                      </tr>
                      <tr>
                          <td>재계약 교육</td>
                          <td>Q,S,C 기본 교육</td>
                          <td>이론/실습교육</td>
                          <td>개업 2년 후</td>
                      </tr>
                      <tr>
                          <td>특별 교육</td>
                          <td>신메뉴 출시, 조리 매뉴얼 변경, 계약 미준수로 교육이 필요한 경우 등</td>
                          <td>이론/실습교육</td>
                          <td>별도 공지</td>
                      </tr>
                  </tbody>
                </table>
                </div>
                <div class="m_img">
                <img src="/resources/images/contents/franchise/new/img_005_3.png" width="100%">
                </div>
                <div class="div_03_text">
                    <ul class="text_box_ul">
                        <li></li>
                        <li>
                            <h2>경영 지원 서비스 : A.M(Area manager) 제도</h2>
                        </li>
                        <li class="div_03_text">매장 오픈 후 신규 매장 안정화를 담당했던 창업승인팀에서 해당 지역을 관리하는 A.M으로 매장 관리가 인수인계 되어 매장의 Q,C,S(Quality, Clean, Service) 점검 및 지도 뿐 아니라 가맹점의 지속적인 매출 항상을 도와드립니다.
                            <div  class="font_color_" style="font-size:100%;font-weight: 500;">▶ A,M(Area manager)란? 지역 내 가맹점을 관리하는 본사 담당자</div>
                        </li>
                    </ul>
                    <div class="div_01_img" style="margin-top:0;">
                        <ul class="div_01_img_ul">
                            <li><img src="/resources/images/contents/franchise/new/img_009.png" width="100%"></li>
                            <li><img src="/resources/images/contents/franchise/new/img_010.png" width="100%"></li>
                        </ul>
                    </div>
                </div>
                <h2><p>2</p>마케팅 지원 시스템</h2>
                <div class="div_03_text">
                    <ul class="text_box_ul">
                        <li></li>
                        <li>
                            <h2>빅 모델 기용, 적극적 TV광고를 통한 브랜드 인지도 확보</h2>
                        </li>
                        <li class="div_03_text">굽네치킨은 10대, 20대를 공략하기 위한 모델을 기용해 마케팅 활동을 펼치고 있습니다.
                        </li>
                    </ul>
                    <div class="div_01_img" style="margin-top:0;"><img src="/resources/images/contents/franchise/new/img_011.png" width="100%"></div>
                </div>
                <div class="div_03_text">
                    <ul class="text_box_ul">
                        <li></li>
                        <li>
                            <h2>젊은 타겟층에 효과적인 마케팅 활동 강화</h2>
                            <div class="d_span">굽네치킨x성훈 웹툰 공개/프리드로우 웹툰 광고/챌린지 이벤트</div>
                        </li>
                        <li class="div_03_text">굽네치킨은 10대, 20대를 공략하기 위한 모델을 기용해 마케팅 활동을 펼치고 있습니다.
                        </li>
                    </ul>
                    <div class="div_01_img" style="margin:0;"><img src="/resources/images/contents/franchise/new/img_012.png" width="100%"></div>
                    <div>
                        굽네치킨은 유명 크리에이터를 활용한 바이럴 영상, 웹툰 PPL이나 영타겟 선호 콘텐츠를 활용한 마케팅 등 차별화된 디지털 마케팅을 진행하고 있습니다. 이러한 노력으로 볼케이노는 매운 맛 치킨의 대표 메뉴로서
                        치밥 열풍을 일으켰고, 갈비천왕은 최초로 치킨을 밥과 함께 즐기는 일품요리의 개념으로 끌어올리는 등 치킨 시장의 판도를 바꾸어 놓았습니다.
                        현재 굽네치킨은 디지털 마케팅의 강자로서 타사에 비해 월등하게 높은 브랜드 평판 지수를 확보하며 트렌드 중심에 서 있습니다.
                    </div>
                </div> 
                <br>
                <div class="div_03_text">
                    <ul class="text_box_ul">
                        <li></li>
                        <li>
                            <h2>레시피 마케팅</h2>
                            <div class="d_span">갈비천왕 소보루 덮밥/ 볼케이노 밥피자/ 볼빔면</div>
                        </li>
                    </ul>
                    <ul class="text_box_ul_02">
                        <li class="div_01_img" style="margin:0;"><img src="/resources/images/contents/franchise/new/img_013.png" width="100%"></li>
                        <li>
                            굽네치킨은 유명 크리에이터를 활용한 바이럴 영상, 웹툰 PPL이나 영타겟 선호 콘텐츠를 활용한 마케팅 등 차별화된 디지털 마케팅을 진행하고 있습니다. 이러한 노력으로 볼케이노는 매운 맛 치킨의 대표 메뉴로서
                            치밥 열풍을 일으켰고, 갈비천왕은 최초로 치킨을 밥과 함께 즐기는 일품요리의 개념으로 끌어올리는 등 치킨 시장의 판도를 바꾸어 놓았습니다.
                            현재 굽네치킨은 디지털 마케팅의 강자로서 타사에 비해 월등하게 높은 브랜드 평판 지수를 확보하며 트렌드 중심에 서 있습니다.
                        </li>
                    </ul>
                </div> 
			</section>
			<!--  
			<section id="frcs9" class="section">
				<div class="frcs_contents_wrap">
					<h3>인테리어</h3>
					<ul>
						<li class="item">
							<a href="#"><img src="/resources/images/contents/franchise/img_section1_1.jpg" data-img="interior_layer_img1" alt="어느어느점1"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section1_2.jpg" data-img="interior_layer_img2" alt="어느어느점2"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section1_3.jpg" data-img="interior_layer_img3" alt="어느어느점3"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section1_4.jpg" data-img="interior_layer_img4" alt="어느어느점4"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section1_5.jpg" data-img="interior_layer_img5" alt="어느어느점5"/></a>
						</li>
						<li class="item">
							<a href="#" class="interior_W100"><img src="/resources/images/contents/franchise/img_section2_1.jpg" data-img="interior_layer_img6" alt="어느어느점6"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section2_2.jpg" data-img="interior_layer_img7" alt="어느어느점7" /></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section2_3.jpg" data-img="interior_layer_img8" alt="어느어느점8" /></a>
						</li>
						<li class="item">
							<a href="#"><img src="/resources/images/contents/franchise/img_section3_1.jpg" data-img="interior_layer_img9" alt="어느어느점9"/></a>
							<a href="#"><img src="/resources/images/contents/franchise/img_section3_2.jpg" data-img="interior_layer_img10" alt="어느어느점10"/></a>
							<a href="#" class="interior_W100"><img src="/resources/images/contents/franchise/img_section3_3.jpg" data-img="interior_layer_img11" alt="어느어느점11"/></a>
							<a href="#" class="interior_W100"><img src="/resources/images/contents/franchise/img_section3_4.jpg" data-img="interior_layer_img12" alt="어느어느점12"/></a>
						</li>
					</ul>
				</div>
			</section>
			-->

		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
	
	<!-- 인테리어 레이어 갤러리 -->
	<!--  
	<div class="interior_layer franchise_layer">
		<div class="interior_layer_box">
			<!-- Swiper -->
			<!--
		    <div class="gallery-top">
		    	<a href="#" class="gallery_close"></a>
		    	<a href="#" class="gallery_prev"></a>
		    	<a href="#" class="gallery_next"></a>
		    	<img src="/resources/images/contents/franchise/interior/interior_layer_img1.jpg"   alt="" />
		    </div>
		    <div class="gallery-thumbs">
	            <div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb1.jpg" data-img="interior_layer_img1" alt="어느어느점1" /></a></div>
	            <div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb2.jpg" data-img="interior_layer_img2" alt="어느어느점2"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb3.jpg" data-img="interior_layer_img3" alt="어느어느점3"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb4.jpg" data-img="interior_layer_img4" alt="어느어느점4"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb5.jpg" data-img="interior_layer_img5" alt="어느어느점5"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb6.jpg" data-img="interior_layer_img6" alt="어느어느점6"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb7.jpg" data-img="interior_layer_img7" alt="어느어느점7"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb8.jpg" data-img="interior_layer_img8" alt="어느어느점8"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb9.jpg" data-img="interior_layer_img9" alt="어느어느점9"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb10.jpg" data-img="interior_layer_img10"  alt="어느어느점10" /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb11.jpg" data-img="interior_layer_img11" alt="어느어느점11"  /></a></div>
	        	<div class="item" ><a href=""><img src="/resources/images/contents/franchise/interior/interior_layer_thumb12.jpg" data-img="interior_layer_img12" alt="어느어느점12"  /></a></div>
		    </div>
		</div>
	</div>
	-->
	<script>
		//성공스토리 슬라이드
		$(document).ready(function(){
			$(".frcs2_slider").owlCarousel({				 
				navigation : true, 
			    slideSpeed : 400,
			    //paginationSpeed : 400,
			    singleItem:true
			});
		});
	</script>
<script src="/resources/js/wscript/franchise/franchise.js?v=<%=System.currentTimeMillis() %>"></script>
<script>
var params = document.location.search;
var page = params.getValueByKey("page");
if (page == "") {
	page = "1";
}
var franchise = new CNTLib.Franchise("#contents","write");
</script>


</body>
</html>