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
//????????????
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
	//????????? ?????? ?????????
	JspUtils jsputil = new JspUtils();
	jsputil.setRsa(request);
	/**Rsa ?????????**/
	String RSAModulus = (String) request.getSession().getAttribute("RSAModulus");
	String RSAExponent = (String) request.getSession().getAttribute("RSAExponent");
%>
<script>
	var RSAModulus = "<%=RSAModulus%>";
	var RSAExponent = "<%=RSAExponent%>";
</script>

<script>
$(document).ready(function(){
  $(".menu_wrap li a.ham_list_a").click(function(){
  $('.menu_wrap li a #hamburger-90').toggleClass("is-active");
  });
$(".menu_wrap li a.ham_list_a").eq(0).trigger("click");

/*???????????? mouseover ??????*/
    $('.mouseover_div').hide();

    $('.hover_li_mouseover').mouseover(function(){
    $('.mouseover_div').slideDown(300);

    });
    $('.mouseover_div , .hover_li_mouseleave').mouseleave(function(){
    $('.mouseover_div').slideUp(150);
    });
    $('.hover_li_mouseleave').mouseout(function(){
    $('.mouseover_div').slideUp(150);
    });
});
if (new Date() >= new Date('01/01/2022 00:00:00')            // *????????? ????????????
            && new Date() < new Date('01/31/2022 23:59:59')) {        // ???????????? ???????????? 
            //alert('test');
            //$('container').addClass('a')
           $(document).ready(function () {
                $('.logo_back').css('display','block');
            }); 
        } else if (new Date() >= new Date('02/01/2022 00:00:00')            // *????????? ????????????
            && new Date() < new Date('10/05/2095 08:59:59')) {      // ???????????? ???????????? 
            $(document).ready(function () {
                $('.logo_re').css('display','block');
            }); 
        }

