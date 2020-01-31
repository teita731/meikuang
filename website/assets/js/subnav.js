/**
* author denggao
*/

(function ($) {
    $(".subnav dt").click(function(){
        $(this).toggleClass("active").siblings(".subnav dt").removeClass("active");
        $(this).next("dd").slideToggle(300).siblings("dd").slideUp(500);
    });
    $(".nav_title").click(function(){
        $(this).toggleClass("active").siblings(".nav_title").removeClass("active");
        $(this).next(".nav_cont").slideToggle(300).siblings(".nav_cont").slideUp(500);
    });

    $(".subnav dt").each(function(){
        if($(this).hasClass("active")){
            $(this).click();
        }
    });
}(jQuery));