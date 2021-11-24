<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.cntt.beans.UserLogBean"%>
<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.JspUtils"%>
<% 
String UserIdx = "";
String UserId = "";
String UserName = "";
String UserTel = "";
String UserEmail = "";
String UserBmail = "";
String UserLevel = "";
String UserBranch = "";

// App
String useragent = request.getHeader("User-Agent");
System.out.println(useragent);
String formtarget = "gnordernet";
String target = "gnorder";
if ( useragent != null ) {
	if ( useragent.toUpperCase().indexOf("APP-GOOBNE-ANDROID") != -1 || useragent.toUpperCase().indexOf("APP-GOOBNE-IPHONE") != -1 ) { // android app, ios app
		formtarget = "_self";
		target = "_self";
	}
}

Cookie[] cookie = request.getCookies();
if(cookie != null){
	for(int i=0; i<cookie.length; i++){
		System.out.println(i+" - "+cookie[i].getName()+"="+cookie[i].getValue());
		if(Const.UserIdx.equals(cookie[i].getName())){
			UserIdx = cookie[i].getValue(); 
			if(UserIdx != null){
				UserIdx = java.net.URLDecoder.decode(UserIdx, "UTF-8");
				Const.UserIdxDt = java.net.URLDecoder.decode(UserIdx, "UTF-8");
			}
		}
		if(Const.UserId.equals(cookie[i].getName())){
			UserId = cookie[i].getValue(); 
			if(UserId != null){
				UserId = java.net.URLDecoder.decode(UserId, "UTF-8");
				Const.UserIdDt = java.net.URLDecoder.decode(UserId, "UTF-8");
			}
		}
		if(Const.UserName.equals(cookie[i].getName())){
			UserName = cookie[i].getValue(); 
			if(UserName != null){
				UserName = java.net.URLDecoder.decode(UserName, "UTF-8");
				Const.UserNameDt = java.net.URLDecoder.decode(UserName, "UTF-8");
			}
		}
		if(Const.UserTel.equals(cookie[i].getName())){
			UserTel = cookie[i].getValue(); 
			if(UserTel != null){
				UserTel = java.net.URLDecoder.decode(UserTel, "UTF-8");
				Const.UserTelDt = java.net.URLDecoder.decode(UserTel, "UTF-8");
			}
		}
		if(Const.UserEmail.equals(cookie[i].getName())){
			UserEmail = cookie[i].getValue(); 
			if(UserEmail != null){
				UserEmail = java.net.URLDecoder.decode(UserEmail, "UTF-8");
				Const.UserEmailDt = java.net.URLDecoder.decode(UserEmail, "UTF-8");
			}
		}
		if(Const.UserBmail.equals(cookie[i].getName())){
			UserBmail = cookie[i].getValue(); 
			if(UserBmail != null){
				UserBmail = java.net.URLDecoder.decode(UserBmail, "UTF-8");
				Const.UserBmailDt = java.net.URLDecoder.decode(UserBmail, "UTF-8");
			}
		}
		if(Const.UserLevel.equals(cookie[i].getName())){
			UserLevel = cookie[i].getValue(); 
			if(UserLevel != null){
				UserLevel = java.net.URLDecoder.decode(UserLevel, "UTF-8");
				Const.UserLevelDt = java.net.URLDecoder.decode(UserLevel, "UTF-8");
			}
		}
		if(Const.UserBranch.equals(cookie[i].getName())){
			UserBranch = cookie[i].getValue();
			if(UserBranch != null){
				UserBranch = java.net.URLDecoder.decode(UserBranch, "UTF-8");
				Const.UserBranchDt = java.net.URLDecoder.decode(UserBranch, "UTF-8");
			}
			else {
				UserBranch = "";
				Const.UserBranchDt = "";
			}
// 			System.out.println(" xxxxxxxxxxxxxxxxxxxxxxxxxxxx: "+ UserBranch);
		}
	}
//	System.out.println(" UserBranch: "+ UserBranch);
}
%>
<script type="text/javascript">
var GnOrderNet = "<%=Const.GnOrder%>";
//로그아웃
function userlogout() {
	var count = 0;
	if (document.cookie != "") {
		var cookies = document.cookie.split("; ");
		console.log(cookies);
		count = cookies.length;

		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);

		for (var i = 0; i < count; i++) {
			var cookieName = cookies[i].split("=")[0];
			console.log(cookieName);
			if (cookieName != "id_save") {
				document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
			}
		}
	}
	location.replace("/");
}