</script>
<style>
  .mouseover_div{background:rgba(255, 255, 255, 0.9);width:100%;position:fixed;top:60px;left:0;border-bottom:1px solid #eee;}
  .mouseover_div ul li{display:inline-block;margin:0 1%;font-size:15px;}
  .mouseover_div ul li a:hover{color:#aacc03;}
  .mouseover_div ul{padding:2% 0;}
  .navbar-brand.navbar_header_2022{padding:3px 0px;}
  .logo_re,.logo_back{display: none;}
  @media only screen and (max-width: 1024px){
  .mouseover_div{display:none !important;}
  .navbar-brand.navbar_header_2022 img.navbar_header_2022_img{height:42px !important;}
  .navbar-brand.navbar_header_2022 {margin-left:-3%;}
  }
  </style>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap Core CSS -->
    <link href="/scrollreveal/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/scrollreveal/css/freelancer.css" rel="stylesheet" type="text/css">

    <!-- Animate CSS library -->
    <link href="/scrollreveal/css/anicollection.css" rel="stylesheet" type="text/css">


    <!-- Custom -->
    <link href="/scrollreveal/css/custom.css" rel="stylesheet" type="text/css">

    <!-- Syntax Highlight -->
    <link rel="stylesheet" href="/scrollreveal/css/markdown-highligth.css">



<!-- Syntax Highlight -->
<link rel="stylesheet" href="/scrollreveal/css/markdown-highligth.css">
<link rel="stylesheet" href="/JQuery-Snowfall-master/dist/ham_menu.css">
<script src="/JQuery-Snowfall-master/dist/ham_motion.js"></script>
<link rel="stylesheet" href="/JQuery-Snowfall-master/dist/ham_style.css">
<!---S:??????&????????? ????????? ?????? ????????? css?????? ??????----->
<link rel="stylesheet" href="/JQuery-Snowfall-master/dist/re_common_v2.css">
<!---E:??????&????????? ????????? ?????? ????????? css?????? ??????----->
<form id="encModeForm" hidden="true">
</form>

<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" id="scroll_nav">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header page-scroll">
               <a class="navbar-brand navbar_header_2022 logo_back" href="/index_1.jsp"><img src="/2021renew_img/logo_220101.svg" style="height:55px;" class="navbar_header_2022_img"></a>
               <a class="navbar-brand  logo_re" href="/index_1.jsp" ><img src="/2021renew_img/logo_220201.svg" style="height:40px;"></a>
               <ul class="nav navbar-nav">
                   
                    <li class="hover_li_mouseleave">
                        <a href="javascript:loginnet('');"><img src="/2021renew_img/icon_01.svg"    class="PCmobile_icon"><span class="span_mobile">?????????</span>??????</a>
                    </li>
                    <li class="hover_li_mouseover">
                        <a href="/menu/new_bg.jsp"><img src="/2021renew_img/footer_nav_icon_02.svg"   class="mobile_icon"><span class="span_mobile">??????</span>??????</a>
                    </li>
                    <li class="hover_li_mouseleave">
                        <a href="/store/search_store.jsp"><img src="/2021renew_img/footer_nav_icon_01.svg"   class="mobile_icon"><span class="span_mobile">??????</span>??????</a>
                    </li>
                    <li class="hover_li_mouseleave">
                        <a href="/event/event_list.jsp"><img src="/2021renew_img/footer_nav_icon_03.svg"   class="mobile_icon">?????????</a>
                    </li>
                    <li class="mobile">
                        <a href="javascript:loginnet('/member/info_change.aspx');"><img src="/2021renew_img/footer_nav_icon_04.svg"  class="mobile_icon">MY</a>
                    </li>
                </ul>
                <div class="mouseover_div">
                    <ul class="container">
                        <li><a href="/menu/new_bg.jsp">????????????</a></li>
                        <li><a href="/menu/new_s_w_f.jsp">?????????</a></li>
                        <li><a href="/menu/new_c_p_d.jsp">???PD</a></li>
                        <li><a href="/menu/menu_list.jsp?class=">????????????</a></li>
                        <li><a href="/menu/menu_list.jsp?class=15">????????????</a></li>
                        <li><a href="/menu/menu_list.jsp?class=40">???????????????</a></li>
                    </ul>
                </div>  
            
            <!-- /.navbar-collapse -->
            <div class="navbar-right">
                <ul class="ham_ul">
                    <!---????????????---->
                    <% if (UserIdx.equals("")) { %>
                    <li><a href="https://www.goobne.co.kr/member/login.jsp"><img src="/2021renew_img/login.svg" style="width:52px;height:18px;"></a></li>
                    <li>
                       <div class="hamburger" id="hamburger-11">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>

                    </li>
                    <% } else { %>
                    <!--  ????????? ??? -->
                    <li><a href="javascript:userlogout();"><img src="/2021renew_img/logout.svg" style="height:18px;"></a></li>
                    <li>
                       <div class="hamburger" id="hamburger-11">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>

                    </li>
                    
	            <% } %>
                    
                    
                    
                </ul>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
                
                <!--<div class="ham_div_mask"></div>
                    <div class="ham_div_contents">
                        djdjdj
                    </div>    -->
                
                <div class="menu_bg"></div>
                <div class="sidebar_menu">
                    <div class="navbar-nav_user_log">
                        <!---????????????---->
                    <% if (UserIdx.equals("")) { %>
                        <a href="<%=Const.GnOrder %>/login/join1.aspx" target="<%=target%>" class="join_a" style="vertical-align: middle;">JOIN</a> <span class="span_class">|</span>
                        <a href="https://www.goobne.co.kr/member/login.jsp"><!--<img src="2021renew_img/login.svg" style="height:25px;">-->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 78.33 27.03" style="height:25px;width:73px;margin-top:-1px;vertical-align: middle;"><defs><style>.cls-1{fill:#fff;stroke:#fff;stroke-width:0.3px;}.navbar-nav_user_log a:hover .cls-1{fill:#000;stroke:#000;stroke-width:0.3px;}</style></defs><g id="01" data-name="01"><g id="02" data-name="02"><polygon class="cls-1" points="63.6 18.86 62.69 17.95 67.12 13.52 62.69 9.08 63.6 8.17 68.94 13.52 63.6 18.86"/><rect class="cls-1" x="51.3" y="12.87" width="16.73" height="1.29"/><path class="cls-1" d="M64.81,27a13.54,13.54,0,0,1-13-10L53,16.73a12.23,12.23,0,1,0,0-6.43L51.77,10A13.52,13.52,0,1,1,64.81,27Z"/><path class="cls-1" d="M0,7.36H1.6V20.14H7.84V21.5H0Z"/><path class="cls-1" d="M7.53,14.37c0-4.5,2.47-7.26,6-7.26s6,2.76,6,7.26-2.47,7.38-6,7.38S7.53,18.89,7.53,14.37Zm10.31,0c0-3.61-1.72-5.85-4.34-5.85s-4.33,2.24-4.33,5.85,1.72,6,4.33,6S17.84,18,17.84,14.37Z"/><path class="cls-1" d="M20.31,14.43c0-4.54,2.68-7.32,6.41-7.32a5.46,5.46,0,0,1,4,1.72l-.89,1a4,4,0,0,0-3.11-1.35c-2.93,0-4.81,2.24-4.81,5.87s1.74,5.95,4.81,5.95a4,4,0,0,0,2.68-.89V15.59H26.37V14.26h4.56v5.86a5.94,5.94,0,0,1-4.32,1.63C22.9,21.75,20.31,19,20.31,14.43Z"/><path class="cls-1" d="M32.9,7.36h1.6V21.5H32.9Z"/><path class="cls-1" d="M37,7.36h1.64L44,16.51l1.53,2.9h.09c-.09-1.41-.21-2.95-.21-4.4V7.36h1.53V21.5H45.26L40,12.34,38.4,9.45h-.1c.08,1.41.2,2.84.2,4.3V21.5H37Z"/></g></g></svg>
                        </a>  
                        
                    <% } else { %>
                    <!--  ????????? ??? -->   
                    <a href="javascript:userlogout();"><img src="/2021renew_img/logout.svg" style="height:25px;"></a>
                    <% } %>
                    </div>
                    <div class="hamburger_top_bar">
                         <div class="hamburger close_btn" id="hamburger-9">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </div>
                    
                    
                    <div class="Notice_div_ham">
                        <ul class="Notice_div_ham_ul">
                            <li><img src="/2021renew_img/logo_red.svg" style="height:35px;"></li>
                            <li>???????????? 1899-9494</li>
                            <li><a href="javascript:loginnet('');"><img src="/2021renew_img/icon_01.svg" style="height:35px;">???????????????</a></li>
                        </ul>
                    </div>
                    
                   <ul class="menu_wrap">
                        <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ???????????????</span>
                                 <div class="hamburger is-active" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                            <div class="list_hidden">
                                <ul class="ham_ul_list">
            <!-- 						<li><a href="/brand/ceo.jsp">?????? ?????????</a></li> -->
                                    <li><a href="/brand/brandstory.jsp">??????????????????</a></li>
                                    <li><a href="/brand/about.jsp">?????? &amp; ??????</a></li>
                                    <li><a href="http://recruit.gn-food.co.kr/hmp/empmn/viewInfo.do?menuId=0901" target="_blank">????????????</a></li>
                                    <li><a href="/brand/map.jsp">????????????</a></li>
                                    <li class="mobile_none_list"><a href="/brand/phil.jsp">?????? ??????</a></li>
                                    <li class="mobile_none_list"><a href="/brand/ceo_.jsp">CEO ?????????</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>

                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/menu/new_bg.jsp">????????????</a></li>
                 					<li><a href="/menu/new_s_w_f.jsp">???.???.??? ??????</a></li>
                                    <li><a href="/menu/new_c_p_d.jsp">???PD</a></li>
                                    <!--<li><a href="/menu/new.jsp">?????????</a></li>-->
                                    <li><a href="/menu/menu_list.jsp?class=">????????????</a></li>
                                    <li><a href="/menu/menu_list.jsp?class=15">????????????</a></li>
                                    <li><a href="/menu/menu_list.jsp?class=40">???????????????</a></li>
                                    <!-- <li><a href="">????????????</a></li>
                                    <li><a href="">???????????????</a></li> -->
                                    <li><a href="/menu/recipe_list.jsp">???????????????</a></li>
            <!-- 						<li><a href="/menu/wing.jsp">??????????????? ??? ??????</a></li> -->
                                </ul>
                            </div>
                            
                          </li>   
                         <% if ("22".equals(UserLevel)) { %>
                         <!-- <div class="gnb_member_nav">
                                    <a href="#" class="gnb_member_link">???????????????</a>
                                    <ul>
                                        <li><a href="/company/notice_list.jsp">????????????</a></li>
                                        <li><a href="/company/opinion_list.jsp">???(???)?????????!</a></li>
                                        <li><a href="/company/anonymity_list.jsp">????????????</a></li>
                                        <li><a href="/company/photo_list.jsp">?????????????????????</a></li>
                                        <li><a href="/company/eduinfo_list.jsp">?????????????????????</a></li>
                                        <li><a href="/company/form_list.jsp">?????????</a></li>
                                        <li><a href="/company/poll_list.jsp">???????????????</a></li>
                                        <li><a href="/company/divisionform_list.jsp">??????????????????</a></li>
                                        <li><a href="/company/infoshare_list.jsp">?????????????????????</a></li>
                                    </ul>
                                </div> -->
                            <% } %>
                            
                          <% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
                              <li>
                                  <a href="#" class="ham_list_a">
                                     <span class="list_name">???????????????</span>
                                     <div class="hamburger" id="hamburger-90">
                                        <span class="line"></span>
                                        <span class="line"></span>
                                    </div>
                                  </a>
                                <div class="list_hidden">
                                    <ul class="ham_ul_list">
                                          <!-- 					<li><a href="/family/successstory_list.jsp">???????????????</a></li> -->
                    <!-- 					<li><a href="/family/successknow_list.jsp">???????????????</a></li> -->
                    <!-- 					<li><a href="javascript:alert('??????????????????.');">????????????</a></li> -->
                                        <li><a href="#" onclick="window.open('http://new.goobne.kr/manual_html/mainManual.html','pop1','width=850,height=750');">?????????</a></li>
                                        <li><a href="/family/suggest_list.jsp">????????????</a></li>
                                        <li><a href="/family/notice_list.jsp">????????????</a></li>
                                        <li><a href="/family/discussion_list.jsp">?????????</a></li>
                                        <li><a href="/family/reference_list.jsp">?????????</a></li>
                                        <li><a href="/family/cscenter_list.jsp">???????????????</a></li>
                                    </ul>
                                </div>
                              </li>
                         <% } %>
                          <% if ("21".equals(UserLevel) || "22".equals(UserLevel)) { %>
                             <li>
                                  <a href="#" class="ham_list_a">
                                     <span class="list_name">?????? ??????</span>
                                     <div class="hamburger is-active" id="hamburger-90">
                                        <span class="line"></span>
                                        <span class="line"></span>
                                    </div>
                                  </a>
                                <div class="list_hidden">
                                    <ul class="ham_ul_list">
                                          <li><a href="/family/successknow_list.jsp">???????????????</a></li>
                                          <li><a href="/family/successstory_list.jsp">???????????????</a></li>
                                    </ul>
                                </div>
                              </li>
                          <% } %>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/store/search_newstore.jsp">?????? ????????????</a></li>
                                    <li><a href="/store/search_store.jsp">????????????</a></li>
                                    <li><a href="/global.jsp">????????????/Global</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/franchise/franchise.jsp">????????????</a></li>
                                    <li><a href="/franchise/franchise_qna.jsp">?????? FAQ</a></li>
                                    <li><a href="/franchise/franchise_seminar.jsp">?????? ????????????</a></li>
                                    <li><a href="/franchise/franchise_consulting.jsp">????????? ????????????</a></li>
                                    <li><a href="/franchise/franchise_cost.jsp">????????????</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/advertise/press_list.jsp">????????????</a></li>
                                    <li><a href="/advertise/social.jsp">?????? ???????????????</a></li>
                                    <li><a href="/advertise/media.jsp">??????TVCF??????</a></li>
            <!-- 						<li><a href="/advertise/schedule_list.jsp">TVCF????????????</a></li> -->
                                    <li><a href="/advertise/contribution_list.jsp">3??? ????????? ??????</a></li>
                                    <li><a href="/advertise/goobcar_list.jsp">?????? ????????????</a></li>
                                </ul>
                            </div>
                          </li>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ?????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                    <li><a href="/event/event_list.jsp">???????????? ?????????</a></li>
                                <% //if ("".equals(UserIdx)) { %>
                                    <!-- <li><a href="/member/login.jsp">???????????? ?????????</a></li> -->
                                <% //} else { %>
                                    <li><a href="/event/goobcarepil_list.jsp">???????????? ?????????</a></li>
                                <% //} %>
                                    <li><a href="/event/win_list.jsp">????????? ??????</a></li>
                                </ul>
                            </div>
                          </li>
                          <% if ("".equals(UserIdx)) { %>
                          <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ??????????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                <% if ("".equals(UserIdx)) { %>	
                                    <li><a href="/member/login.jsp">????????? ??????</a></li>
                                    <li><a href="/member/login.jsp">???????????????</a></li>
                                    <li><a href="/member/login.jsp">?????? ????????????</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">????????????</a></li>
                                 <% } else { %>
                                    <li><a href="/customer/cscenter_regi.jsp">????????? ??????</a></li>
                                    <li><a href="/customer/cscenter_contest.jsp">???????????????</a></li>
                                    <li><a href="/customer/cscenter_goobcar_write.jsp">?????? ????????????</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">????????????</a></li>
                                <% } %>
                                </ul>
                            </div>
                          </li>
                        <% } else { %>
                            <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name"> ??????????????????</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                <% if ("".equals(UserIdx)) { %>	
                                    <li><a href="/customer/cscenter_regi.jsp">??????????????????</a></li>
                                    <li><a href="/member/login.jsp">????????? ??????</a></li>
                                    <li><a href="/member/login.jsp">???????????????</a></li>
                                    <li><a href="/member/login.jsp">?????? ????????????</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">????????????</a></li>
                            <% } else { %>
                                    <li><a href="/customer/cscenter_regi.jsp">????????? ??????</a></li>
                                    <li><a href="/customer/cscenter_contest.jsp">???????????????</a></li>
                                    <li><a href="/customer/cscenter_goobcar_write.jsp">?????? ????????????</a></li>
                                    <li><a href="/customer/cscenter_notice.jsp">????????????</a></li>
                            <% } %>
                                </ul>
                            </div>
                          </li>
                        <% } %> 
                        
                        <% if (UserIdx.equals("")) { %>
                        <% } else { %>
                        <li>
                              <a href="#" class="ham_list_a">
                                 <span class="list_name">My Page</span>
                                 <div class="hamburger" id="hamburger-90">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                              </a>
                              <div class="list_hidden">
                                <ul class="ham_ul_list">
                                   <li><a href="/mypage/my_qna_list.jsp">????????????</a></li>
                                    <li><a href="javascript:loginnet('/member/resign.aspx');">????????????</a></li>
                                    <li><a href="javascript:loginnet('/member/change_pw.aspx');">???????????? ??????</a></li>
                                    <li><a href="javascript:loginnet('/member/info_change.aspx');">???????????? ??????</a></li>
                                </ul>
                            </div>
                          </li>
                        <% } %>
                     </ul>
                     <div class="ham_footer">COPYRIGHT. 2009-2016 GOOBNE.CO.ALL RIGHT RESERVED</div>
                </div>
            </div>
        </div>
        
        <!-- /.container-fluid -->
        
    </nav>



<form name="loginnet" target="<%=formtarget%>" method="post">
<input type="hidden" name="useridxnet" id="useridxnet" value="<%=UserIdx %>" />
<input type="hidden" name="useridnet" id="useridnet" value="<%=UserId %>" />
<input type="hidden" name="userlevelnet" id="userleveldnet" value="<%=UserLevel %>" />
<input type="hidden" name="userbranchnet" id="userbranchdnet" value="<%=UserBranch %>" />
<input type="hidden" name="userurl" id="userurl" value="/order/delivery.aspx" />
</form>
