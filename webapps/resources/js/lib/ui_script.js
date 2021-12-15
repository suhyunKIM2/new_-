// JavaScript Document
// 2016 08 22 by bsw 

$(document).ready(function(){
	commonUi();
	formStyle();
	layerPop();
	tabAction();
	scrollItem();
	//pageScroll();
	interiorLayer();
});

function commonUi(){
	//gnb open
	$('.btn_gnb a').click(function(){
		$('body').toggleClass('gnb_open');
		return false;
	});
	
	//현재 gnb active
	gnbActive();
	
	//gnb 오버시 서브메뉴
	var $warp = $('#wrap');
	var $gnb = $('.gnb_1depth');
	var $gnb_focus = $('#gnb li a');
	var $gnb_2depth = $('#gnb .gnb_1depth ul li ul');
	var $gnb_2depth_bg = $('.gnb_bg');
	var $gnbHover = $('#gnb ul li a');
	var $mGnb_list = $('#mGnb .mGnb_wrap li p');
	var $mGnb_list_item = $('.mGnb_wrap li ul li a');
	var $header = $('#header');
	var $container = $('#container');
	var $memberLink = $('.gnb_member_link');
	var $toTop = $('#toTop');
	$gnb.mouseenter(function(){
		gnbDown()
	});
	$gnb.mouseleave(function(){
		gnbUp()
	});
	$gnb_2depth_bg.mouseenter(function(){
		gnbDown()
	});
	$gnb_2depth_bg.mouseleave(function(){
		gnbUp()
	});
	$gnb_focus.focus(function(){
		gnbDown()
	});
	$gnb_focus.blur(function(){
		gnbUp()
	});
	function gnbDown(){
		$gnb_2depth.stop().slideDown();
		$gnb_2depth_bg.stop().slideDown();
	}
	function gnbUp(){
		$gnb_2depth.stop().slideUp();
		$gnb_2depth_bg.stop().slideUp();
	}
	
	$gnbHover.addClass('hvr-underline-from-center');
	$mGnb_list.addClass('hvr-underline-from-center');
	$mGnb_list_item.addClass('hvr-underline-from-center');
	$('.header_sns li a').removeClass('hvr-underline-from-center');

	$mGnb_list.click(function(){
		if($(this).next('ul').is(":visible")){
			return false;
		}else{
			$mGnb_list.next('ul').slideUp();
			$(this).next('ul').slideDown();
		}
	});
	
	//gnb 마이페이지 & 가족게시판
	var $loginMemberMenu = $('.gnb_member_nav');
	
	$loginMemberMenu.children('a').click(function(){
		$loginMemberMenu.children('ul').slideUp();
		$loginMemberMenu.removeClass('on');
		$(this).next('ul').stop().slideToggle();
		$(this).parent('div').addClass('on');
	});
	$loginMemberMenu.mouseleave(function(){
		$loginMemberMenu.removeClass('on');
		$(this).children('ul').slideUp();
	});
	//스크롤시 sticky메뉴
	$(window).scroll(function() {
		if ($(this).scrollTop() > 157){  
			$warp.addClass("sticky_warp");
			$header.addClass("sticky");
			$memberLink.hide();
			$toTop.show();
		 }else{
			 $warp.removeClass("sticky_warp");
			 $header.removeClass("sticky");
			 $memberLink.show();
			 $toTop.hide();
		 }
	});
	
	//탑버튼
	$('html,body').scrollTop();
	$toTop.click(function(){
		$('html, body').animate({
			scrollTop:0
		},500, 'swing');
	});
	
	//현재 페이지 위치
	var $currentPage = $('#contents>h2').text();
	var $pageNav = $('.page_nav');
	if($('#wrap').hasClass('main')){
		$pageNav.hide();
	}else{
		$pageNav.show();
	}
	$('.current_page').text($currentPage);
	
	var $pageNavOpen = $('.page_nav_wrap_mobile h5');
	
	$pageNavOpen.click(function(){
		var $this = $(this);
		console.log(11);
		$this.next('ul').stop().slideToggle();
		$this.parent('div').stop().toggleClass('on');
	});
	
	//공지사항 테이블
	var $notice_list = $('.notice_table table tr td dt');
	$notice_list.click(function(){
		var $this = $(this);
		if(!$this.hasClass('on')){
			$notice_list.removeClass('on');
			$notice_list.next('dd').slideUp();
			$this.addClass('on');
			$this.next('dd').slideDown();
		}else{
			$this.removeClass('on');
			$this.next('dd').slideUp();
		}
	});
	
	function memberNav(){
		var $menu = $('.member_menu p');
		$menu.click(function(){
			var $this = $(this);
			$this.next('ul').stop().slideToggle();
			$this.parent('div').stop().toggleClass('menuSlideOn');
		});
	}
	
	//매장찾기
	storeTableAction();
	
	//메뉴선택
	menuListMobile();
	
	//창업안내 인테리어
	frcsInterior();
	
	//창업안내 창업 Q&A
	franchiseQna()
	
	//브랜드 스토리 해외사업현황
	brand_thumb_hover();
}