</script>
<script src="/resources/js/wscript/api.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="/resources/js/common/rsamode.js"></script>
<%
	//로그인 정보 암호화
	JspUtils jsputil = new JspUtils();
	jsputil.setRsa(request);
	/**Rsa 개인키**/
	String RSAModulus = (String) request.getSession().getAttribute("RSAModulus");
	String RSAExponent = (String) request.getSession().getAttribute("RSAExponent");
%>
<script>
	var RSAModulus = "<%=RSAModulus%>";
	var RSAExponent = "<%=RSAExponent%>";
</script>
<script src="/resources/js/lib/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){
  $(".hamburger").click(function(){
    $(this).toggleClass("is-active");
  });
});
</script>
<style>
#header.sticky #gnb ul>li a {padding: 0 10px 1.2285em;}
.navbar-nav{float:none !important;position: absolute;left: 50%;transform: translateX(-50%);}
.navbar-right{height:55px;line-height:55px;}
.ham_ul li{display: inline-block;vertical-align: middle;}
.ham_div_mask{position:fixed;right:0;top:0;width:100%;height:100vh;background:rgba(0,0,0,0.7);}
.ham_div_contents{position:fixed;right:0;top:0;width:30%;height:100vh;background:#fff;}
</style>
<link rel="stylesheet" href="../JQuery-Snowfall-master/dist/ham_menu.css">


<form id="encModeForm" hidden="true">
</form>


<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
               <a class="navbar-brand" href="#page-top"><img src="2021renew_img/logo_2.svg" style="height:45px;"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
                <ul class="nav navbar-nav">
                   
                    <li>
                        <a href=""><img src="2021renew_img/icon_01.svg" style="height:35px;margin:-10px 5px 0 0;">온라인주문</a>
                    </li>
                    <li>
                        <a href="">메뉴소개</a>
                    </li>
                    <li>
                        <a href="">매장찾기</a>
                    </li>
                    <li >
                        <a href="">이벤트</a>
                    </li>
                </ul>
                
            <!-- /.navbar-collapse -->
            <div class="navbar-right">
                <ul class="ham_ul">
                    <li><a href=""><img src="2021renew_img/login.svg" style="height:18px;"></a></li>
                    
                    <li>
                        <div class="hamburger" id="hamburger-11">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </li>
                </ul>
                <div class="ham_div_mask"></div>
                    <div class="ham_div_contents">
                        djdjdj
                    </div>    
                
            </div>
        </div>
        
        <!-- /.container-fluid -->
        
    </nav>



<header id="header" style="display:none;">
	<div class="header_top">
		<p class="header_call">주문전화<strong>1661-9494</strong></p>
        <h1 class="logo"><a href="/" >Goobne</a></h1>
		<!-- 로그인 전 -->
	<% if (UserIdx.equals("")) { %>
		<div class="gnb_member">
			<a href="https://www.goobne.co.kr/member/login.jsp" class="gnb_member_link">로그인</a>
			<a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>" class="gnb_member_link">회원가입</a>
		</div>
	<% } else { %>
		<!--  로그인 후 -->
		<div class="gnb_member gnb_member_login">
			<div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">마이페이지</a>
				<ul>
					<li><a href="/mypage/my_qna_list.jsp">문의내역</a></li>
					<li><a href="javascript:loginnet('/member/resign.aspx');">회원탈퇴</a></li>
					<li><a href="javascript:loginnet('/member/change_pw.aspx');">비밀번호 변경</a></li>
					<li><a href="javascript:loginnet('/member/info_change.aspx');">회원정보 변경</a></li>
				</ul>
			</div>
		<% if ("22".equals(UserLevel)) { %>
			<!-- <div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">직원게시판</a>
				<ul>
					<li><a href="/company/notice_list.jsp">공지사항</a></li>
					<li><a href="/company/opinion_list.jsp">통(通)합시다!</a></li>
					<li><a href="/company/anonymity_list.jsp">토론마당</a></li>
					<li><a href="/company/photo_list.jsp">우리가족이야기</a></li>
					<li><a href="/company/eduinfo_list.jsp">교육정보게시판</a></li>
					<li><a href="/company/form_list.jsp">자료실</a></li>
					<li><a href="/company/poll_list.jsp">투표게시판</a></li>
					<li><a href="/company/divisionform_list.jsp">사업부자료실</a></li>
					<li><a href="/company/infoshare_list.jsp">업무공유게시판</a></li>
				</ul>
			</div> -->
		<% } %>
		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<div class="gnb_member_nav">
 				<a href="#" class="gnb_member_link">성공 뱅크</a>
				<ul>
					<li><a href="/family/successknow_list.jsp">성공노하우</a></li>
					<li><a href="/family/successstory_list.jsp">성공스토리</a></li>
				</ul>
			</div>
		<% } %>
		
		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<div class="gnb_member_nav">
				<a href="#" class="gnb_member_link">가족게시판</a>
				<ul>
<!-- 					<li><a href="/family/successstory_list.jsp">성공스토리</a></li> -->
<!-- 					<li><a href="/family/successknow_list.jsp">성공노하우</a></li> -->
<!-- 					<li><a href="javascript:alert('준비중입니다.');">우수사례</a></li> -->
					<li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">매뉴얼</a></li>
					<li><a href="/family/suggest_list.jsp">건의사항</a></li>
					<li><a href="/family/notice_list.jsp">공지사항</a></li>
					<li><a href="/family/discussion_list.jsp">토론방</a></li>
					<li><a href="/family/reference_list.jsp">자료실</a></li>
					<li><a href="/family/cscenter_list.jsp">고객의소리</a></li>
				</ul>
			</div>
		<% } %>
			<a href="javascript:userlogout();" class="gnb_member_link">로그아웃</a>
		</div>
	<% } %>
		<!-- <a href="<%=Const.GnOrder %>/order/delivery.aspx" target="gnorder" class="btn_order hvr-pop">온라인주문</a> -->
		<a href="javascript:loginnet('');" class="btn_order">온라인주문</a>
		<p class="btn_gnb"><a href=""><i></i><span class="blind">MENU</span></a></p>
	</div>
	
	<nav id="gnb">
		<div class="gnb_wrap gnb_1depth">
			<h1 class="logo sticky_logo"><a href="/" >Goobne</a></h1>
			<ul>
				<li><a href="/brand/brandstory.jsp">브랜드소개</a>
					<ul>
