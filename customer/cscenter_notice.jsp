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
			<span><em>고객지원센터</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container" >
		<section id="contents" >
			<h2 class="cont_tit t_center">공지사항</h2>
			
			<div class="form_standard notice_table">
				<form name="searchform">
				<div class="list_search_wrap">
					<select name="sSel" id="sSel">
						<option value="name">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>					
					<p class="list_search_input"><input type="text" name="sText" id="sText" value="" /><a href="javascript:void(0);" class="btn_mid btn_blk btn_search">검색</a></p>	
				</div>
				</form>
				<table class="table family_table">
					<caption>공지사항 테이블</caption>
					<colgroup>
						<col style="width:10%;">
						<col>
						<col style="width:15%;">
						<col style="width:15%;">
						<col style="width:15%;">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
							<th>작성자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody id="notie_list">
						<tr>
							<td colspan="5"></td>
						</tr>
					</tbody>
				</table>
				<ul class="pager">
					
				</ul>
				
			</div>
			
		</section>
	</div>
	<!-- // container -->
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
<script src="/resources/js/wscript/customer/notice.js?v=<%=System.currentTimeMillis() %>"></script>
<script>
var GnHome = "<%=Const.GnHome%>";
var GnHomeImg = "<%=Const.GnHomeImg %>";
var bbscode = <%=Const.BBSNotice%>;
var params = document.location.search;
var page = params.getValueByKey("page");
var sSel = params.getValueByKey("sSel");
var sText = params.getValueByKey("sText");
if (sSel != "" && sSel != null) {
	$("#sSel").val(sSel);
	if (sText != "" && sText != null) {
		$("#sText").val(sText);
	}
}

if (page == "") {
	page = "1";
}
var notice = new CNTLib.Notice("#contents","list");
</script>
</body>
</html>