function formStyle(){
	//date picker
	$( '.datepicker input').datepicker({
		monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],
		dateFormat: 'yy.mm.dd'
	});
	
	//주소찾기
	$('.search_result span').click(function(){
		var $this = $(this);
		var addr_val = $this.html();
		$('.search_result span').removeClass('selected');
		if(!$this.hasClass('no_result')){
			$this.addClass('selected');
			$('#addr_result').val(addr_val);
		}
	});
	
	//비회원 주문 방법 선택
	$('.order_choose').change(function(){
		var str = $( this ).val();
		$('.order_choose option:selected').each(function(){
			$('.order_way').hide();
			$("#"+str).show();
		});
	});
	
	//전체 동의 
	var $allChk = $('#agree_all input[type=checkbox]');
	$('#agree_all').click(function(){
		var $agreeChk = $(".memberCheck input[type=checkbox]");
		if($allChk.prop("checked")) {
			$agreeChk.prop("checked",true);		
		} else {
			$agreeChk.prop("checked",false);
		}
	});

	//이미지 등록
	var $file_path = $('.upload_file');
	
	$file_path.on("change",function(){
		if(window.FileReader){  // modern browser
		  var $this = $(this);
		  var filename = $this[0].files[0].name;
		}else {  // old IE
		  var filename = $this.val().split('/').pop().split('\\').pop(); 
		}
		$this.siblings('.upload_name').val(filename);
	});
		
}

function layerPop(){
	//레이어팝업
	var $pop_open = $('.pop_open');
	var $pop_close = $('.pop_close');	
	var $pop_bg = $('.modal_pop_bg');
	var $pop_cont = $('.pop_cont');
	var $body = $('body');
	var $moviePopOpen = $('.media_gallery li a');
	
	$pop_open.click(function(e){
		e.preventDefault();
		popOpen()
	});
	
	//유튜브 영상 레이어 팝업 
	$moviePopOpen.click(function(e){
		var $movieLink = $(this).attr('data-movie-link');
		var $movieTitle = $(this).parents('li').children('.media_txt').text();
		e.preventDefault();
		$('.modal_movie').html('<iframe width="100%" height="100%" src="https://www.youtube.com/embed/' + $movieLink + '?&autoplay=1" "frameborder="0" allowfullscreen></iframe>');
		//$('.modal_movie').html('<iframe width="100%" height="100%" src="https://player.vimeo.com/video/' + $movieLink + '?&autoplay=1" "frameborder="0" allowfullscreen></iframe>');
		console.log($movieTitle);
		$('.media_contents .modal_pop_wrap h3').text($movieTitle);
		popOpen()
	});
	
	
	$pop_close.click(function(e){
		e.preventDefault();
		$('.modal_movie').html('');
		popClose()
	});
	
	function popOpen(){
		$pop_bg.show();
		$body.addClass('hidden');
		//$pop_cont.removeClass('bounceOut');
		//$pop_cont.addClass('bounceIn');
	}
	function popClose(){
		//$pop_cont.addClass('bounceOut');
		$pop_bg.hide();
		$body.removeClass('hidden');
		//$pop_cont.removeClass('bounceIn');
		//$pop_bg.delay(400).fadeOut(300);
	}	
}