<!-- 						<li><a href="/brand/ceo.jsp">회장 인사말</a></li> -->
						<li><a href="/brand/brandstory.jsp">브랜드스토리</a></li>
						<li><a href="/brand/about.jsp">연혁 &amp; 수상</a></li>
						<li><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">인재채용</a></li>
						<li><a href="/brand/map.jsp">오시는길</a></li>
 						<li><a href="/brand/phil.jsp">경영 철학</a></li>
                        <li><a href="/brand/ceo_.jsp">CEO 인삿말</a></li>
					</ul>
				</li>
				<li><a href="/menu/new_s_w_f.jsp">메뉴소개</a>
					<ul>
                        <li><a href="/menu/new_s_w_f.jsp">스.우.파 세트</a></li>
						<li><a href="/menu/new_c_p_d.jsp">치PD</a></li>
						<!--<li><a href="/menu/new.jsp">신메뉴</a></li>-->
						<li><a href="/menu/menu_list.jsp?class=">치킨메뉴</a></li>
						<li><a href="/menu/menu_list.jsp?class=15">피자메뉴</a></li>
						<li><a href="/menu/menu_list.jsp?class=40">사이드메뉴</a></li>
						<!-- <li><a href="">세트메뉴</a></li>
						<li><a href="">사이드메뉴</a></li> -->
						<li><a href="/menu/recipe_list.jsp">레시피소개</a></li>
<!-- 						<li><a href="/menu/wing.jsp">고추바사삭 윙 소개</a></li> -->
					</ul>
				</li>
				<li><a href="/store/search_store.jsp">매장찾기</a>
					<ul>
						<li><a href="/store/search_newstore.jsp">월별 신규매장</a></li>
						<li><a href="/store/search_store.jsp">국내매장</a></li>
						<li><a href="/global.jsp">해외매장/Global</a></li>
					</ul>
				</li>
				<li><a href="/franchise/franchise.jsp">창업정보</a>
					<ul>
						<li><a href="/franchise/franchise.jsp">창업정보</a></li>
						<li><a href="/franchise/franchise_qna.jsp">창업 FAQ</a></li>
						<li><a href="/franchise/franchise_seminar.jsp">창업 전화상담</a></li>
						<li><a href="/franchise/franchise_consulting.jsp">온라인 창업상담</a></li>
						<li><a href="/franchise/franchise_cost.jsp">창업비용</a></li>
					</ul>
				</li>
				<li><a href="/advertise/press_list.jsp">홍보센터</a>
					<ul>
						<li><a href="/advertise/press_list.jsp">언론보도</a></li>
						<li><a href="/advertise/social.jsp">굽네 소셜미디어</a></li>
						<li><a href="/advertise/media.jsp">굽네TVCF소개</a></li>
