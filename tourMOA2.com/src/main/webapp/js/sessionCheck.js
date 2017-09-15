// Ajax Low Level 
function sessionCheck(json){

	if(json.result == 0){
	}else if(json.result == 1){
		$.cookie('ybtour', '', { expires: -1 , domain: '.ybtour.co.kr', path: '/' });
	}else if(json.result == 2){
		$.cookie('ybtour', '', { expires: -1 , domain: '.ybtour.co.kr', path: '/' });
	}else{
		$.cookie('ybtour', '', { expires: -1 , domain: '.ybtour.co.kr', path: '/' });
	}
}

function callSessionCheck(){
	
	$.ajax({
		  type:"POST"	
		, url:"/mypage/sessionCheckJSON.do?callback=sessionCheck"
		, async:false            
		, crossDomain:true
		, dataType:"jsonp"
		, cache:false
		, data:{
	      	"name"   : "ybtour"
		}
	    , success:function(data, textStatus, jqXHR){
	    	
	    }
	    , error:function(xhr, msg, e){
	        
	    }
   });
}

//항공메뉴 세션아이디
function airMenuSubmit(airUrl, target){		
	$.ajax({
		 type : "POST"
		 , url:"/inc/airSessionJSON.do"
		, crossDomain : true
		, dataType : "jsonp"
		, async: false
		, jsonpCallback: "airSessionJSON"
		, data:{
		 	    "name"  : "ybtour"
		     	,"airUrl"  : airUrl
		     	,"target"  : target
		}
    	, success : function(data, textStatus, jqXHR) {
    		
		}
    	, error : function(jqXHR, textStatus, errorThrown) {
    	 /* 	console.log("Error", jqXHR);
			console.log("Error", textStatus); 
			console.log("Error", errorThrown); */
		}
    });
}

function airSessionJSON(json){
		var $frm = $('<form/>').attr({'name' : 'airSession', 'method' : 'POST', 'action' : json.airUrl});
		$('<input/>').attr({'type' : 'hidden', 'name' : 'air_session'}).val(json.air_session).appendTo($frm);
		$frm.appendTo('body');
		$frm.submit();
}


$(function(){	
	callSessionCheck();
});