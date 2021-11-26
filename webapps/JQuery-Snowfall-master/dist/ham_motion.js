$(document).ready(function(){
 
    $('#hamburger-11').on('click', function(){
        $('.close_btn').addClass('is-active');
        $('#hamburger-11').removeClass('is-active');
        $('.menu_bg').show(); 
        $('.sidebar_menu').show().animate({
            right:0
        },500); 
    });
    $('.close_btn').on('click', function(){
        $('.close_btn').removeClass('is-active');
         $('.close_btn').addClass('active-8');
        $('#hamburger-11').removeClass('is-active');
        $('.menu_bg').hide(); 
        $('.sidebar_menu').animate({
            right: '-' + 50 + '%'
            },500); 
                   /* },function(){
                        $('.sidebar_menu').hide();          
                    });  */
    });

/*아코디언메뉴*/

$(".menu_wrap li p").hide();

  // $("ul > li:first-child a").next().show();
  $(".menu_wrap li a").click(function(){
    $(this).next().slideToggle(300);
    // $(this).next().slideDown(300);
    $(".menu_wrap li a").not(this).next().slideUp(300);
    $(".menu_wrap li a").not(this).children('#hamburger-90').removeClass('is-active');
    return false;
  });
  $(".menu_wrap li a").eq(0).trigger("click");
 });