function tabAction(){
	//탭
	var $tabBtn = $('.tab li a');
	var $modalTabBtn = $('.modal_tab li a');
	var $tabContents = $('.tab_contents');
	var $tabModalContents = $('.tab_modal_contents');

	$.each($tabBtn,function(index,item){
		$(item).attr("data-value",index+1);	
	});
	
	$.each($modalTabBtn,function(index,item){
		$(item).attr("data-value",index+1);
	});

	$tabBtn.click(function(e){
		var $this = $(this);
		var $tabIndex = $this.attr("data-value");
		var $tabMenu = $('.tab li');
		
		e.preventDefault();
		$tabMenu.removeClass('on');
		$this.closest('li').addClass('on');
		$tabContents.hide();
		$('.tab_contents'+ $tabIndex).show();
	});
	
	
	$modalTabBtn.click(function(e){
		var $this = $(this);
		var $tabIndex = $this.attr("data-value");
		var $tabMenu = $('.modal_tab li');
		
		e.preventDefault();
		$tabMenu.removeClass('on');
		$this.closest('li').addClass('on');
		$tabModalContents.hide();
		$('.tab_modal_contents'+ $tabIndex).show();
	});
	
	//login tab
	var $loginTab = $('.login_btn_wrap a');
	$loginTab.click(function(e){
		var $this = $(this);
		$loginTab.removeClass('on');
		$this.addClass('on');
		$('div.login_form, div.non_login_order, div.non_login_search').hide();
		
		var tab_show = $('.on').children('span').attr('class');
		$('.' + tab_show).show();
	});
	
}

//메뉴선택 애니메이션
function menuContentAnimate(){
	var $menuContents = $('.order_menu_select li');
	$menuContents.children('img').addClass('hvr-grow-rotate');
	$menuContents.each(function(showIn){
		var $this = $(this);
		$(this).delay(showIn * 400).fadeIn().addClass('fadeInRight ' + $(".order_menu_select li").data('animation'));
	});
}

//매장찾기
function storeTableAction(){
	var $storeBtn = $('.store_search_table table tbody tr td a');
	var $newstoreBtn = $('.new_store_wrap .thumb_gallery div span a');
	$storeBtn.click(function(e){
		e.preventDefault();
		$('.store_search_table table tbody tr').removeClass('on')
		$(this).parent('td').parent('tr').addClass('on');
	})
	$newstoreBtn.click(function(e){
		e.preventDefault();
		$('.new_store_wrap .thumb_gallery li div').removeClass('on')
		$(this).parent('span').parent('div').addClass('on');
	})
}

//메뉴선택
function menuListMobile(){
	var $menuList = $('.menu_selection_mobile h5');
	var $menusubList = $('.menu_list_mobile'); 
	$menuList.click(function(){
		$menusubList.stop().slideToggle();
		$(this).parent('div').stop().toggleClass('on');
	});
	$menusubList.children('li').children('a').click(function(e){
		e.preventDefault();
		$menuList.text($(this).text());
		$menusubList.slideUp();
		$menuList.parent('div').removeClass('on');
		
	});
}

/*창업안내 인테리어*/
//인테리어 갤러리 섬네일 마우스 오버
function frcsInterior(){
	var $interiorThumb = $('.frcs_contents_wrap li').children('a');
	$interiorThumb.hover(function(){
		$interiorThumb.removeClass('zoom_In zoom_Out');
		
		if(!$(this).hasClass('zoom_In')){
			$interiorThumb.addClass('zoom_Out');
		}
		$(this).addClass('zoom_In');
	},function(){
		$interiorThumb.removeClass('zoom_In zoom_Out');
	})
}

