<%@page import="com.cntt.base.Const"%>
<%@page import="com.cntt.util.JspUtils"%>
<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
<%
	JspUtils jsputil = new JspUtils();
	jsputil.setRsa(request);
	/**Rsa 개인키**/
	String RSAModulus = (String) request.getSession().getAttribute("RSAModulus");
	String RSAExponent = (String) request.getSession().getAttribute("RSAExponent");
	
	// App 
	String useragent = request.getHeader("User-Agent");
	System.out.println(useragent);
	String formtarget = "gnorder";
	if ( useragent != null ) {
		if ( useragent.toUpperCase().indexOf("APP-GOOBNE-ANDROID") != -1 || useragent.toUpperCase().indexOf("APP-GOOBNE-IPHONE") != -1 ) { // android app, ios app
			formtarget = "_self";
		}
	}
%>
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
			<span><em>굽네치킨 회원</em> ><i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	
	<!-- container -->
	<div id="container" >
		<section id="contents" class="find_contents" >
			<h2 class="cont_tit t_center">로그인</h2>
			<div class="memeber_find_wrap">
				<div class="login_btn_wrap">
					<a href="#" class="on" ><span class="login_form">회원로그인</span></a>
					<!-- <a href="#"><span class="non_login_order">비회원 주문<i>비회원도 주문가능합니다</i></span></a>
					<a href="#"><span class="non_login_search">비회원 주문조회</span></a> -->
				</div>
				
				<div class="login_wrap" id="login_wrap">
					<!-- 회원 로그인 -->
					<div class="login_form" >
						<!-- <p class="login_for_order">온라인주문 및 스마트콘 주문은 <strong>PM 12:00 - PM 23:00</strong> 입니다.</p> -->
						<div class="login_form_contents">
                            <span id="newcountdown" style="font-size:0;display:none;"></span>
							<a href="javascript:void(0);" class="ori" style="display:none;">
								<img src="/resources/images/contents/login/img_login_ad.jpg" alt="최우수 상금 100만원의 주인공은 누구? 굽네 볼케이노 치밥 도시락 비주얼 콘테스트" />
							</a>
                            <a href="https://www.goobne.co.kr/event/event_view.jsp?dt=60905" class="new">
								<img src="/resources/images/contents/login/220302_loginpopup_dhuman_2.jpg" alt="듀먼광고" style="    border: 1px solid #eee;"/>
							</a>
							<div class="login_form_input">
								<p>
									<input type="text" name="userid" id="userid" placeholder="아이디 입력" />
									<input type="password" name="pwd" id="pwd" placeholder="비밀번호 입력" />
									<a href="javascript:void(0);" class="btn_red btn_login" id="btn_login" >로그인</a>
								</p>
								<label class="checkbox">
									<input type="checkbox" name="id_chk" id="id_chk" value="1" >
									<span class="lbl">아이디 저장</span>
								</label>
								<div class="login_bottom_btn_wrap">
									<span><a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=formtarget%>" class="btn_large btn_red">회원가입</a></span>
									<span><a href="<%=Const.GnOrder %>/login/find_id.aspx" target="<%=formtarget%>" class="btn_large btn_blk">계정찾기</a></span>
								</div>
								<span class="member_info hide" id="member_info">아이디 및 비밀번호를 다시 확인해 주세요</span>
							</div>
						</div>
					</div>
					
					<form name="loginfrom">
						<input type="hidden" id="<%=Const.BeanParam%>" name="<%=Const.BeanParam%>" value="User" />
						<input type="hidden" id="<%=Const.SQLActionParam%>" name="<%=Const.SQLActionParam%>" value="userlogin" />
						<input type="hidden" id="RSAModulus" name="RSAModulus" value="<%=RSAModulus%>" />
						<input type="hidden" id="RSAExponent" name="RSAExponent" value="<%=RSAExponent%>" />
						<input type="hidden" id="crytuid" name="crytuid" />
						<input type="hidden" id="crytupw" name="crytupw" />
						<input type="hidden" id="<%=Const.TatgetUrlParam%>" name="<%=Const.TatgetUrlParam%>" value="/" />
					</form>
					
					<!-- 비회원 주문 -->
					<div class="non_login_order" style="display:none">
						<textarea readonly="readonly">
1. 수집하는 개인정보 항목
- 전화번호, 성명, 주소

2. 수집 목적 
   - 성명, 주소: 제품의 전달, 청구서, 정확한 제품 배송지의 확보.

3. 비회원으로 접속하여 굽네치킨에서 제공하는 서비스를 이용하는 동안 수집된 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 서비스 목적을 달성한 경우에는 재생할 수 없는 방법에 의하여 회원정보를 완전히 삭제하며, 추후 열람이나 이용이 불가능한 상태로 처리됩니다.

4. 비회원 주문 시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다. 기타 자세한 사항은 '개인정보취급방침'을 참고하여주시기 바랍니다.
						</textarea>
						<label class="checkbox">
							<input type="checkbox" name="checkbox" >
							<span class="lbl">약관을 읽어봤습니다.</span>
						</label>
						<div class="t_center standard_btn_wrap">
							<a href="/order/order_store.jsp" class="btn_huge btn_red">비회원주문</a>
						</div>
					</div>
					
					<!-- 비회원 주문조회 -->
					<div class="non_login_search" style="display:none">
						<select title="옵션선택" class="order_choose">
							<option value="order">주문번호</option>
							<option value="phone">휴대폰</option>
						</select>
						<div id="order" class="order_way" >
							<input type="text" placeholder="비회원 주문번호 입력" />
						</div>
						<div id="phone" class="order_way" >
							<select title="휴대폰 번호 앞자리">
								<option value="">010</option>
								<option value="">011</option>
							</select>
							<span><input type="text" maxlength="4"  /></span>
							<span><input type="text" maxlength="4"  /></span>
						</div>
						
						<span class="order_password">
							<input type="text" placeholder="주문비밀번호"  />
						</span>
						<span class="btn_search_wrap">
							<a href="#" class="btn_small btn_red">주문조회</a>
						</span>
						<span class="member_info">주문번호 또는 주문 비밀번호를 확인해 주세요</span>
						<!-- <span class="member_info">휴대폰 번호 또는 주문 비밀번호를 확인해주세요</span> --><!-- 휴대폰 선택시  -->
					</div>
					
				</div>
				
			</div>
			
		</section>
	</div>
	<!-- // container -->
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>
<script src="/resources/js/wscript/member/login.js"></script>
<script type="text/javascript">
	var login = new CNTLib.Login('#contents');
</script>
</body>
</html>