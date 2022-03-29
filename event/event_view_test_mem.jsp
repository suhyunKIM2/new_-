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
</head>
<style>
	 *{margin: 0}
	body {background-color: #f5f5f5;}
	.event_div {position: relative;margin: 0.5% auto 0;max-width: 667px;}
	.absolute {position: absolute;cursor:pointer;}
	input{top: 78%;left: 11%;}
	.btn {max-width: 330px;top: 82.8%;left: 26.5%;}
	.offImg {display: none;}  
</style>
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
			<span><em>이벤트</em> > <i class="current_page"></i></span>
		</div>
		
		<div class="page_nav_wrap_mobile" >
			<h5 class="current_page"></h5>
			<ul>
				<li><a href="/event/event_list.jsp">이벤트</a></li>
				<li><a href="/event/win_list.jsp">테스트!!!</a></li>
			</ul>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container" >
		<section id="contents" >
			<h2 class="cont_tit t_center">이벤트</h2>
			<!-- 
				<h2 class="cont_tit t_center">성공스토리</h2>  
				<h2 class="cont_tit t_center">성공 노하우</h2>  
				<h2 class="cont_tit t_center">우수사례</h2>
				<h2 class="cont_tit t_center">매뉴얼</h2>  
				<h2 class="cont_tit t_center">건의사항</h2>  
				<h2 class="cont_tit t_center">고객의 소리</h2>    
			-->
			<div class="">
				<table class="table family_table list_view">
					<caption>레시피소개</caption>
					<colgroup>
						<col>
						<col style="width:30%;">
					</colgroup>
					<thead id="view_head">
						<!-- <tr>
							<th class="t_left"><span>EXO시우민 망고치밥</span></th>
							<th><i>2016-04-01</i></th>
						</tr> -->
						<tr>
							<th class="t_left"><span>굽네 오븐 바사삭 & 찍먹커리 세트 사전구매 이벤트</span></th>
							<th><i>2022-03-30</i></th>
						</tr>
					</thead>
					<tbody id="view_item">
						<tr>
							<td class="" colspan="2">
								<div class="event_div">
									<img src="https://www.goobne.co.kr/upload/bbs/220328_event_warning.png">
									<div>
										<input class="absolute" type="checkbox" id="chk" name="동의하기" onchange="chkChg();" >
										<img class="absolute btn" id="imgBtn" src="https://www.goobne.co.kr/upload/bbs/220328_event_warning_btn_off.png" onclick="saveMem();">
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="t_center standard_btn_wrap">
					<a href="javascript:listdt();" class="btn_huge btn_blk">목록가기</a>
				</div>
			</div>
			
		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
<script src="/resources/js/wscript/event/event.js?v=<%=System.currentTimeMillis() %>"></script>
<script>
$(document).ready(function(){
	chkChg();
});
apiutil.chkUserInfo();

var GnHome = "<%=Const.GnHome%>";
var GnHomeImg = "<%=Const.GnHomeImg %>";
var bbscode = <%=Const.BBSEventing%>;
var params = document.location.search;
var dt = params.getValueByKey("dt");
var page = params.getValueByKey("page");
//var events = new CNTLib.Events("#contents","view");

var listdt = function(){
	window.location.href="/event/event_list.jsp?page="+page;
}

function chkChg(){
	var checked = $('#chk').is(':checked');
	if(checked){
		$("#imgBtn").attr("src","https://www.goobne.co.kr/upload/bbs/220328_event_warning_btn_on.png").css('cursor','pointer');
		$("#imgBtn").attr("onclick","saveMem();");
	}else{
		$("#imgBtn").attr("src","https://www.goobne.co.kr/upload/bbs/220328_event_warning_btn_off.png").css('cursor','default');
		$("#imgBtn").removeAttr("onClick");
	}
}

function saveMem(){
	var param = [];
	param.push("id=Event");
	param.push("ac=insertEventMem");
	param.push("event_no=60905");
	param.push("user_id="+UserInfo.user_id);
	
	$.ajax({
		type : 'get',
		url : "/get.do",
		data : param.join('&'),
		dataType : 'jsonp',
		contentType : 'application/json; charset=utf-8',
		success : function(data) {

			var Now = new Date(); // 현재 날짜 및 시간
			var nowMonth = Now.getMonth() + 1; // 월
			var nowDay = Now.getDate(); // 일
			var nowHour = Now.getHours(); // 시
			var nowMins = Now.getMinutes(); // 분

			nowMonth = pluszero(nowMonth); //만들었던 함수 적용
			nowDay = pluszero(nowDay);
			nowHour = pluszero(nowHour);
			nowMins = pluszero(nowMins);

			var nowtime = nowMonth + nowDay + nowHour + nowMins; // 월+일+시+분
			 if (nowtime >= 03290915 && nowtime <03290916){
				 window.open('https://www.giftishow.com/brand/brandGoodsDetail.mhows?goods_seq=G00001301557&brand_no=744')
			 }else if (nowtime >= 03290916  && nowtime <03290917){
				 window.open('https://www.giftishow.com/brand/brandGoodsDetail.mhows?goods_seq=G00001301559&brand_no=744')
			}else if (nowtime >= 03290917  && nowtime <03290918){
				 window.open('https://www.giftishow.com/brand/brandGoodsDetail.mhows?goods_seq=G00001301562&brand_no=744')
			}
		  }
	});
}



function pluszero(time){
    var time = time.toString(); // 시간을 숫자에서 문자로 바꿈
    if(time.length < 2){ //2자리 보다 작다면
        time = '0' + time; //숫자앞 0을 붙여줌
        return time; //값을 내보냄
	}else{
	    return time; //2자리라면 값을 내보냄
	}
}
</script>
</body>
</html>