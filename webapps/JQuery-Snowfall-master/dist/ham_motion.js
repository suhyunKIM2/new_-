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

});