//스크롤 애니메이션
function scrollItem(){
	var $elements = $( '*[data-animation]' );
	var h = $(window).height()
	$elements.each( function( i, el ) {
		var $el = $( el ),
		    animationClass = $el.data('animation'),
		    $delay = $el.data('delay'),
		    $duration = $el.data('duration');
		
		if($delay>0){
			$el.css({'animation-delay':$delay+'s'})
		}
		if($duration>0){
			$el.css({'animation-duration':$duration+'s'})
		}
		$el.addClass( animationClass );
		$el.addClass( 'animated' );
		var t = $el.offset().top;
		if(t > h){
			$el.addClass('wait-animation');
		}
		$el.one('inview', function(){
			if($el.hasClass('wait-animation')){
				$el.removeClass('wait-animation');
			}
		});
	});
}
/*
function frcsLightBox(){
	//섬네일 클릭하면 해당 이미지 경로로
	$.tosrus.defaults.media.image = {filterAnchors: function( $anchor ) {return $anchor.attr( 'href' ).indexOf( 'lorempixel.com' ) > -1;}};
	$('#example-1 a').tosrus({
		buttons: 'inline',
		pagination	: {
			add			: true,
			//type		: 'thumbnails'
		}
	});
}
*/
/*function pageScroll(){
	var $scrollTop = $(this).scrollTop();
	var $rightFixedNav = $('#rightFixedNav');
	var $currentNavOn = $('#rightFixedNav li')
	
	//윈도우 로드후 스크롤 섹션영역에 따라 글자 색상 다르게 로드됨
	setTimeout(function() {
		frcsNaviBlack()
	}, 100);

    $(window).scroll(function() {
    	var $scrollTop = $(this).scrollTop() + $('#gnb').height() + 10;
    	var $rightFixedNav = $('#rightFixedNav');
    	frcsNaviBlack()
    	
    	$(".section").each(function() {
			var el = $(this),
			className = el.attr("id");
			
			if (el.offset().top - 50  < $scrollTop ) {
				$('#rightFixedNav li').removeClass('active')
				$('#rightFixedNav .'+ className).addClass('active')
			} else {
				$rightFixedNav.removeClass(className);
			}
		});
    });
	//브랜드 사이트 오른쪽 네비게이션 메뉴 클릭시 이동
    $rightFixedNav.children('li').children('a').click(function(e){            
		e.preventDefault();
		if($('.rnb_home').data('clicked',true)){
		}
		$('html,body').animate({scrollTop:$(this.hash).offset().top - $('#gnb').height()}, 500);

		frcsNaviBlack()
	});
    
    //브랜드 사이트 오른쪽 네비게이션 (일정값 이상의 스크롤시 position값  fixed)
    $.fn.followTo = function ( pos ) {
        var $this = this,
            $window = $(window);
        $window.scroll(function(){
            if ($window.scrollTop() > pos) {
                $this.css({position: 'fixed',top: '125px'});
            } else {
                $this.css({position: 'absolute',top: '170px'});
            }
        });
    };
    $('#rightFixedNav').followTo($('#container').offset().top);
    
    //브랜드 사이트 오른쪽 네비게이션 (프랜차이즈 페이지 특정섹션에서 글자색 변함)
    function frcsNaviBlack(){
    	if($('.frcs1, .frcs4, .frcs7, .brand3').hasClass('active')){//브랜드스토리,창업정보 스크롤시 특정 영역에서 네비게이션 색상바뀜
        	$('#rightFixedNav').addClass('navBgBlack')
        }else{
        	$('#rightFixedNav').removeClass('navBgBlack')
        }
    }
}*/

