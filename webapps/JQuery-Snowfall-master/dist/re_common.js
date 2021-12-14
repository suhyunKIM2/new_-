 $( document ).ready( function() {
     /*var filter = "win16|win32|win64|mac|macintel"; 
     if ( navigator.platform ) { 
     if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ) { 
     //mobile 
     $('.section1').attr('id','link_01');
    $('.section2').attr('id','link_02');
    $('.section3').attr('id','link_03');
    $('.section4').attr('id','link_04');
    $('.section5').attr('id','link_05');
    $('.section1 .arrow-container').attr('href','#link_02');
    $('.section2 .arrow-container').attr('href','#link_03');
    $('.section3 .arrow-container').attr('href','#link_04');
    $('.section4 .arrow-container').attr('href','#link_05');
    $('.section5 .arrow-container').attr('href','#link_01');
     $.fn.fullpage.destroy('all');
     
     } else { 
     //pc 
     } }*/

 
/* $(window).resize(function() { 
	 	//if($(window).width() >767) { 
			
			 if ($(window).width() >=0) {
					 self.name = 'reload';
					 self.location.reload(true);
				 }
				 else self.name = ''; 
               
		//	} 
			
	     }); */

 $(window).resize(function() { 
	 	//if($(window).width() >767) { 
			
			 if ($(window).width() >=700) {
					 self.name = 'reload';
                     self.location.reload(true);
                      
				 }
				 else self.name = ''; 
               
		//	} 
			
	     });
         
    if ($(window).width() < 1025) {
            $('.section1').attr('id','link_01');
            $('.section2').attr('id','link_02');
            $('.section3').attr('id','link_03');
            $('.section4').attr('id','link_04');
            $('.section5').attr('id','link_05');
            $('.section1 .arrow-container').attr('href','#link_02');
            $('.section2 .arrow-container').attr('href','#link_03');
            $('.section3 .arrow-container').attr('href','#link_04');
            $('.section4 .arrow-container').attr('href','#link_05');
            $('.section5 .arrow-container').attr('href','#link_01');
            $.fn.fullpage.destroy('all');
            
        }if ($(window).height() < 821) {
            $('.section1').attr('id','link_01');
            $('.section2').attr('id','link_02');
            $('.section3').attr('id','link_03');
            $('.section4').attr('id','link_04');
            $('.section5').attr('id','link_05');
            $('.section1 .arrow-container').attr('href','#link_02');
            $('.section2 .arrow-container').attr('href','#link_03');
            $('.section3 .arrow-container').attr('href','#link_04');
            $('.section4 .arrow-container').attr('href','#link_05');
            $('.section5 .arrow-container').attr('href','#link_01');
            $.fn.fullpage.destroy('all');
            
        }
        else {
            new fullScroll({
            displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true,
            
            });
        }
        
        
     
     

    });



    /*if ($(window).width() < 768) {
            $.fn.fullpage.destroy('all');
        }
        else {
            new fullScroll({
            scrollBar: true,
            scrollOverflow: true,
            responsiveWidth: 768,
            });
        }*/
    
		/*new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true
            
		});*/
        /*$( document ).ready( function() { 
        new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease',
            scrollOverflow: true,
		});
        });*/
    

    
    /*----section1_slick-------*/
    var $status = $('.pagingInfo');
    var $slickElement = $('.single-item');
   
    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status.text(i + '/' + slick.slideCount);
    });
    


    
    $('.single-item').slick({
      swipe : true,
      autoplay:true,
      autoplaySpeed:4000,	
      /*fade:true,*/
      adaptiveHeight:true,
      cssEase:"ease",
      easing:"ease",
      centerMode: true,
      centerPadding: '0',
      pauseOnHover: false, 
      dots: true,
      //autoplay : true,			// 자동 스크롤 사용 여부
      //autoplaySpeed : 3000,
      nextArrow: '<small class="slick-next">&rsaquo;</small>',
      prevArrow: '<small class="slick-prev">&lsaquo;</small>',
      customPaging : function(slider, i) {
      var thumb = $(slider.$slides[i]).data();
      // return '<a>'+(i+1)+'</a>';
      return '<a>&bull;</a>';
    },
    });
    
    /*메인롤링배너 viedo부분*/
    var $slickElement = $('.single-item');
    $slickElement.on('afterChange', function(event, slick, currentSlide) {
        var vid = $(slick.$slides[currentSlide]).find('#vid');
        if (vid.length > 0) {
          $slickElement.slick('slickPause');
          $(vid).get(0).play();
        }
      });

      $('#vid').on('ended', function() {
        console.log('Video Complete')
        $slickElement.slick('slickPlay');
      });


        var $bg = $('.section1');
        var $slickElement = $('.single-item');
        $(".single-item").on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        var i = (currentSlide ? currentSlide : 0) + 1;
            $bg.attr('class','section1').toggleClass('bg' + i);
    });



 /*----//------*/
   
    /*----section2_slick-------*/
    var $status02 = $('.pagingInfo02');
    var $status02_1 = $('.pagingInfo02_1');
    var $slickElement2 = $('.single-item02');
    $slickElement2.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide :0) + 1;
        var i2 = (2 - -i)/3
        $status02.text(i2 + '/' + slick.slideCount/3);
    });
     $slickElement2.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status02_1.text(i + '/' + slick.slideCount);
    });
    $('.single-item02').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
      dots: true,
      autoplay : true,			// 자동 스크롤 사용 여부
      autoplaySpeed : 3000,

          nextArrow: '<small class="slick-next">&rsaquo;</small>',
          prevArrow: '<small class="slick-prev">&lsaquo;</small>',
          customPaging : function(slider, i) {
          var thumb = $(slider.$slides[i]).data();
          // return '<a>'+(i+1)+'</a>';
          return '<a>&bull;</a>';
        },
        responsive: [
        {
          breakpoint: 799,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: true,
            centerMode:true,
            centerPadding:'20vw',
            cssEase: 'linear',
            speed: 200,
            useTransform: true,
            
          }
        },
        ]
        }); 
/*----//------*/ 
    
    
    /*----section3_slick-------*/
   
    $('.single-item03').slick({
      swipe : true,
      autoplay:false,
      autoplaySpeed:500,	
      /*fade:true,*/
      cssEase:"ease",
      easing:"ease",
      centerMode: true,
      centerPadding: '0',
      dots: true,
      arrows:false,
      autoplay : true,			// 자동 스크롤 사용 여부
      autoplaySpeed : 3000,
      customPaging : function(slider, i) {
      var thumb = $(slider.$slides[i]).data();
      // return '<a>'+(i+1)+'</a>';
      return '<a>&bull;</a>';
    },
    });

 /*----//------*/    
    


