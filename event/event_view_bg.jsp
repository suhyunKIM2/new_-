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
				<li><a href="/event/win_list.jsp"></a></li>
			</ul>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container" >
		<section id="contents" >
			<h2 class="cont_tit t_center">이벤트 </h2>
			<!-- 
				<h2 class="cont_tit t_center">성공스토리</h2>  
				<h2 class="cont_tit t_center">성공 노하우</h2>  
				<h2 class="cont_tit t_center">우수사례</h2>
				<h2 class="cont_tit t_center">매뉴얼</h2>  
				<h2 class="cont_tit t_center">건의사항</h2>  
				<h2 class="cont_tit t_center">고객의 소리</h2>    
			-->
			<div class="notice_table">
				<table class="table family_table list_view">
					<caption>이벤트</caption>
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
							<th class="t_left"><span>불금치킨 선착순 할인 프로모션</span></th>
							<th><i>2022-05-11</i></th>
						</tr>
					</thead>
					<tbody id="view_item">
						<tr>
							<td class="table_img_view" colspan="2">
								<div>
								<img src="https://www.goobne.co.kr//resources/images/contents/event/220510_bgchicken/img_1.jpg" style="margin: 0 auto;width:100%;display:block;">
								<img src="https://www.goobne.co.kr//resources/images/contents/event/220510_bgchicken/img_2_4.jpg" style="margin: 0 auto;width:100%;display:block;">
								<ul style="margin: 0 auto;padding: 2em 0;width: 100%;text-align: center;background-color: #381770;list-style: none;">
									<li>
										<!-- 구매하기 -->
										<a href="javascript:saveMem();"><img src="https://www.goobne.co.kr/resources/images/contents/event/220510_bgchicken/btn_on_2.png" id="onImg" style="width:55%;"></a>
									</li>
									<li>
										<!-- 회원가입후혜택받기 -->
										<a href="/member/login.jsp?target=eventCurry"><img src="https://www.goobne.co.kr/resources/images/contents/event/220510_bgchicken/btn_off_2.png"  id="offImg" style="width:55%;display:none;"></a>
									</li>
									<li>
										<!-- comming soon -->
										<img src="http://www.goobne.co.kr/resources/images/contents/event/220510_bgchicken/btn_wait.png" id="commingImg" style="width:55%;display:none;">
									</li>
								</ul>
								</div>
							</td>
						</tr>
						<!--  
						<tr><td colspan="4">작성된 글이 없습니다.</td></tr>
						-->
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
	if ('06031100'  > nowtime){ //다음 이벤트날로 지정 (이벤트 시작 시간보다 이전일경우) 
		$("#onImg").hide();
		$("#offImg").hide();
		$("#commingImg").show();
		
	}else{
		if(UserInfo.user_no!=null && UserInfo.user_no !=""){
			$("#onImg").show();
			$("#offImg").hide();
		}else{
			$("#onImg").hide();
			$("#offImg").show();
		}
		$("#commingImg").hide();
	}
	
});


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



function goMemEvent(){
	if(UserInfo.user_no!=null && UserInfo.user_no !=""){
		window.location.href="/event/event_view_curry_mem.jsp";
	}else{
		window.location.href="/member/login.jsp?target=eventCurry";
	} 	
}

function saveMem(){
	var param = [];
	param.push("id=Event");
	param.push("ac=insertEventMem");
	param.push("event_no=62369");
	param.push("user_id="+UserInfo.user_id);

	var Now = new Date(); // 현재 날짜 및 시간
	var nowMonth = Now.getMonth() + 1; // 월
	var nowDay = Now.getDate(); // 일
	var nowHour = Now.getHours(); // 시
	var nowMins = Now.getMinutes(); // 분
	
	$.ajax({
		type : 'get',
		url : "/get.do",
		data : param.join('&'),
		dataType : 'jsonp',
		contentType : 'application/json; charset=utf-8',
		success : function(data) {
		
			 window.open('https://goobneevent.multicon.co.kr');
			// alert("구매링크");ㅣ			
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