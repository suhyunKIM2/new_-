var loginnet = function(urlstr){
	if (urlstr == "") {
		urlstr = "/order/delivery.aspx";
	}
	$("#userurl").val(urlstr);
	var ofrm = document.loginnet;
	ofrm.action = GnOrderNet+"/auth/authdt.aspx";
	//ofrm.action = "http://localhost:49849/auth/authdt.aspx";
	ofrm.submit();
}

function layerShow(tar) {
	var vCont = tar;
	$(vCont).show()
	$('body').addClass('hidden')
}
function layerHide(tar) {
	var vCont = tar;
	$(vCont).hide()
	$('body').removeClass('hidden')
}