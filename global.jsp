<%@page import="com.cntt.util.CustomUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% System.out.println(new CustomUtils().getServerPath()); %>
<%
String stxt = request.getParameter("stxt");
if (stxt == null || "".equals(stxt))
{
	stxt = "";
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>

	
<!-- Header doc -->
<jsp:include page="/include/header_doc.jsp" flush="false"/> 
<!-- //Header doc -->   

<style>
.mobile{display:none;}
#container_global{background:none;}	
.overseas_guide>a:first-child{width:232px;height:160px;margin:0 10px;background: url(/resources/images/contents/store/overseas_guide_bg_1.jpg) no-repeat left bottom;font-weight: bold;font-size:16px;line-height:1;color:222;letter-spacing:-1px;display:inline-block;vertical-align: top;}
	.overseas_guide>a{width:160px;height:160px;margin:0 10px;background: url(/resources/images/contents/store/overseas_guide_bg_1.jpg) no-repeat left top;font-weight: bold;font-size:16px;line-height:1;color:#222;letter-spacing:-1px;display:inline-block;vertical-align: top;}
.mobile_arrow{display:none !important;}    
@media only screen and (max-width: 568px){
#container_global {max-height: 100%;}
.mobile{display:block;}
.pc{display:none;}
}
@media only screen and (max-width: 480px){
.overseas_guide>a:hover .border-raidus_css{border-color:#df1a23;}
.overseas_guide {
    display: block;}
.overseas_guide>a{background:none;width:37%;}    
.overseas_guide>a:first-child{background:none;width:37%;}
#container_global #contents #global p{    margin: 7% auto !important;}
.border-raidus_css{    border: 10px solid #eee;
    padding-top: 30px;
    border-radius: 50%;
    line-height: 1.4 !important;
    padding-bottom: 8px;font-size: 100% !important;}
.border-raidus_css span{font-size:80% !important;} 
.mobile_arrow{display:inline-block !important;width:auto !important;margin:0 !important;line-height: 160px !important;    color: #9f9f9f !important;
    font-size: 18px !important;}
.overseas_guide>a:first-child .border-raidus_css{border-color:#df1a23 !important;}     
}
@media only screen and (max-width: 380px){
.border-raidus_css {
    border:7px solid #eee;    padding-top: 30px;}
    .overseas_guide>a, .overseas_guide>a:first-child {
    width: 40%;
}
}
@media only screen and (max-width: 340px){
.border-raidus_css {
    border: 8px solid #eee;    padding-bottom: 4px;padding-top: 20px;}
 .overseas_guide>a,.overseas_guide>a:first-child{background:none;width:39%;}  
 #container_global #contents #global p{max-width:98%;}
 #wrap{min-width:280px;}
}
@media only screen and (max-width: 300px){
.overseas_guide>a, .overseas_guide>a:first-child {
    width: 44%;
    margin: 0;
}
}
</style>


<script src="/js/jquery.rwdImageMaps.min.js"></script>
  <script>
  $(function() {
  $('img[usemap]').rwdImageMaps();
});
  </script>
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
			<span><em>매장찾기</em> > <i class="current_page"></i></span>
		</div>
	</div>
	<!-- // current page -->
	<!-- container -->
	<div id="container_global">
		<section id="contents"  class="store_contents">
			
			<div id="contents">
			<h2 class="cont_tit t_center">해외매장 / Global</h2>
			<div id="global" class="section">
				<p>
					<span>해외 진출 국가<strong> 10개국</strong> 해외매장 <strong>총 40개 </strong>매장을 운영 하고 있습니다.</span>
                    <span>We are operating<strong> 40 overseas stores</strong> in <strong>10 countries</strong></span>
				</p>
                <div class="overseas_guide">
						<a href="javascript:void(0);" class="active" style="cursor:default;">
							
							<p style="margin-right: 70px;" class="border-raidus_css">해외 진출<span style="font-weight:500;font-size:16px;line-height: 1.2;">Countries</span><strong>10</strong></p>
						</a>
                        <a class="mobile_arrow">→</a>
						<a href="/store/hongkong.jsp">
							<p class="border-raidus_css">해외매장<span style="font-weight:500;font-size:16px;line-height: 1.2;">Overseas Stores</span><strong>40</strong></p>
						</a>
					</div>
			</div>
			<div id="section2"><!-- 내용 -->
                
				<div class="overseas_wrap active">
                    <div class="overseas_wrap_img_box pc">
                    <img src="https://www.goobne.co.kr/resources/images/contents/store/overseas_bg_1.png" usemap="#image-map">

                    <map name="image-map">
                        <area target="_top" alt="중국" title="중국" href="/store/china.jsp" coords="581,197,638,291" shape="0">
                        <area target="_top" alt="마카오" title="마카오" href="/store/makao.jsp" coords="644,243,695,332" shape="0">
                        <area target="_top" alt="홍콩" title="홍콩" href="/store/hongkong.jsp" coords="699,247,767,337" shape="0">
                        <area target="_top" alt="일본" title="일본" href="/store/japan.jsp" coords="774,152,830,241" shape="0">
                        <area target="_top" alt="말레이시아" title="말레이시아" href="/store/malaysia.jsp" coords="558,342,629,422" shape="0">
                        <area target="_top" alt="베트남" title="베트남" href="/store/vietnam.jsp" coords="796,322,859,405" shape="0">
                        <area target="_top" alt="싱가포르" title="싱가포르" href="/store/singapore.jsp" coords="602,457,670,542" shape="0">
                        <area target="_top" alt="인도네시아" title="인도네시아" href="/store/indo.jsp" coords="676,515,740,602" shape="0">
                        <area target="_top" alt="호주" title="호주" href="/store/hoju.jsp" coords="797,560,860,646" shape="0">
                    </map>
                     </div>
                   <div class="overseas_wrap_img_box mobile">
                    <img src="https://www.goobne.co.kr/resources/images/contents/store/overseas_bg_m.png" usemap="#image-map2">

                        <map name="image-map2">
                            <area target="_top" alt="중국" title="중국" href="/store/china.jsp" coords="373,123,409,187" shape="">
                            <area target="_top" alt="마카오" title="마카오" href="/store/makao.jsp" coords="412,144,449,213" shape="0">
                            <area target="_top" alt="홍콩" title="홍콩" href="/store/hongkong.jsp" coords="419,78,490,140" shape="0">
                            <area target="_top" alt="일본" title="일본" href="/store/japan.jsp" coords="496,88,533,153" shape="0">
                            <area target="_top" alt="말레이시아" title="말레이시아" href="/store/malaysia.jsp" coords="352,213,410,274" shape="0">
                            <area target="_top" alt="베트남" title="베트남" href="/store/vietnam.jsp" coords="508,205,558,261" shape="0">
                            <area target="_top" alt="싱가포르" title="싱가포르" href="/store/singapore.jsp" coords="332,294,429,333" shape="0">
                            <area target="_top" alt="인도네시아" title="인도네시아" href="/store/indo.jsp" coords="421,336,480,393" shape="0">
                            <area target="_top" alt="호주" title="호주" href="/store/hoju.jsp" coords="506,355,557,412" shape="0">
                        </map>
                    </div>    
					
				</div>
			</div>
		</div>
	</div>
	
		
	
			
			<ul class="pager">
			</ul>
			
		</section>
	
	<!-- // container -->
	
	
	<!-- Footer -->
	<jsp:include page="/include/footer.jsp" flush="false"/>
	<!-- //Footer -->
	</div>	
<script src="/resources/js/wscript/store/store.js?v=<%=System.currentTimeMillis() %>"></script>


</body>
</html>