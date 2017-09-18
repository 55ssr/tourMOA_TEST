

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
             	color : "pink"
             });
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
    
    //해외항공권 눌렀을 때 항공권 버튼 
    
    $("#airlineBtn").click(function(){
    	alert("해외항공권");
    	$(".airportfind-content").show();
    	$(".domesticfind-content").hide();
    	
    });
    
    
    
    $("#domesticBtn").click(function(){
    		
    		alert("국내항공권");
    		$(".domesticfind-content").show();
    		$(".airportfind-content").hide();
    	
    });
    
    //국내항공권 눌렀을 때 항공권 버튼 
    
    $(".domestic_airlineBtn").click(function(){
    	alert("해외항공권");
    	$(".airportfind-content").show();
    	$(".domesticfind-content").hide();
    	
    }); 
    
    
    
    $(".domestic_domesticBtn").click(function(){
    	alert("국내항공권");
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
		alert(checkConfirm);
		if(checkConfirm==true){
			$(".whenyoucome").hide();
			$(".dontknowWhen").show();
			
		}else if(checkConfirm==false){
			$(".dontknowWhen").hide();
			$(".whenyoucome").show();
		}
	});
});

//datepicker
