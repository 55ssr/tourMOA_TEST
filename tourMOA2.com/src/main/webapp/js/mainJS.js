/* QUICK MENU BTN CLICK FUNC s */

  $(document).ready(function(){
	  
	  
	  /* 여행 상품 찾기  s */
    $(".finder").click(function(){
       	$(".finder").css({
             	color : "#7daaf9"
             });
       	$(".airportfinder").css({
         	color : "white"
         });
       	$(".preparing").slideUp("fast");
       	$(".btn_m_pop_close").show();
        $(".airportfind-content").hide("fast");  
        $(".domesticfind-content").hide();
        $(".find-content").show("fast");
    });
    /* 여행 상품 찾기  e */
    
    
    /* 항공권 찾기  s */
    $(".airportfinder").click(function(){
    	$(".finder").css({
    		color : "white"
    	});
    	$(".airportfinder").css({
    		color : "#7daaf9"
    	});
    	$(".preparing").slideDown("fast");
    	$(".btn_m_pop_close").show();
        $(".find-content").hide("fast"); 
        $(".airportfind-content").show("fast");
        // 2번 클릭 시
        $(".airportfinder").click(function(){
        	$(".airportfind-content").show("fast");
        	$(".domesticfind-content").hide();
        });
	});
    /* 항공권 찾기  e */
    
    
    /* X BTN CLICK  s */
    $(".btn_m_pop_close").click(function(){
    	$(".airportfinder").css({
          	color : "white"
          });
    	$(".finder").css({
          	color : "white"
          });
        $(".find-content").hide();
        $(".airportfind-content").hide();
        $(this).hide();
    });
    /* X BTN CLICK  e */
    
    //해외항공권 눌렀을 때 항공권 버튼 
    
    $("#airlineBtn").click(function(){
    	$(".airportfind-content").show();
    	$(".domesticfind-content").hide();
    	
    });
    
    
    /* 항공권 준비중
    $("#domesticBtn").click(function(){
    	
		
		$(".domesticfind-content").show();
		$(".airportfind-content").hide();
    	
    });
    */
    //국내항공권 눌렀을 때 항공권 버튼 
    
    $(".domestic_airlineBtn").click(function(){
    	$(".airportfind-content").show();
    	$(".domesticfind-content").hide();
    	
    }); 
    
    
    
    $(".domestic_domesticBtn").click(function(){
    	$(".domesticfind-content").show();
    	$(".airportfind-content").hide();
    	
    });
        
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

$(function(){
	$("#dontknow").click(function(){
		
		var checkConfirm = $("input:checkbox[id='dontknow']").is(":checked");
		if(checkConfirm==true){
			$(".whenyoucome").hide();
			$(".dontknowWhen").show();
			
		}else if(checkConfirm==false){
			$(".dontknowWhen").hide();
			$(".whenyoucome").show();
		}
	});
});

$(function(){
	$(".input_reset").click(function(){
		$("input#searchKeyword").val("");
	});
});