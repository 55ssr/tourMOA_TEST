/* QUICK MENU BTN CLICK FUNC s */
  $(document).ready(function(){
	  /* 여행 상품 찾기  s */
    $(".finder").click(function(){
       	$(".finder").css({
             	color : "pink"
             });
       	$(".airportfinder").css({
         	color : "white"
         });
        $(".airportfind-content").hide("fast");               
        $(".find-content").show("fast");
        });
    /* 여행 상품 찾기  e */
    
    
    /* 항공권 찾기  s */
    $(".airportfinder").click(function(){
        	 $(".finder").css({
               	color : "white"
               });
        	$(".airportfinder").css({
             	color : "pink"
             });
            $(".find-content").hide("fast"); 
            $(".airportfind-content").show("fast");
        });
    /* 항공권 찾기  e */
    
    
    /* X BTN CLICK  s */
    $("#quickCloseBtn").click(function(){
        	$(".airportfinder").css({
              	color : "white"
              });
        	$(".finder").css({
              	color : "white"
              });
            $(".find-content").hide();
            $(".airportfind-content").hide();
        });
    /* X BTN CLICK  e */    
        
    });
  /* QUICK MENU BTN CLICK FUNC e */
	/* TOP BTN CLICK  */
$(function() {
    
    $("#moveTopBtn").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});
