<title>굽네치킨</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<style>
* {padding:0;margin:0;list-style: none;text-decoration: none;}
@font-face {
    font-family: 'TmoneyRoundWindRegular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.cpd_re{width:100%;height:100vh;position:relative;background:url(http://www.goobne.co.kr/T_cpd_img/bg_1.png);/*background:#ebebed;*/    overflow: auto;}
.cpd_re_web{background:url(http://www.goobne.co.kr/T_cpd_img/img_03_1.png) no-repeat right;position: absolute;left:50%;top:50%;transform: translate(-50%, -50%);width:80%;height:100vh;background-size:auto 100%;}
.text_box_cpd_div img.logo{height:30px;display:block;margin-bottom:7%;margin-top:2%;margin-left: 3%;}
.text_box_cpd{height:calc(100vh - 20%);width:40%;margin:20px;}
.text_box_cpd_div{height:94vh;width:45%;text-align: center;background: #fcb832;    position: fixed;    z-index: 9;border-top-right-radius: 50%;
    border-bottom-right-radius: 50%;
    top: 3%;}
.text_box_cpd_div img{    width: 50%;   margin-top: 10%;}
.cpd_btn{width:86%;    margin:8% auto;}
.cpd_btn li{width:49%; display: inline-block;text-align: center;border-radius: 20px;padding:20px 0;font-weight: 600;cursor: pointer;}
.cpd_btn li:nth-child(1){background:#058442;color:#fff;}
.cpd_btn li:nth-child(2){background:#da1b22;color:#fff;}
.text_info{width:86%; font-size:20px;font-family:TmoneyRoundWindRegular;font-weight: 600;    margin: 7% auto;}
.mobile_btn_box{width:100%; }
.mobile_btn_box ul{margin:0;padding:5% 0;width: 100%;text-align: center;}
.cpd_re_mobile{display:none;position: absolute;left:50%;top:2%;transform: translate(-50%, 0);width: 97%;text-align: center;}
.cpd_re_mobile .mobile_img_01{height:26px;float:left;}
.cpd_re_mobile .mobile_img_02{height:auto;width: 24%;float:right;}
.cpd_re_mobile .mobile_img_03{width:100%;}
@media only screen and (max-width:1369px){
.cpd_re_web{width: 100%;max-width: 100%;background-size: auto 100%;}
/*.cpd_re{background:#ededed;}*/
}
@media only screen and (max-width:1300px){
.text_info{text-align:left;}
.text_box_cpd_div img.name_svg{width:67%;}
}
@media only screen and (max-width:1034px){
.cpd_btn{width:88%;}
.text_info{font-size:15px;}
.text_box_cpd_div img.logo{height:30px;}
.text_box_cpd_div{margin:0;}
.text_box_cpd_div img{    width: 80%;}
.cpd_re_mobile{display:block;}
.cpd_re_web,.text_box_cpd_div{display:none;}
.cpd_btn li{width:47%;}
}

</style>
<div class="cpd_re">
    <div class="text_box_cpd_div">
                <img src="http://www.goobne.co.kr/T_cpd_img/logo.svg" class="logo">
                <img src="http://www.goobne.co.kr/T_cpd_img/img_01.svg" class="name_svg">
                <div class="text_info">굽네 T-Day 할인받기는 온라인 주문하기로 이용해주세요!</div>
                <ul class="cpd_btn">
                    <li onClick="">온라인 주문하기</li>
                    <li onClick="location.href='http://www.goobne.co.kr/'">굽네홈페이지</li>
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
                    <li onClick="">온라인 주문하기</li>
                    <li onClick="location.href='http://www.goobne.co.kr/'">굽네홈페이지</li>
                </ul> 
        </div>
    </div>
</div>