function interiorLayer(){
	layerCenter();
	
	//갤러리 열기(프렌차이즈)
	$('.item').children('a').click(function(e){
		e.preventDefault();
		$('body').css('overflow','hidden')
		$('.interior_layer').show();
		$('.interior_layer_box').center(true);
		var $galleryImg = $(this).children('img').data('img');
		//var $galleryImgAlt = $(this).children('img').attr('alt');
		$('.gallery-top img').attr('src', '/resources/images/contents/franchise/interior/'+ $galleryImg +'.jpg');
		$('.gallery-top img').attr('alt', $galleryImgAlt);
		
		//갤러리 열었을때 이미지에 따라서 좌우 화살표 표기
		var $imgIndex = $(".gallery-top img").prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		$('.gallery_next, .gallery_prev').show();
		if($imgNum == 1){
			$('.gallery_prev').hide();
		}else if($imgNum == 12){
			$('.gallery_next').hide();
		}
	});
	
	//갤러리 열기(브랜드 스토리)
	$('.global_item').children('a').click(function(e){
		e.preventDefault();
		$('body').css('overflow','hidden')
		$('.interior_layer').show();
		var $galleryImg = $(this).data('img');
		var $galleryTopImg = $('.gallery-top img');
		
		var $layer_box_tit = $('.'+ $galleryImg).children('p').text();;
		var $layer_box_txt = $('.'+ $galleryImg).children('span').text();
		
		$galleryTopImg.attr('src', '/resources/images/contents/brand/global/'+ $galleryImg +'.jpg');
		
		$('.interior_layer_box h2').text($layer_box_tit);
		$('.interior_layer_box p').text($layer_box_txt);
	
		
		//갤러리 열었을때 이미지에 따라서 좌우 화살표 표기
		var $imgIndex = $galleryTopImg.prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		$('.gallery_next, .gallery_prev').show();
		if($imgNum == 1){
			$('.gallery_prev').hide();
		}else if($imgNum == 9){
			$('.gallery_next').hide();
		}
	});
	
	
	//갤러리 닫기
	$('.gallery_close').click(function(e){
		e.preventDefault();
		$('body').css('overflow','auto')
		$('.interior_layer').hide();
		//좌우 화살표 초기화
		$('.gallery_prev').show();
		$('.gallery_next').show();
	});
	
	//섬네일 네비게이션
	$('.gallery-thumbs').owlCarousel({
		//autoPlay: 3000, //Set AutoPlay to 3 seconds
		items : 5,
		itemsDesktop : [1000,5], 
		itemsDesktopSmall : [900,3], 
		itemsTablet: [480,2],
		itemsMobile : false
		
	});
	
	//갤러리 좌우버튼 창업정보
	$('.franchise_layer .gallery_next').click(function(e){
		var $imgIndex = $(".gallery-top img").prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		e.preventDefault();
		$('.gallery_prev').show();
		$(".gallery-top img").attr('src','/resources/images/contents/franchise/interior/interior_layer_img'+ parseInt($imgNum + 1 ) +'.jpg');
			
		if($imgNum + 1 == 12){
			$('.gallery_next').hide();
		}else{
			$('.gallery_next').show();
		}
	})
	$('.franchise_layer .gallery_prev').click(function(e){
		var $imgIndex = $(".gallery-top img").prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		e.preventDefault();
		$('.gallery_next').show();
		$(".gallery-top img").attr('src','/resources/images/contents/franchise/interior/interior_layer_img'+ parseInt($imgNum - 1 ) +'.jpg');
		if($imgNum - 1 == 1){
			$('.gallery_prev').hide();
		}else{
			$('.gallery_prev').show();
		}
	})
	
	//갤러리 좌우버튼 브랜드스토리
	$('.brand_layer .gallery_next').click(function(e){
		var $imgIndex = $(".gallery-top img").prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		var $currentTit = $('.brand_layer_img'+ parseInt($imgNum + 1 )).children('p').text();
		var $currentTxt = $('.brand_layer_img'+ parseInt($imgNum + 1 )).children('span').text();

		e.preventDefault();
		$('.gallery_prev ').show();
		$(".gallery-top img").attr('src','/resources/images/contents/brand/global/brand_layer_img'+ parseInt($imgNum + 1 ) +'.jpg');
		$('.interior_layer_box h2').text($currentTit);
		$('.interior_layer_box p').text($currentTxt);
		
		if($imgNum + 1 == 9){
			$('.gallery_next').hide();
		}else{
			$('.gallery_next').show();
		}
	})
	
	$('.brand_layer .gallery_prev').click(function(e){
		var $imgIndex = $(".gallery-top img").prop('src').match(/(\w*)\.\w{3,4}$/)[1];
		var $imgNum = parseInt($imgIndex.replace(/[^0-9\.]/g, ''), 10);
		var $currentTit = $('.brand_layer_img'+ parseInt($imgNum - 1)).children('p').text();
		var $currentTxt = $('.brand_layer_img'+ parseInt($imgNum - 1)).children('span').text();
		
		e.preventDefault();
		$('.gallery_next').show();
		$(".gallery-top img").attr('src','/resources/images/contents/brand/global/brand_layer_img'+ parseInt($imgNum - 1 ) +'.jpg');
		$('.interior_layer_box h2').text($currentTit);
		$('.interior_layer_box p').text($currentTxt);
		
		if($imgNum - 1 == 1){
			$('.gallery_prev').hide();
		}else{
			$('.gallery_prev').show();
		}
	})
}