<!-- 						<li><a href="/advertise/schedule_list.jsp">TVCF광고일정</a></li> -->
						<li><a href="/advertise/contribution_list.jsp">3生 캠페인 소개</a></li>
						<li><a href="/advertise/goobcar_list.jsp">굽카 히스토리</a></li>
					</ul>
				</li>
				<li><a href="/event/event_list.jsp">이벤트</a>
					<ul>
						<li><a href="/event/event_list.jsp">진행중인 이벤트</a></li>
					<% //if ("".equals(UserIdx)) { %>
						<!-- <li><a href="/member/login.jsp">굽카후기 이벤트</a></li> -->
					<% //} else { %>
						<li><a href="/event/goobcarepil_list.jsp">굽카후기 이벤트</a></li>
					<% //} %>
						<li><a href="/event/win_list.jsp">당첨자 발표</a></li>
					</ul>
				</li>
			<% if ("".equals(UserIdx)) { %>
				<li><a href="/member/login.jsp">고객지원센터</a>
					<ul>
				<% if ("".equals(UserIdx)) { %>	
						<li><a href="/member/login.jsp">고객의 소리</a></li>
						<li><a href="/member/login.jsp">고객공모전</a></li>
						<li><a href="/member/login.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } else { %>
						<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
						<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
						<li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } %>
					</ul>
				</li>
			<% } else { %>
				<li><a href="/customer/cscenter_regi.jsp">고객지원센터</a>
					<ul>
				<% if ("".equals(UserIdx)) { %>	
						<li><a href="/member/login.jsp">고객의 소리</a></li>
						<li><a href="/member/login.jsp">고객공모전</a></li>
						<li><a href="/member/login.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } else { %>
						<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
						<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
						<li><a href="/customer/cscenter_goobcar_write.jsp">굽카 신청하기</a></li>
						<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
				<% } %>
					</ul>
				</li>
			<% } %>
			</ul>
		</div>
		<div class="gnb_bg"></div>
	</nav>
	
	<!-- m Gnb -->
	<nav id="mGnb">
		<div class="mGnb_head_wrap">
			<ul class="mGnb_head mGnb_login">
			<% if (UserIdx.equals("")) { %>
				<!-- 로그인 전 -->
				<li><a href="https://www.goobne.co.kr/member/login.jsp">로그인</a></li>
				<li><a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>">회원가입</a></li>
			<% } else { %>
				<!-- 로그인 후 -->
				<li><a href="/mypage/my_qna_list.jsp">마이페이지</a></li>
				<% if (UserLevel.equals("22")) { %>
				<li><a href="/family/notice_list.jsp">가족게시판</a></li>
				<% } %>
				<li><a href="javascript:userlogout();">로그아웃</a></li>
			<% } %>
			</ul>
		</div>
		
    	<ul class="mGnb_wrap">
    		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<li>
    			<p>성공뱅크</p>
    			<ul>
					<li><a href="/family/successknow_list.jsp">성공노하우</a></li>
					<li><a href="/family/successstory_list.jsp">성공스토리</a></li>
    			</ul>
    		</li>
			<% } %>
			
    		<li>
    			<p>브랜드소개</p>
    			<ul>
<!--     				<li><a href="/brand/ceo.jsp">CEO 인사말</a></li> -->
					<li><a href="/brand/brandstory.jsp">브랜드스토리</a></li>
					<li><a href="/brand/about.jsp">연혁,수상내역</a></li>
					<li><a href="/brand/map.jsp">오시는길</a></li>
<!-- 					<li><a href="/brand/philosophy.jsp">경영 철학</a></li>200323 add -->
                    <li><a href="/brand/ceo_.jsp">CEO 인삿말</a></li>
    			</ul>
    		</li>
    		<li>
    			<p>메뉴소개</p>
    			<ul>
					<li><a href="/menu/new_s_w_f.jsp">스.우.파 세트</a></li>
					<li><a href="/menu/new_c_p_d.jsp">치PD</a></li>
					<!-- <li><a href="/menu/new.jsp">신메뉴</a></li> 211026 주석처리-->
<!-- 					<li><a href="/menu/menu_list.jsp">메뉴보기</a></li> -->
					<li><a href="/menu/menu_list.jsp?class=">치킨메뉴</a></li>
					<li><a href="/menu/menu_list.jsp?class=15">피자메뉴</a></li>
					<li><a href="/menu/menu_list.jsp?class=40">사이드메뉴</a></li>
					<!-- <li><a href="">세트메뉴</a></li>
					<li><a href="">사이드메뉴</a></li> -->
					<li><a href="/menu/recipe_list.jsp">레시피소개</a></li>
