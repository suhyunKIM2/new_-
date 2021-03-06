
<style>
* {padding:0;margin:0;list-style: none;text-decoration: none;}<br>
@font-face {
    font-family: 'TmoneyRoundWindRegular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.section1 {background:url(/resources/images/main/20220207_micro/PC_bg.png);position:relative; background-size: cover; background-repeat: no-repeat; cursor: pointer;position:relative;background-position: center;}
.mobile {display: none;}
.section1 .logo img {height: 30px;padding: 10px;}   
.container{position:absolute;left:0;top:0;width:100%;height:100%;}
.container_position{position:relative;width:100%;height:100%;}
.container_position li{position:absolute;bottom:0;width: 100%;height: 100%;    margin-left: -100px;}
.container_position li:nth-child(2){    top: 50%;
    left: 50%;
    width: auto;
    height: auto;
    transform: translate(-50%,-50%);
    margin-left:100px;
    margin-top: -6%;}
.container_position li:nth-child(1) img{width:auto;height:100%;  object-position: center;object-fit: cover;}
.container_position li:nth-child(2) img{width:100%;height:auto;  object-position: right;float:right;object-fit: cover;}
.container_position li:nth-child(3) img{width:auto;height:100%;  object-position: center;object-fit: cover;}
.container_position li.img_04_li{width:53%;right:-4%;bottom:50px;height:auto;}
.container_position li.img_04_li img{width:100%;}
.btn_container{    width: auto;
    position: absolute;
    left: 50%;
    bottom: 50px;
    transform: translateX(-50%);}
.btn_container li{display:inline-block;}
.btn_container li img{width:100%;}
.mobile_img{display:none;}
body, html,.scroll-container section{min-height: 800px;overflow-y:auto;overflow-x: hidden;}
@media only screen and (max-width: 1722px){
.container_position li:nth-child(2){left:auto;transform: translate(0,-50%);right: 13%;}
}
@media only screen and (max-width: 1645px){
.btn_container{margin-left:0;}
}
@media only screen and (max-width: 1490px){
.container_position li:nth-child(1) img{object-position: left;}
.container_position li:nth-child(2){width:44%;}
.btn_container li{width:32%;}
.btn_container{right:0;}
}
@media only screen and (max-width: 1280px){
.container_position li:nth-child(2){    right: 2%;}
.container_position li.img_04_li{width:68%;}

}
@media only screen and (max-width: 1100px){
.pc_img{display: none;}
.mobile_img{display:block;}
.section1 {background:url(/resources/images/main/20220207_micro/PC_bg.png);position:relative; background-size: cover; background-repeat: no-repeat; cursor: pointer;position:relative;background-position: right;}
.container_position li.mobile_img{bottom:114px;margin-left: 0;width:70%;height:auto;left:50%;}
.container_position li {margin-left: -8%;left: 50%;transform: translateX(-50%);text-align: center;height: calc(100% - 79px);width:auto;}
.container_position li:nth-child(3) img {width:100%;height: auto;position: absolute;left: 50%;transform: translateX(-50%);bottom: 0;}
.btn_container { right: auto; bottom: 0;left: 50%;transform: translateX(-50%); height: 79px; width:80%;text-align: center;}
body, html,.scroll-container section{min-height: 100%;overflow: hidden;}

}
/* 태블릿, 아이패드 */
@media only screen and (min-device-width : 768px) and (max-device-height : 1023px) {
.container_position li:nth-child(3) img{width:80% !important;}
}

@media only screen and (min-device-width : 1024px) and (max-device-height : 1366px){
.container_position li:nth-child(3) img {
    width: 80% !important;
}
}
@media only screen and (max-height:823px){
.container_position li:nth-child(3) img{width:27% !important;}

}
@media only screen and (max-width: 1100px){
.container_position li:nth-child(3) img {
    width: 55% !important;}
}
@media only screen and (min-device-width: 1280px) and (max-device-height: 800px){
.container_position li:nth-child(3) img {width: 43% !important;}
.container_position li.img_04_li {width: 56%;right: 0;}
}
@media only screen and (min-device-width : 1024px) and (max-device-height : 768px) {
.container_position li:nth-child(3) img{width:50% !important;}
}

@media only screen and (min-device-width: 1024px) and (max-device-height: 600px){
.container_position li {
    margin-left: 0;
    left: 0;
    transform: translateX(-0%);
    text-align: center;
    height: 100%;
    width: auto;
}
.container_position li.img_04_li {
    width: 52%;
    display: block;
    right: 0;
    left: auto;
}
.container_position li.mobile_img {
    right: 0;
    bottom: 55%;left:auto !important;    width: 60%;}
.container_position li:nth-child(3) img {
    width: 70% !important;
}    
}
@media only screen and (max-width:749px){
.btn_container {width:100%;}
.container_position li:nth-child(3) img{width:80% !important;    height: auto;}
}
@media (max-width:736px) and (max-height:512px){
.container_position li:nth-child(3) img{width:33% !important;}

}

@media only screen and (max-width:500px){
.container_position li:nth-child(3) img{width:100% !important;}
.container_position li.mobile_img{width:80%;}
}
@media only screen and (max-width: 280px){
.btn_container li {
    width: 31%;}
}
</style>
</head>
<script>
function lnk(){
	var link = 'https://www.goobne.co.kr/index_1.jsp';
//    window.location.href = link;        
 //   window.location.replace(link);     
    window.open(link);  
}
function lnk1(){
    var link = 'https://order.goobne.co.kr:8481/login/login.aspx';
 //   window.location.href = link;        
 //   window.location.replace(link);     
    window.open(link);  
}

/*$(".btn a").click(function(e) {
   e.stopPropagation();
});*/

</script>

<body id="page-top" class="index darkBg">
	 <div id="main" class="scroll-container">
         <a href="https://www.goobne.co.kr/index_1.jsp">
		<section class="section1" id="section1" style="cursor: pointer;">
			<div class="logo">
				<img src="/resources/images/main/211209_micro_bg/BI.png">
			</div>
			<div class="container">
				<ul class="container_position">
                    <li class=""><img src="/resources/images/main/20220207_micro/img_01.png"></li>
                    <li class="pc_img"><img src="/resources/images/main/20220207_micro/img_05_2.png"></li>
                    <li class="mobile_img"><img src="/resources/images/main/20220207_micro/img_05_2.png"></li>
                    <li class="pc_img img_04_li"><img src="/resources/images/main/20220207_micro/img_04.png"></li>
                </ul>
                <ul class="btn_container">
                    <li><a href="https://www.goobne.co.kr/menu/new_bg.jsp"><img src="/resources/images/main/20211214_micro/btn_01.png"></a></li>
                    <li><a href="https://order.goobne.co.kr:8481/login/login.aspx" target="_blank"><img src="/resources/images/main/20211214_micro/btn_02.png"></a></li>
                    <li><a href="https://www.instagram.com/goobne___official/" target="_blank"><img src="/resources/images/main/20211214_micro/btn_03.png"></a></li>
                </ul>
			</div>
		</section>
        </a>
	</div>
			<!---
			<div class="mobile">
				<span onClick="javascript:lnk();">굽네 홈페이지 테스트</span>
                <span onClick="javascript:lnk1();">온라인 주문하기</span>
            </div> --->


</body>
<!--<div class="cpd_re">
    <div class="text_box_cpd_div">
                <img src="http://www.goobne.co.kr/T_cpd_img/logo.svg" class="logo">
                <img src="http://www.goobne.co.kr/T_cpd_img/img_01.svg" class="name_svg">
                <div class="text_info">굽네 T-Day 할인받기는 온라인 주문하기로 이용해주세요!</div>
                <ul class="cpd_btn">
                    <li onClick="javascript:lnk1();">온라인 주문하기</li>
                    <li onClick="javascript:lnk();">굽네홈페이지</li>
                </ul>
            </div>
    <div class="cpd_re_web">
        <div class="text_box_cpd"></div>
    </div>
    
    <div class="cpd_re_mobile">
        <img src="http://www.goobne.co.kr/T_cpd_img/logo.svg" class="logo mobile_img_01">
        <img src="http://www.goobne.co.kr/T_cpd_img/img_01.svg" class="mobile_img_02">
        <img src="http://www.goobne.co.kr/T_cpd_img/img_03_1.png" class="mobile_img_03">
        <div class="mobile_btn_box">
           <ul class="cpd_btn">
                    <li onClick="javascript:lnk1();">온라인 주문하기</li>
                    <li onClick="javascript:lnk();">굽네홈페이지</li>
                </ul> 
        </div>
    </div>
</div>-->
<script src="/onepage_fullscreen/full-page-scroll.js"></script>
	<script type="text/javascript">
		new fullScroll({
			displayDots: false,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease'
		});
	</script>