//레이어 팝업 센터에 띄우기
function layerCenter(){
	$.fn.center = function(parent) {
		if (parent) {
			parent = this.parent();
		} else {
			parent = window;
		}
		this.css({
			"position": "relative",
			"top": ((($(window).height() - this.outerHeight()) / 2) + $(window).scrollTop() + "px")
		});
		return this;
	}
}

//브랜드 스토리 해외사업 현황
function brand_thumb_hover(){
	var $brand5_interior_item = $('.brand5_interior_thumb ul li');
		
	$brand5_interior_item.children('a').hover(function(){
		var $this = $(this);
		$brand5_interior_item.removeClass('on');
		$this.parent('li').addClass('on');
	},function(){
		$brand5_interior_item.removeClass('on');
	});
}


function franchiseQna(){
	
	var $frcsQna = $('.frcs_faq_wrap dl');
	
	$frcsQna.children('dt').click(function(){
		var $this = $(this);
		//$frcsQna.removeClass('on');
		//$this.parent('dl').toggleClass('on');
		$this.parent('dl').children('dd').stop().slideToggle();
			
	});
}


//해당페이지 GNB 목록 active
function gnbActive(){
	var $gnbTit = $('.page_nav_wrap_web span em').text();
	var $gnbTxt = $('#contents .cont_tit').text();
	//메인은 GNB OFF
	$(".main .gnb_1depth ul li ul li").removeClass('on');
	$(".main .mGnb_wrap li ul li").removeClass('on');
	
	if($('.page_nav_wrap_web span').hasClass('etc_page')){//이용약관 및 카테고리 없는 페이지들 GNB OFF
		$(".gnb_1depth ul li ul li").removeClass('on');
		$(".mGnb_wrap li ul li").removeClass('on');
	}else{
		$(".gnb_1depth a:contains('" + $gnbTit + "')").parent('li').addClass('on');
		$(".gnb_1depth ul li ul li").removeClass('on');
		$(".gnb_1depth ul li ul li a:contains('" + $gnbTxt + "')").parent('li').addClass('on');
		$(".mGnb_wrap p:contains('" + $gnbTit + "')").addClass('on');
		$(".mGnb_wrap li ul li:contains('" + $gnbTxt + "')").addClass('on');
		$(".mGnb_wrap p:contains('" + $gnbTit + "')").next('ul').show();
	}
}

//메뉴보기 스와이프 메뉴
function menuListSwipe(){
	$('.menuItem a').click(function(e){
		//e.preventDefault();
		e.stopImmediatePropagation();
		$('.menuItem').removeClass('on');
		$(this).parent('.menuItem').addClass('on');
		//console.log('test');
	});
	
}