<!-- 					<li><a href="/menu/wing.jsp">고추바사삭 윙 소개</a></li> -->
				</ul>
    		</li>
    		<li>
    			<p>매장찾기</p>
    			<ul>
					<li><a href="/store/search_newstore.jsp">월별 신규매장</a></li>
					<li><a href="/store/search_store.jsp">국내매장</a></li>
					<li><a href="/global.jsp">해외매장</a></li>
				</ul>
    		</li>
    		<% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
			<li>
				<p>가족게시판</p>
				<ul>
<!-- 					<li><a href="/family/successstory_list.jsp">성공스토리</a></li> -->
<!-- 					<li><a href="/family/successknow_list.jsp">성공노하우</a></li> -->
					<!-- <li><a href="javascript:alert('준비중입니다.');">우수사례</a></li> -->
					<li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">매뉴얼</a></li>
					<li><a href="/family/suggest_list.jsp">건의사항</a></li>
					<li><a href="/family/notice_list.jsp">공지사항</a></li>
					<li><a href="/family/discussion_list.jsp">토론방</a></li>
					<li><a href="/family/reference_list.jsp">자료실</a></li>
					<li><a href="/family/cscenter_list.jsp">고객의소리</a></li>
				</ul>
			</li>
			<% } %>
    		
    		<li>
    			<p><a href="/franchise/franchise.jsp">창업정보</a></p>
    			
    		</li>
    		<!--
    		<li>
    			<p>홍보센터</p>
    			<ul>
					<li><a href="/advertise/press_list.jsp">언론보도</a></li>
					<li><a href="/advertise/social.jsp">굽네소셜미디어</a></li>
					<li><a href="/advertise/media.jsp">굽네미디어</a></li>
					<li><a href="/advertise/contribution_list.jsp">사회공헌</a></li>
					<li><a href="/advertise/goobcar_list.jsp">굽네소개</a></li>
				</ul>
    		</li> -->
    		<li>
    			<p>이벤트</p>
    			<ul>
					<li><a href="/event/event_list.jsp">진행중인 이벤트</a></li>
					<li><a href="/event/goobcarepil_list.jsp">굽카후기 이벤트</a></li>
					<li><a href="/event/win_list.jsp">당첨자 발표</a></li>
				</ul>
    		</li>
    		<li>
    			<p>고객지원센터</p>
    			<ul>
			<% if (UserIdx.equals("")) { %>	
					<li><a href="/member/login.jsp">고객의 소리</a></li>
					<li><a href="/member/login.jsp">고객공모전</a></li>
					<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
			<% } else { %>
					<li><a href="/customer/cscenter_regi.jsp">고객의 소리</a></li>
					<li><a href="/customer/cscenter_contest.jsp">고객공모전</a></li>
					<li><a href="/customer/cscenter_notice.jsp">공지사항</a></li>
			<% } %>
				</ul>
    		</li>
    		<li>
    			<a href="http://www.goobnemall.com/m/view/event/X4N7DFJQ6MH0DVV4/read?evnt_id=SZ1XHK58I&evntType=CMT&evntSt=20&brdId=I93CH23GL&pageNum=1" target="_blank"><img src="/resources/images/main/bn_main_gnmall_M.jpg" width="100%" alt="굽네몰 첫구매 100원, 볼케이노 소스"></a>
    		</li>
    		<li class="mGnb_sns_wrap">
    			<div class="sns_wrap mGnb_sns">
					<ul class="header_sns">
						<li class="foot_fb"><a href="https://www.facebook.com/goobne" target="_blank" title="굽네 페이스북 새창열림">facebook</a></li>
				<li class="foot_blog"><a href="http://blog.naver.com/goobne94" target="_blank" title="굽네 블로그 새창열림">blog</a></li>
				<li class="foot_insta"><a href="https://www.instagram.com/explore/tags/%EA%B5%BD%EB%84%A4%EC%B9%98%ED%82%A8/" target="_blank" title="굽네 인스타그램 새창열림">instagram</a></li>	
					</ul>
				</div>
    		</li>
    	</ul>
    </nav>  
</header>
<form name="loginnet" target="<%=formtarget%>" method="post">
<input type="hidden" name="useridxnet" id="useridxnet" value="<%=UserIdx %>" />
<input type="hidden" name="useridnet" id="useridnet" value="<%=UserId %>" />
<input type="hidden" name="userlevelnet" id="userleveldnet" value="<%=UserLevel %>" />
<input type="hidden" name="userbranchnet" id="userbranchdnet" value="<%=UserBranch %>" />
<input type="hidden" name="userurl" id="userurl" value="/order/delivery.aspx" />
</form>
