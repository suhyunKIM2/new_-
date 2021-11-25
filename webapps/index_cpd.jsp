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
.cpd_re{width:100%;height:100vh;position:relative;/*background:url(http://www.goobne.co.kr/T_cpd_img/bg_1.png);*/background:#da1b22;}
.cpd_re_web{background:url(http://www.goobne.co.kr/T_cpd_img/img_02_1.png) no-repeat right;position: absolute;left:50%;top:50%;transform: translate(-50%, -50%);width:80%;height:100vh;background-size:100%;}
.text_box_cpd_div img.logo{height:45px;display:block;margin-bottom:7%;}
.text_box_cpd{height:calc(100vh - 20%);width:40%;margin:20px;}
.text_box_cpd_div{height:calc(100vh - 50%);width:100%;margin:40px;    text-align: center;}
.text_box_cpd_div img{height:180px;    margin-top: 10%;}
.cpd_btn{width:100%;    margin:4% 0px;}
.cpd_btn li{width:49%; display: inline-block;text-align: center;border-radius: 20px;padding:20px 0;font-weight: 600;cursor: pointer;}
.cpd_btn li:nth-child(1){background:#fcb832;color:#fff;}
.cpd_btn li:nth-child(2){background:#da1b22;color:#fff;}
.text_info{font-size:20px;font-family:TmoneyRoundWindRegular;font-weight: 600;margin-top:7%;}
.cpd_re_mobile img{width:100%;}
.mobile_btn_box{width:100%; background:#0d8442;}
.mobile_btn_box ul{margin:0;padding:5% 0;width: 100%;text-align: center;}
.cpd_re_mobile{display:none;position: absolute;left:50%;top:50%;transform: translate(-50%, -50%);width: 97%;}
@media only screen and (max-width:1369px){
.cpd_re_web{width: 100%;max-width: 100%;background-size: auto 100%;}
.cpd_re{background:#ededed;}
}
@media only screen and (max-width:1034px){
.cpd_btn{width:88%;}
.text_info{font-size:15px;}
.text_box_cpd_div img{height:127px;}
.text_box_cpd_div img.logo{height:30px;}
.text_box_cpd_div{margin:0;}

}
@media only screen and (max-width:833px){
.cpd_re_mobile{display:block;}
.cpd_re_web{display:none;}
.cpd_re{background:#0d8442;}
.cpd_btn li{width:47%;}
}
</style>
<div class="cpd_re">
    <div class="cpd_re_web">
        <div class="text_box_cpd">
            
            <div class="text_box_cpd_div">
                <img src="http://www.goobne.co.kr/T_cpd_img/logo.svg" class="logo">
                <img src="http://www.goobne.co.kr/T_cpd_img/img_01.svg">
                <div class="text_info">굽네 T-Day 할인받기는 온라인 주문하기로 이용해주세요!</div>
                <ul class="cpd_btn">
                    <li onClick="location.href=''">온라인 주문하기</li>
                    <li onClick="location.href=''">굽네홈페이지</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="cpd_re_mobile">
        
        <img src="http://www.goobne.co.kr/T_cpd_img/m_img_01.png">
        <div class="mobile_btn_box">
           <ul class="cpd_btn">
                    <li onClick="location.href=''">온라인 주문하기</li>
                    <li onClick="location.href=''">굽네홈페이지</li>
                </ul> 
        </div>
    </div>
</div>
