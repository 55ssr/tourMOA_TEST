$(document).ready(function() {

	/* ############################################################################################ */
	/* 가로 1100px 가로스크롤 컨트롤 */
	/* ############################################################################################ */
	winResizeFunc();
	$(window).resize(function() {
		winResizeFunc();
	});

	/* ############################################################################################ */
	/* 메인 헤더영역 Fixed 보더처리 Start */
	/* ############################################################################################ */
//	$(window).scroll(function(){

//		if ( $(window).scrollTop() > 0 )
//		{
//			$('#gnb > ul').css("border-bottom","1px solid #e1e1e1");
//		}
//		else {
//			$('#gnb > ul').css("border-bottom","1px solid #e1e1e1");
//		}
//	});
	/* 메인 헤더영역 Fixed 보더처리 End*/

	/* ############################################################################################ */
	/* 메인 GNB Fixed Start */
	/* ############################################################################################ */
    $(window).scroll(function(){

        if ( $(window).scrollTop() >= 158 ){
			$('nav#gnb').css({ position: 'fixed', top: 0 });
			$('nav#gnb').addClass('gnb_pos');
        } else {
            $('nav#gnb').css('position','absolute');
            $('nav#gnb').css('top',158);
			$('nav#gnb').removeClass('gnb_pos');
        }
    });
	/* 메인 GNB Fixed End*/



	/* ############################################################################################ */
	/* haedline Fixed Start --2015.12.09 */
	/* ############################################################################################ *
    $(window).scroll(function(){

        if ( $(window).scrollTop() >= 322 ){
			$('div.haedline').css({ position: 'fixed', top: 0});
			$('div.haedline').css('background','#fff');
			$('div.haedline').css('z-index',99999);
			$('div.haedline').css('margin-left',282);

        } else {
            $('div.haedline').css('position','relative');
			$('div.haedline').css('background','#fff');

            $('div.haedline').css('top',0);
			$('div.haedline').css('z-index',99999);
			$('div.haedline').css('margin','0 auto');
        }
    });
	/* haedline Fixed End*/



	/* ############################################################################################ */
	/* 사이드메뉴 Fixed Start */
	/* ############################################################################################ */
	if (!!$('#sidemenu').offset()) {		

		var sidemenuTop = $('#sidemenu').offset().top;
		//var defaultTop = 157;
		//var defaultTop = 211;
		var defaultTop = 210;
		
		var pageUrlSplit = $(location).attr('pathname').split('index.html')[1];
		
		if(pageUrlSplit != "main.do"){
			defaultTop = 251;
			$("#sidemenu").removeClass("sideMain");
		}else{
			defaultTop = 210;
			$("#sidemenu").addClass("sideMain");
		}
		var fixedTop = 20;

		if ( $('#gnb').length > 0 ) //메인일때
		{
			fixedTop = 20;
			$('#sidemenu').css('top', defaultTop );
		}

		var sidemenuFix = function() {
			var windowTop = $(window).scrollTop() + fixedTop;

			if ( sidemenuTop < windowTop ){
				$('#sidemenu').css({ position: 'fixed', top: 0 + fixedTop });
			}
			else {
				$('#sidemenu').css('position','absolute');
				$('#sidemenu').css('top', defaultTop );
			};
		};

		$(window).load(function(){
			sidemenuFix();
		});

		$(window).scroll(function(){
			sidemenuFix();
		});
		
		
		/*사이드메뉴 쿠키값에 따라 class remove or add*/
		var sideVal = $.cookie('ybtourSideMenu');
		if(sideVal == 'open' || sideVal == undefined){
			$("#sidemenu").addClass("open");
		}else{
			$("#sidemenu").removeClass("open");
		}

		var sidemenuBtnToggle = 0;
		//$("#sidemenu > .sidemenuBtn").addClass("on");
		$(".sidemenuBtn , .after").on('click',function(){

			if ( sidemenuBtnToggle == 0 )
			{
				$("#sidemenu").stop(false, false).animate({"right":-3, "height":760},400);
				$("#sidemenu > ul.after").css("display","none");
				$("#sidemenu > ul.before").css("display","block");
				$("#sidemenu > .sidemenuBtn").addClass("on");
				$.removeCookie('ybtourSideMenu', { path: '/' });
				$.cookie('ybtourSideMenu','open',  { expire: 2, path: '/' });
				if(!$("#sidemenu").hasClass('open')){
					$("#sidemenu").addClass("open");
				}
				sidemenuBtnToggle = 1;
			}
			else if ( sidemenuBtnToggle > 0 )
			{
				$("#sidemenu").stop(false, false).animate({"right":0 , "height":480},100,function(){
					$("#sidemenu > ul.after").css("display","block");
					$("#sidemenu > ul.before").css("display","none");
					$("#sidemenu > .sidemenuBtn").removeClass("on");
					if($("#sidemenu").hasClass('open')){
						$("#sidemenu").removeClass("open");
					}
				});
				$.removeCookie('ybtourSideMenu', { path: '/' });
				$.cookie('ybtourSideMenu','close', {expire: 2,  path: '/' });
				sidemenuBtnToggle = 0;
			}

		});

		if ( $("#sidemenu").hasClass("open" )) //열림고정처리
		{
			$("#sidemenu").css({"right":-3 , "height":760});
			$("#sidemenu > ul.after").css("display","none");
			$("#sidemenu > ul.before").css("display","block");
			$("#sidemenu > .sidemenuBtn").addClass("on");
			sidemenuBtnToggle = 1;
		};

	};
	/* 사이드메뉴 Fixed End*/



	/* ############################################################################################ */
	/* 사이드메뉴 오늘본상품 스크롤 Start */
	/* ############################################################################################ */
    /*var todayX = 0;
	var pic_length = $(".todayWrap > .picWrap > span.pic").length; //오늘본상품 개수
    var totPicPage = Math.ceil( pic_length ); //총 페이지수
    var todayPage = 1; //초기페이지
 
    //if ( todayPage >= totPicPage -2 )
    //{
    //    $(".today.todayL").removeClass("on");
    //}

    $("#sidemenu .curPic").text(todayPage);
    $("#sidemenu .totPic").text(totPicPage);

    $("#sidemenu .todayL").on('click',function(){
        if ( todayPage > 1 )
        {
            todayX = todayX + 104;
            todayPage = todayPage - 1;
        }
        $(".todayWrap > .picWrap").css("left",todayX);
		$("#sidemenu .curPic").text(todayPage);
    });
    $("#sidemenu .todayR").on('click',function(){
        if ( todayPage < totPicPage )
        {
            todayX = todayX - 104;
            todayPage = todayPage + 1;
        }
        $(".todayWrap > .picWrap").css("left",todayX);
		$("#sidemenu .curPic").text(todayPage);
    });*/
    /* 사이드메뉴 오늘본상품 스크롤 End */



	/* ############################################################################################ */
	/* 사이드메뉴 오늘본상품 Layer Start */
	/* ############################################################################################ */
    /*
     * footer.jsp에서 관리
     * $("#sidemenu .before .menu10 .todayWrap .pic").on('mouseover',function(){
		$("#sidemenu .sidemenuLayer").stop(false, false).fadeIn(600);

		$(this).on('mouseleave',function(){
			$("#sidemenu .sidemenuLayer").stop(false, false).fadeOut(100);
		});
    });*/
    /* 사이드메뉴 오늘본상품 Layer End */



	/* ############################################################################################ */
	/* TOP Search Start */
	/* ############################################################################################ */
	$("#p_selected").on('click',function(){
		$("#p_select").css("display","block");
		$("#p_selectbox").css("border","1px solid #e1e1e1");
		//$("#navigator_area > .two").slideUp(200);
		//$("#p_select").slideDown(400);
	});

	$("#p_selected").children("a").on('focus',function(){
		$("#p_select").css("display","block");
		$("#p_selectbox").css("border","1px solid #e1e1e1");
		//$("#navigator_area > .two").slideUp(200);
		//$("#p_select").slideDown(400);
	});

	$("#p_selectbox").on('mouseleave',function(){
		$("#p_select").css("display","none");
		$("#p_selectbox").css("border","none");
	});

	$("#p_select > li:last").children("a").on('blur',function(){
		$("#p_select").css("display","none");
		$("#p_selectbox").css("border","none");
	});

	$("#p_select > li").each(function(){
		var tab_index = $(this).index();

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		$(this).on('mouseleave',function(){
			$("#p_select > li:eq("+tab_index+")").removeClass("on"); // 초기화
		});

		$(this).children("a").on('blur',function(){
			$("#p_select > li:eq("+tab_index+")").removeClass("on"); // 초기화
		});

		$(this).on('mouseover',function(){
			$("#p_select > li:eq("+tab_index+")").addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$("#p_select > li:eq("+tab_index+")").addClass("on");
		});

		$(this).on('click',function(){
			$("#p_select").css("display","none");
			$("#p_selectbox").css("border","none");
		});
	});
	/* TOP Search End */



	/* ############################################################################################ */
	/* GNB , GNBSUB Start */
	/* ############################################################################################ */
	$("#gnb > ul > li, #gnbsub > ul > li").each(function(){
		var tab_index = $(this).index();

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		//$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on"); // 초기화
		$(this).on('mouseleave',function(e){
			var loc = $(this).parents('#gnbsub').data('loc');

			if (loc) {
				$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on"); // 초기화
				$("#loc"+loc).addClass("on");
			}else{
				$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on"); // 초기화
			}

		});

		$(this).children("a").on('blur',function(){
			$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on"); // 초기화
		});

		$(this).on('mouseover',function(){
			$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on");
			$("#gnb > ul > li:eq("+tab_index+")").addClass("on");
			$("#gnbsub > ul > li:eq("+tab_index+")").addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$("#gnb > ul > li:eq("+tab_index+")").addClass("on");
			$("#gnbsub > ul > li:eq("+tab_index+")").addClass("on");
		});
	});
	/* GNB , GNBSUB End */



	/* ############################################################################################ */
	/* Navigator Start */
	/* ############################################################################################ */
	$("#navigator_product > .one").on('click',function(){
		$(".two").css("display","none");
		$("#navigator_product > .two").css("display","block");
		//$("#navigator_area > .two").slideUp(200);
		//$("#navigator_product > .two").slideDown(400);
	});
	$("#navigator_product > .one > a").on('focus',function(){
		$(".two").css("display","none");
		$("#navigator_product > .two").css("display","block");
	});
	$("#navigator_product").on('mouseleave',function(){
		$("#navigator_product > .two").css("display","none");
	});
	$("#navigator_area > .one").on('click',function(){
		$(".two").css("display","none");
		$("#navigator_area > .two").css("display","block");
	});
	$("#navigator_area > .one > a").on('focus',function(){
		$(".two").css("display","none");
		$("#navigator_area > .two").css("display","block");
	});
	$("#navigator_area").on('mouseleave',function(){
		$("#navigator_area > .two").css("display","none");
	});
	$("#navigator_area > .two > p:last > a").on('blur',function(){
		$("#navigator_area > .two").css("display","none");
	});

	$("#navigator_product > .two > p").each(function(){
		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$("#navigator_product > .two > p:eq("+tab_index+")").addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$("#navigator_product > .two > p:eq("+tab_index+")").addClass("on");
		});

		$(this).on('mouseleave',function(){
			$("#navigator_product > .two > p:eq("+tab_index+")").removeClass("on"); // 초기화
		});

		$(this).children("a").on('blur',function(){
			$("#navigator_product > .two > p:eq("+tab_index+")").removeClass("on"); // 초기화
		});
	});

	$("#navigator_area > .two > p").each(function(){
		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$("#navigator_area > .two > p:eq("+tab_index+")").addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$("#navigator_area > .two > p:eq("+tab_index+")").addClass("on");
		});

		$(this).on('mouseleave',function(){
			$("#navigator_area > .two > p:eq("+tab_index+")").removeClass("on"); // 초기화
		});

		$(this).children("a").on('blur',function(){
			$("#navigator_area > .two > p:eq("+tab_index+")").removeClass("on"); // 초기화
		});
	});
	/* Navigator End */



	/* ############################################################################################ */
	/* Navigator 항공권,여행상품 찾기 */
	/* ############################################################################################ */
	$("#navigator .navigator_left .sub01").on('click',function(){
		$("#findAirSub").css("display","none"); //항공권찾기
		$("#findProductSub").css("display","block"); //여행사품찾기
		//$("#findProduct").slideDown(700);
	});
	$("#navigator .navigator_left .sub02").on('click',function(){
		$("#findAirSub").css("display","block"); //항공권찾기
		$("#findProductSub").css("display","none"); //여행사품찾기
		//$("#findAir").slideDown(700);
	});
	$("#findboxSub .findClose").on('click',function(){
		//$("#findboxSub").css("display","none"); //검색레이어
		$("#findAirSub").css("display","none"); //항공권찾기
		$("#findProductSub").css("display","none"); //여행사품찾기
	});
	$("#navigator .srhAreaCancel").on('click',function(){
		$(".srhArea").val("");
	});
	/* Navigator 항공권,여행상품 찾기 End */



	/* ############################################################################################ */
	/* Local Menu Start 2015-10-02 사용중지 : 퍼블본용으로 유지 */
	/* ############################################################################################ */
	if (!!$('.localPage').offset()) { //지역메인 예외처리
		$("#localWrap").css("display","inline-block");
		$("#regionWrap").css("display","none");
		$(".menuclose").css("display","block");
	};

	$("#menuopen").on('click',function(){
		//$("#localWrap").slideDown(300);
		$("#localWrap").css("display","inline-block");
		$("#regionWrap").css("display","none");
		$("#menuclose").css("display","block");
	});

	$("#menuclose").on('click',function(){
		//$("#localWrap").slideUp(100);
		$("#localWrap").css("display","none");
		$("#regionWrap").css("display","block");
		$("#menuclose").css("display","none");
	});

	// 메뉴영역 상하 여백처리
	$("#localWrap #areaBox table tr th:first").css("padding-top","18px");
	$("#localWrap #areaBox table tr td:first").css("padding-top","37px");
	$("#localWrap #areaBox table tr th:last").css("border-bottom","none");
	$("#localWrap #areaBox table tr td:last").css("padding-bottom","38px");
	$("#localWrap #areaBox table tr td:last").css("border","none");

	//우측 공지영역 배경처리
	if (!!$('#localWrap').offset()) {
		var noticeHeight = $('#localWrap').height();
		$("#areaNotice").css("height",noticeHeight +23);
	};
	/* Local Menu End */



	/* ############################################################################################ */
	/* Local Menu Start  */
	/* ############################################################################################ */
	if (!!$('.localOpen').offset()) { //지역메인 예외처리
		$("#localWrapOne").css("display","inline-block");
		$("#localWrapTwo").css("display","inline-block");
		$("#regionWrap").css("display","none");
		$(".menuclose").css("display","block");
	};
/*
	var tdCnt = $("#localWrapTwo table tr:last").children("td").length;
	if ( tdCnt == 1 )
	{
		$("#localWrapTwo table tr:last").children("td").attr("colspan","3");
		$("#localWrapTwo table tr:last").children("td").css("background","#fafafa");
	}
*/
	$("#menuopen").on('click',function(){
		//$("#localWrap").slideDown(300);
		$("#localWrapOne").css("display","inline-block");
		$("#localWrapTwo").css("display","inline-block");
		$("#regionWrap").css("display","none");
		$(".menuclose").css("display","block");
	});

	$(".menuclose").on('click',function(){
		//$("#localWrap").slideUp(100);
		$("#localWrapOne").css("display","none");
		$("#localWrapTwo").css("display","none");
		$("#regionWrap").css("display","block");
		$(".menuclose").css("display","none");
	});
	/* Local Menu End */



	/* ############################################################################################ */
	/* 공통 DIV 셀렉트박스 Start */
	/* ############################################################################################ */
    var select_root = $('div.select');
    var select_value = $('.my_value');
    var select_a = $('div.select>ul>li>a');
    var select_input = $('div.select>ul>li>input[type=radio]');
    var select_label = $('div.select>ul>li>label');

    // Radio Default Value
    $('div.my_value').each(function(){
        var default_value = $(this).next('.i_list').find('input[checked]').next('label').text();
        $(this).append(default_value);
    });

    // Line
    select_value.bind('focusin',function(){$(this).addClass('outLine')});
    select_value.bind('focusout',function(){$(this).removeClass('outLine')});
    select_input.bind('focusin',function(){$(this).parents('div.select').children('div.my_value').addClass('outLine')});
    select_input.bind('focusout',function(){$(this).parents('div.select').children('div.my_value').removeClass('outLine')});

    // Show
    function show_option(){
        $(this).parents('div.select:first').toggleClass('open');
    }

    // Hover
    function i_hover(){
        $(this).parents('ul:first').children('li').removeClass('hover');
        $(this).parents('li:first').toggleClass('hover');
    }

    // Hide
    function hide_option(){
        var t = $(this);
        setTimeout(function(){
            t.parents('div.select:first').removeClass('open');
        }, 1);
    }

    // Set Input
    function set_label(){
        var v = $(this).next('label').text();
        $(this).parents('ul:first').prev('.my_value').text('').append(v);
        $(this).parents('ul:first').prev('.my_value').addClass('selected');
    }

    // Set Anchor
    function set_anchor(){
        var v = $(this).text();
        $(this).parents('ul:first').prev('.my_value').text('').append(v);
        $(this).parents('ul:first').prev('.my_value').addClass('selected');
    }

    // Anchor Focus Out
    $('*:not("div.select a")').focus(function(){
        $('.a_list').parent('.select').removeClass('open');
    });

    select_value.click(show_option);
    select_root.removeClass('open');
    select_root.mouseleave(function(){$(this).removeClass('open')});
    select_a.click(set_anchor).click(hide_option).focus(i_hover).hover(i_hover);
    select_input.change(set_label).focus(set_label);
    select_label.hover(i_hover).click(hide_option);
    /* 공통 DIV 셀렉트박스 End */



	/* ############################################################################################ */
	/* 메인 항공권,여행상품 찾기 */
	/* ############################################################################################ */
    
	$(".tab > .btnL").on('click',function(){
		$("#closeFindBox").css("display","none"); //닫기
		$("#findAir").css("display","none"); //항공권찾기
		$("#findbox").css("display","block"); //퀵검색창 열기
		$("#findProduct").css("display","block"); //여행사품찾기
		//$("#findProduct").slideDown(700);

		$("#calendar").css("display","none");
		main_calendar_cnt = 0;
	});
	$(".tab > .btnR").on('click',function(){
		$("#closeFindBox").css("display","none"); //닫기
		$("#findbox").css("display","block"); //퀵검색창 열기
		$("#findAir").css("display","block"); //항공권찾기
		$("#findProduct").css("display","none"); //여행사품찾기
		//$("#findAir").slideDown(700);

		$("#calendar").css("display","none");
		main_calendar_cnt = 0;
	});
	$("#findbox .closeBtn.floatR").on('click', function(){
		$("#closeFindBox").css("display","block"); //닫기
		$("#findAir").css("display","none"); //항공권찾기
		$("#findProduct").css("display","none"); //여행사품찾기	
		$("#findbox .closeBtn.floatR").css("display","none");//닫기버튼
	});
	
	$(".air02 > .btnL").on('click',function(){
		$(".inAir").css("display","none"); //국내항공권 항목
		$(".air02 > .btnR").removeClass("on");
		$(".outAir").css("display","block"); //국제항공권 항목
		$(".air02 > .btnL").addClass("on");

		$("#calendar").css("display","none");
		main_calendar_cnt = 0;
	});
	$(".air02 > .btnR").on('click',function(){
		$(".inAir").css("display","block"); //국내항공권 항목
		$(".air02 > .btnR").addClass("on");
		$(".outAir").css("display","none"); //국제항공권 항목
		$(".air02 > .btnL").removeClass("on");

		$("#calendar").css("display","none");
		main_calendar_cnt = 0;
	});
	$(".srhAreaCancel").on('click',function(){
		$(".srhArea").val("");
	});
	
 $(".tab").mouseover(function() {	    
    	var pdtBox = $("#findProduct").css("display"); 
    	var airBox = $("#findAir").css("display"); 
    	if(pdtBox == 'none' && airBox == 'none'){
    		$("#closeFindBox").css("display","none"); //닫기	    		
    		$("#findAir").css("display","none"); //항공권찾기	    		
    		$("#findProduct").css("display","block"); //여행사품찾기	    		
    		$(".closeBtn.floatR").css("display","block");
    	}
    });



    
    $("#findProduct, #find").click(function(){
    	$("#find").attr("display","on");
    });
    
    $(".closeBtn.floatR").click(function(){
    	$("#find").removeAttr("display");

    });

//서브 퀵검색 닫기버튼 
  $(".btn_searchbox").click(function(){
	  $("#findProduct, #findAir, #findbox").hide ();
    });




    
    var searchCalDsp = 0;
    $("#find").on('mouseleave',function(){
    	var display = $("#find").attr("display");
    	
    	if(display != 'on'){
    		if($("#findAir").css("display") == "block"){
    			findCal();
    		}
    		
    		if($("#findProduct").css("display") == "block"){
    			findCal();
    		}
    		
    		if(searchCalDsp == 0){
    			$("#closeFindBox").css("display","block"); //닫기
    			$("#findAir").css("display","none"); //항공권찾기
    			$("#findProduct").css("display","none"); //여행사품찾기	
    			$("#findbox .closeBtn.floatR").css("display","none");//닫기버튼	
    		}
    	}	
    });


    function findCal(){
		if($("#ui-datepicker-div").css("display") == "none" || $("#ui-datepicker-div").css("display") == undefined){
			searchCalDsp = 0;	
		}else{
			searchCalDsp = 1;
		}
    }

	/* 메인 항공권,여행상품 찾기 End */

	/* ############################################################################################ */
	/* 메인 달력 Start */
	/* ############################################################################################ *//* jquery-ui 로 대체
	$("#findbox .cal").on('click',function(){
		var cal_index = $(this).attr("role");
		$("#calendar").css("display","none");
		$("#calendar").removeClass();
		$("#calendar").css("display","block");
		$("#calendar").addClass("c0"+cal_index);
	});
	$("#findbox").on('mouseleave',function(){
		$("#calendar").css("display","none");
		$("#calendar").removeClass();
	});
	$("#calendar > #calendar_bottom > #calendar_close").on('click',function(){
		$("#calendar").css("display","none");
		$("#calendar").removeClass();
	});
	/* 메인 달력 End */



	/* ############################################################################################ */
	/* 메인 자주하는질문 */
	/* ############################################################################################ */
	$(".cont06_2 > ul > li").each(function(){
		var tab_index = $(this).index();

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		$(this).on('mouseover',function(){
			$(this).addClass("on");
		});
		$(this).on('mouseleave',function(){
			$(this).removeClass("on");
		});
	});
	/* 메인 항공권,여행상품 찾기 End */



	/* ############################################################################################ */
	/* 메인 추천테마여행 Tab Start*/
	/* ############################################################################################ */
	$("#main03 > .cont03 > .tab_type01 > li:eq(0)").addClass("on");
	$("#main03 > .cont03 > .tab_type01 > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		$("#main03 > .cont03 > .tab_type01 > li").removeClass("on");
		$(this).addClass("on");
	});
	/* 메인 시즌추천테마 Tab End*/

	/* ############################################################################################ */
	/* 서브메인 시즌추천테마 Tab Start*/
	/* ############################################################################################ */
	$("#main03 > .cont03 > .tab01 ").css("display","block");
	$("#main03 > .cont03 > .tab > span:eq(0)").addClass("on");
	$("#main03 > .cont03 > .tab > span:eq(1)").addClass("bgNone");
	$("#main03 > .cont03 > .tab > span").on('click',function(){
		var tab_index = $(this).index() + 1;
		$("#main03 > .cont03 > .tab > span").removeClass("on");
		$(this).addClass("on");

		// 인근 배경 컨트롤
		$("#main03 > .cont03 > .tab > span").removeClass("bgNone");
		$("#main03 > .cont03 > .tab > span").eq( tab_index ).addClass("bgNone");
	});
	/* 메인 시즌추천테마 Tab End*/

	/* ############################################################################################ */
	/* 서브메인 급이다른지역별대표상품 Tab Start*/
	/* ############################################################################################ */
	$(".submain02 > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		var bg_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		// on
		$(".submain02 > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		// 인근 배경 컨트롤
		$(".submain02 > .tab > ul > li").removeClass("bgNone");
		$(".submain02 > .tab > ul > li").eq( bg_index ).addClass("bgNone");

		/*$(".submain02 > .tabview").css("display","none");
		$(".submain02 > .tab"+tab_index).css("display","block");*/

	});
	/* 대구출발 예외처리 */
	$(".submain02-2 > .tab01").css("display","block");
	$(".submain02-2 > .tab > ul > li:eq(0)").addClass("on");
	$(".submain02-2 > .tab > ul > li:eq(1)").addClass("bgNone");
	$(".submain02-2 > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		var bg_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		// on
		$(".submain02-2 > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		// 인근 배경 컨트롤
		$(".submain02-2 > .tab > ul > li").removeClass("bgNone");
		$(".submain02-2 > .tab > ul > li").eq( bg_index ).addClass("bgNone");

		$(".submain02-2 > .tabview").css("display","block");
		$(".submain02-2 > .tab"+tab_index).css("display","block");
	});
	/* 서브메인 급이다른지역별대표상품 Tab End*/



	/* ############################################################################################ */
	/* 서브메인 시즌테마여행 Tab Start*/
	/* ############################################################################################ */
	$("#submain03 > .tab01").css("display","block");
	$("#submain03 > .tab > ul > li:eq(0)").addClass("on");
	$("#submain03 > .tab > ul > li:eq(1)").addClass("bgNone");
	$("#submain03 > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		var bg_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		// on
		$("#submain03 > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		// 인근 배경 컨트롤
		$("#submain03 > .tab > ul > li").removeClass("bgNone");
		$("#submain03 > .tab > ul > li").eq( bg_index ).addClass("bgNone");

		//$("#submain03 > .tabview").css("display","none");
		//$("#submain03 > .tab"+tab_index).css("display","block");
	});
	/* 서브메인 시즌테마여행 Tab End*/



	/* ############################################################################################ */
	/* 서브메인 시즌테마여행 인터랙션 Start*/
	/* ############################################################################################ */
	/* 2015-08-12
	$(".cont03 > ul > li > div.small").each(function(){
		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".cont03 > ul > li > div:eq("+tab_index+") .noti").css("display","none");
			//$(".cont03 > ul > li > div:eq("+tab_index+") .info").css("display","block");
			$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(false, false).fadeIn(400);
		});

		$(this).on('mouseleave',function(){			
			//$(".cont03 > ul > li > div:eq("+tab_index+") .info").css("display","none");
			$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(false, false).fadeOut(400, function(){
				//$(".cont03 > ul > li > div:eq("+tab_index+") .noti").css("display","inline-block");
				$(".cont03 > ul > li > div:eq("+tab_index+") .noti").stop(false, false).fadeIn(400);
			});
		});
	});
	*/

	$(".cont03 > ul > li > div").each(function(){
		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".cont03 > ul > li > div:eq("+tab_index+") .noti").css("display","none");
			//$(".cont03 > ul > li > div:eq("+tab_index+") .info").css("display","block");
			$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(false, false).show(0).animate({"top":120},300);
		});

		$(this).on('mouseleave',function(){
			//$(".cont03 > ul > li > div:eq("+tab_index+") .info").css("display","none");
			$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(true, false).animate({"top":230},200, function(){
				//$(".cont03 > ul > li > div:eq("+tab_index+") .noti").css("display","inline-block");
				$(".cont03 > ul > li > div:eq("+tab_index+") .noti").stop(false, false).fadeIn(400);
			});
		});
	});
	/* 서브메인 시즌테마여행 인터랙션 End */



	/* ############################################################################################ */
	/* 상세 배경처리 Start */
	/* ############################################################################################ *//* 2015-09-16
	if (!!$('#basicInfo .basicL01').offset()) {
		var basicL01_height = $('#basicInfo .basicL01').height();
		$('#basicInfo .basicL01 > .basicL_bg01').css('height',basicL01_height -60);
	};
	if (!!$('#basicInfo .basicL02').offset()) {
		var basicL02_height = $('#basicInfo .basicL02').height();
		$('#basicInfo .basicL02 > .basicL_bg02').css('height',basicL02_height -102);
	};
	//자유타입
	if (!!$('#freeInfo').offset()) {
		var detailWrapBg_height = $('#freeInfo').height();
		$('.detailWrapBg').css('height',detailWrapBg_height -112);
	};
	/* 상세 배경처리 End*/


	/* ############################################################################################ */
	/* 상세 템플릿영역 3번째 썸네일 이미지간격 Start */
	/* ############################################################################################ */
	$(".infoBody .picWrap").each(function(){
		$(this).children("span.pic:eq(2)").css('margin-right','0px');
	});
	/* ############################################################################################ */
	/* 인쇄영역 상세 템플릿영역 3번째 썸네일 이미지간격 Start */
	/* ############################################################################################ */
	$("#prtBodyWrap .infoBody .picWrap").each(function(){
		$(this).children("span.pic:eq(0)").css('margin-left','6px');
	});
	/* 상세 여행정보영역 이미지간격 End */



	/* ############################################################################################ */
	/* 상품상세 Tab Start*/
	/* ############################################################################################ */
	//$("#tabWrap > .tab01").css("display","block");
	$("#tabWrap > .tab > ul > li:eq(0)").addClass("on");
	$("#tabWrap > .tab > ul > li").on('click',function(){
		/* 상품 상세tab을 loop가 아닌 flag값으로 나타내고 있어 주석 처리함.
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};*/

		var tab_index = $(this).attr('class');
		tab_index = tab_index.substring(1,3);

		$("#tabWrap > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$(".tabview").css("display","none");
		$(".tabview.tab"+tab_index).css("display","block");
		
		//원본이미지 가지고 있는 템플릿의 width 조정.
		$("div.infoTxt.template .infoBody .picWrap span.picB img").each(function(index){
			var img = $(this);
			$(this).load(function(){
				var imgWidth = $(this).width();
				if(imgWidth > 690){
					$(this).width(690);
				}
			});
			img.attr("src", img.attr("src"));
		});
		
		//템플릿의 이미지의 height 조정.
		$("div.infoTxt.template .infoBody .picWrap span.pic img").each(function(index){
			var img = $(this);
			$(this).load(function(){
				var imgHeight = $(this).height();
				if(imgHeight > 140){
					$(this).height(140);
				}
			});
			img.attr("src", img.attr("src"));
		});
	});
	/* 상품상세 Tab End*/



	/* ############################################################################################ */
	/* 상품상세 최하단 기타정보 Tab Start*/
	/* ############################################################################################ */	
	$("#etcWrap > .tab > ul > li:eq(0)").addClass("on");
	$("#etcWrap > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		$("#etcWrap > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#etcWrap > .etc").css("display","none");
		$("#etcWrap > .etc.tab"+tab_index).css("display","block");
	});
	/* 상품상세 최하단 기타정보 Tab End*/



	/* ############################################################################################ */
	/* 상품상세 DIV 셀렉트박스 Start*/
	/* ############################################################################################ */
	var selectboxAirCnt = 0;
	$(".seletboxAir > ul > li:nth-child(odd)").css("background","#f9fbfb");
	$(".seletboxAir").on('click',function(){
		if ( selectboxAirCnt == 0 ) {
			$(".seletboxAir > ul").css("display","block");
			selectboxAirCnt = 1;
		} else if ( selectboxAirCnt > 0 ) {
			$(".seletboxAir > ul").css("display","none");
			selectboxAirCnt = 0;
		};
	});
	$(".seletboxAir > ul > li").on('click',function(){
		$(".seletboxAir > ul").css("display","none");
	});

	var selectboxOptCnt = 0;
	$(".seletboxOption > ul > li:nth-child(odd)").css("background","#f9fbfb");
	$(".seletboxOption").on('click',function(){
		if ( selectboxOptCnt == 0 ) {
			$(".seletboxOption > ul").css("display","block");
			selectboxOptCnt = 1;
		} else if ( selectboxOptCnt > 0 ) {
			$(".seletboxOption > ul").css("display","none");
			selectboxOptCnt = 0;
		};
	});
	$(".seletboxOption > ul > li").on('click',function(){
		$(".seletboxOption > ul").css("display","none");
	});
	/* 상품상세 DIV 셀렉트박스 End*/



	/* ############################################################################################ */
	/* 상품상세 일정표 정보영역 토글 Start*/
	/* ############################################################################################ *//*
	var infoBarCnt = 0;
	$("#daily .infoBar .btn").on('click',function(){

		if ( infoBarCnt == 0 ) {
			$(this).parent(".infoBar").next(".infoBody").css("display","none");
			$(this).parent(".infoBar").next(".infoFoot").css("display","none");
			//$(this).children("p").html("+");
			infoBarCnt = 1;
		} else if ( infoBarCnt > 0 ) {
			$(this).parent(".infoBar").next(".infoBody").css("display","block");
			$(this).parent(".infoBar").next(".infoFoot").css("display","block");
			//$(this).children("p").html("-");
			infoBarCnt = 0;
		};
	});
	/* 상품상세 일정표 정보영역 토글 End*/



	/* ############################################################################################ */
	/* 상세 퀵메뉴 내 달력 Start */
	/* ############################################################################################ */
	/*옵션값 체크후 클릭이벤트 발생 시키기 위해 막음
	 * var detail_calendar_cnt = 0;

	$("#asideWrap > div.aside03 button.btn.free").on('click',function(){
		if ( detail_calendar_cnt == 0 )
		{
			$("#calendar").css("display","block");
			detail_calendar_cnt = 1;
		} else if ( detail_calendar_cnt == 1 )
		{
			$("#calendar").css("display","none");
			detail_calendar_cnt = 0;
		}
	});
	$("#asideWrap > #calendar > #calendar_bottom > #calendar_close").on('click',function(){
		$("#calendar").css("display","none");
		detail_calendar_cnt = 0;
	});*/
	/* 상세 퀵메뉴 내 달력 End */



	/* ############################################################################################ */
	/* 상품상세 QuickMenu Top버튼 Start*/
	/* ############################################################################################ */
	$(".asideTop").on('click',function(){
		$('#asideWrap').css({ position: 'absolute', top: 20 });//2015.12.09--20
	});
	/* 상품상세 QuickMenu Top버튼 End*/



	/* ############################################################################################ */
	/* 상품상세 QuickMenu Start */
	/* ############################################################################################ */
	if (!!$('#asideWrap').offset()) {
		var asideFixFnc = {
			varNames : {
				asideTop : $('#asideWrap').offset().top,
				asideElement : $('#asideWrap'),
				asideH : $('#asideWrap').height()+150,
				asideBottom :  parseInt(( $('footer').height() + $('#asideWrap').height())),  
				scrollTopPnt : $('#basicInfo').offset().top
			},
			scrollChk : function(){ 
				var windowTop = $(window).scrollTop(); //238 은 padding 150 과 하단 top버튼 높이를 합한 값. asideWrap.height에서 못잡아와서 더해줌 
				if (windowTop > (this.varNames.scrollTopPnt) &&  windowTop < this.varNames.asideBottom-238 ) this.varNames.asideElement.css({ 'position' : 'fixed', 'top' : 20 }) // 20 = 상단 margin top값
				else if (windowTop > this.varNames.asideBottom-238) this.varNames.asideElement.css({ 'position' : 'absolute' , 'top' : this.varNames.asideBottom - this.varNames.asideH });
				else this.varNames.asideElement.css({ 'position' : 'absolute' , 'top' : 0 });
				
				if ($(window).width() < 1100){
					(this.varNames.asideTop > windowTop) ? this.varNames.asideElement.css({'position':'absolute', 'top':'0', 'left' : '50%'}) : 
						this.varNames.asideElement.css({'position':'absolute', 'top' : windowTop - this.varNames.asideTop + 20});
					if (windowTop > this.varNames.asideBottom-238) this.varNames.asideElement.css({ 'position' : 'absolute' , 'top' : this.varNames.asideBottom - this.varNames.asideH});
				}
			},
			leftChk : function(){
				var winW = $(window).width();
				( winW <= 1100 ) ? $('#detailWrap #asideWrap').css({ left: '550px' }) : $('#detailWrap #asideWrap').css({ left: '50%' })  
			},
			initialize : function(){
				var reviewHeightChk = setTimeout(function(){
					asideFixFnc.varNames.asideBottom = parseInt($('body').height() - asideFixFnc.varNames.asideBottom); 
				},700);
				$(window).scroll(function(){
					asideFixFnc.scrollChk();
				});
			}
		}

		$(window).resize(function(){
			asideFixFnc.leftChk();
		});
		
		asideFixFnc.initialize();
		asideFixFnc.leftChk();
	};
	
	/* 상품상세 QuickMenu End*/
	
	
	

	/* ############################################################################################ */
	/* 상품상세 툴팁 Start */
	/* ############################################################################################ */
	$(".tip").each(function(){
		//var tab_index = $(this).index();

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		var tooltipX;
		var tooltipY = 45;
		$(".tooltip").css("display","none");

		$(this).on('mouseover',function(){
			var idx = $(this).attr("role");
			if ( idx == 1 ){ tooltipX = 134; } else if ( idx == 2 ){ tooltipX = 230; }
			else if ( idx == 4 || idx == 6){ tooltipX = $("img.chdTip").position().left-136; tooltipY = $(".ageTip").position().top+20;}
			else if ( idx == 5 || idx == 7){ tooltipX = $("img.infTip").position().left-136; tooltipY = $(".ageTip").position().top+20;}
			
			if ( idx == 1 ){ $(".role01").css("display","block"); $(".role02").css("display","none"); } 
			else if ( idx == 2 ){ $(".role01").css("display","none"); $(".role02").css("display","block"); }
			else if ( idx == 4 ){$(".role04").css("display","block"); $(".role05").css("display","none");  } 
			else if ( idx == 5 ){ $(".role05").css("display","block"); $(".role04").css("display","none");  }
			else if ( idx == 6 ){$(".role06").css("display","block"); $(".role07").css("display","none");  } 
			else if ( idx == 7 ){ $(".role07").css("display","block"); $(".role06").css("display","none");  }
			if( idx == 1 || idx == 2 || idx == 4 || idx == 5){
				$(this).parent("li").children(".tooltip").css("display","block");
				$(this).parent("li").children(".tooltip").css("left",tooltipX);
				$(this).parent("li").children(".tooltip").css("top",tooltipY);
			}
			else if( idx == 6 || idx == 7){
				$(this).parent("div").children(".tooltip").css("display","block");
				$(this).parent("div").children(".tooltip").css("left",tooltipX);
				$(this).parent("div").children(".tooltip").css("top",tooltipY);
			}

			if ( idx == 3 ){
				$(this).parent("div").find(".tooltip").css("display","block");
			}
		});
		$(this).on('mouseleave',function(){
			$(".tooltip").css("display","none");
			tooltipX = 0;
		});
	});
	/* 상품상세 툴팁 End */



	/* ############################################################################################ */
	/* 상품상세 날씨 스크롤 */
	/* ############################################################################################ */
    var weatherX = 0;
	//var weather_length = $("#weatherWrap > .weather:first > .slide > ul > li").length; //날씨 개수
    var weather_length = 7;
    var totPage = Math.ceil( weather_length ); //총 페이지수
    var weatherPage = 1; //초기페이지

	var weather_width = $('#infoWrap').width();
	if ( weather_width <= 710 )
	{
		$('.weather .slide').css('margin-left', 0 );
	}
	else if ( weather_width > 710 )
	{
		$('.weather .slide').css('margin-left', 50 );
	};

    $("#weatherWrap > .weather > button.prev").on('click',function(){
        if ( weatherPage > 1 )
        {
            weatherX = weatherX + 150;
            weatherPage = weatherPage - 1;
        }
        $("#weatherWrap > .weather > .slide > ul").css("left",weatherX);
    });
    $("#weatherWrap > .weather > button.next").on('click',function(){
        if ( weatherPage < totPage -2 )
        {
            weatherX = weatherX - 150;
            weatherPage = weatherPage + 1;
        }
        $("#weatherWrap > .weather > .slide > ul").css("left",weatherX);
    });
    /* 상품상세 날씨 스크롤 */


	/* ############################################################################################ */
	/* 상품상세 일정표 일자 스크롤 */
	/* ############################################################################################ */
	$("#dateWrap > .dateSlider > .slideWrap > .slide > span").each(function(){
		var tab_index = $(this).index();
		$(this).on('click',function(){
			$("#dateWrap > .dateSlider > .slideWrap > .slide > span").removeClass("on");
			$(this).parent("div").children("span:eq("+ tab_index +")").addClass("on");
		});
	});

    var dateCnt = 8; //한페이지 일자수
    var currentX = 0;
	var tab_length = $("#dateWrap > .dateSlider > .slideWrap > .slide > span").length; //일자 개수
    var page = Math.ceil( tab_length / dateCnt ); //총 페이지수
    var last = tab_length % dateCnt; //마지막페이지 일자수
    var currentPage = 1; //초기페이지
    var wrapW; //wrap 가로사이즈 정의

    if ( tab_length <= dateCnt ) //8일차 보다 작을경우
    {
        wrapW = tab_length * 45;
        $("#dateWrap > .dateSlider > .slideWrap").css("width",wrapW +10);
        
		$("#dateWrap .dateSlider button.next").removeClass("on");
		$("#dateWrap .dateSlider button.next").addClass("off");
    }else{
		$("#dateWrap .dateSlider button.next").removeClass("off");
		$("#dateWrap .dateSlider button.next").addClass("on");
    }

    $("#dateWrap > .dateSlider > button.prev").on('click',function(){
        if ( currentPage > 1 )
        {
            currentX = currentX + 369;
            currentPage = currentPage - 1;
        }
        $("#dateWrap > .dateSlider > .slideWrap > .slide").css("left",currentX);

        if ( tab_length > dateCnt ) //8일차 보다 클경우
        {
            wrapW = dateCnt * 45;
            $("#dateWrap > .dateSlider > .slideWrap").css("width",wrapW +10);
        }

        btnColor(currentPage);
    });

    $("#dateWrap > .dateSlider > button.next").on('click',function(){
        if ( currentPage < page )
        {
            currentX = currentX - 369;
            currentPage = currentPage + 1;
        }
        $("#dateWrap > .dateSlider > .slideWrap > .slide").css("left",currentX);

        if ( currentPage == page )
        {
			if ( last == 0 ){ lastCnt = dateCnt; }//예외처리 : 나머지가 0이면 한페이지 링크수 대입
			else{
				lastCnt = last; 
			}
            wrapW = lastCnt * 45;
            $("#dateWrap > .dateSlider > .slideWrap").css("width",wrapW +10);
        }

        btnColor(currentPage);
    });

	var btnColor = function(cur) {
        var cur = cur;

		$("#dateWrap .dateSlider button.prev").removeClass("off");
		$("#dateWrap .dateSlider button.next").removeClass("off");

        if ( cur <= 1 )
        {
            $("#dateWrap .dateSlider button.prev").addClass("off");
        } else if ( cur == page )
        {
            $("#dateWrap .dateSlider button.next").addClass("off");
        }
	}
	/* 상품상세 일정표 일자 스크롤 */

	/* ############################################################################################ */
	/* 상품상세 일정표 템플릿 원본이미 690 넘으면 고정
	/* ############################################################################################ */
	$("div.infoTxt.template .infoBody .picWrap span.picB img").each(function(index){
		var img = $(this);
		$(this).load(function(){
			var imgWidth = $(this).width();
			if(imgWidth > 690){
				$(this).width(690);
			}
		});
		img.attr("src", img.attr("src"));
	});


	/* ############################################################################################ */
	/* 상품상세 일정표 템플릿 이미지 140 넘으면 고정
	/* ############################################################################################ */
	$("div.infoTxt.template .infoBody .picWrap span.pic img").each(function(index){
		var img = $(this);
		$(this).load(function(){
			var imgHeight = $(this).height();
			if(imgHeight > 140){
				$(this).height(140);
			}
		});
		img.attr("src", img.attr("src"));
	});
	/* ############################################################################################ */
	/* 상품상세 자유여행타입 3단달력 스크롤 */
	/* ############################################################################################ */
//    var calendarX = 0;
//	var calendar_length = $(".calendarWrap > .calendar").length; //날씨 개수
//    var totCalendarPage = Math.ceil( calendar_length ); //총 페이지수
//    var calendarPage = 1; //초기페이지
//
//    if ( calendarPage >= totCalendarPage -2 )
//    {
//        $(".free03 > button.calendar_next").removeClass("on");
//    }
//
//    $(".free03 > button.calendar_prev").on('click',function(){
//        if ( calendarPage > 1 )
//        {
//            calendarX = calendarX + 272;
//            calendarPage = calendarPage - 1;
//            onOff();
//        }
//        $(".free03 > .calendarWrap").css("left",calendarX);
//    });
//    $(".free03 > button.calendar_next").on('click',function(){
//        if ( calendarPage < totCalendarPage -2 )
//        {
//            calendarX = calendarX - 272;
//            calendarPage = calendarPage + 1;
//            onOff();
//        }
//        $(".free03 > .calendarWrap").css("left",calendarX);
//    });
//
//    $("#freeInfo > .free03 > .hiddenBtn01").on('click',function(){
//        if ( calendarPage < totCalendarPage -2 )
//        {
//            calendarX = calendarX - 272;
//            calendarPage = calendarPage + 1;
//            onOff();
//        }
//		$(".free03 > .calendarWrap").css("left",calendarX);
//    });
//    $("#freeInfo > .free03 > .hiddenBtn02").on('click',function(){
//        if ( calendarPage < totCalendarPage -2 )
//        {
//            calendarX = calendarX - 544;
//            calendarPage = calendarPage + 2;
//            onOff();
//        }
//		$(".free03 > .calendarWrap").css("left",calendarX);
//    });
//
//    /*데이터가 있는 날만 선택할 수 있도록.
//     * $("#freeInfo .free03 .calendarWrap .calendar table.calendar_body tr td").on('click',function(){ // 선택일자 하일라이트
//        var td_index = $(this).index();
//		var selectedImg = "<span class=\"selectedImg\"></span>";
//		$("#freeInfo .free03 .calendarWrap .calendar table.calendar_body tr td span").remove();
//		$(this).prepend(selectedImg);
//    });*/
//
//    function onOff(){
//
//        if ( calendarX == 0 )
//        {
//            $(".free03 > button.calendar_prev").removeClass("on");
//            $(".free03 > button.calendar_next").addClass("on");
//        } else if ( calendarPage > 1 )
//        {
//            $(".free03 > button.calendar_prev").addClass("on");
//
//            if ( calendarPage >= totCalendarPage -2 )
//            {
//                $(".free03 > button.calendar_next").removeClass("on");
//            }
//        }
//
//		//첫번째월 색상표시
//		var orangePage = calendarPage -1;
//		$(".free03 > .calendarWrap > .calendar .yyyymm").removeClass("orange");
//		$(".free03 > .calendarWrap > .calendar:eq("+ orangePage +") .yyyymm").addClass("orange");
//    }
    /* 상품상세 자유여행타입 3단달력 스크롤 */



	/* ############################################################################################ */
	/* LNB Start */
	/* ############################################################################################ */

	$("#one > li").each(function(){
		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		if ($(this).attr("class").indexOf("on") > -1)
		{
			$(this).children("ul").css("display","block");
		}

		$(this).children("a").on('mouseover',function(){
			$("ul.sub").css("display","none");  // 2depth none
			$(this).parent("li").children("ul").css("display","block");
			$("#one > li").removeClass('on'); // 1depth 초기화
			$(this).parent("li").addClass('on'); // 1depth add class
		});

		$(this).children("a").on('focus',function(){
			$("ul.sub").css("display","none");  // 2depth none
			$(this).parent("li").children("ul").css("display","block");
			$("#one > li").removeClass('on'); // 1depth 초기화
			$(this).parent("li").addClass('on'); // 1depth add class
		});
	});

	$(".sub > li > a").each(function(){
		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}
		
		$(this).on('mouseover',function(){
			$(".sub > li").removeClass("on");
			$(this).parent("li").addClass("on");
		});

		$(this).on('focus',function(){
			$(".sub > li").removeClass("on");
			$(this).parent("li").addClass("on");
		});

		/*$(this).on('mouseleave',function(){
			$(".sub > li > a > img").each(function(){
				$(this).attr("src", $(this).attr("src").replace("__on","__") );
			});
		});*/

		$(this).on('blur',function(){
			$(".sub > li").each(function(){
				$(this).removeClass("on");
			});
		});
	});
	/* LNB End */



	/* ############################################################################################ */
	/* 행사 툴팁 Start */
	/* ############################################################################################ */
	$(".listBar .price").each(function(){
		var tab_index = $(this).index();

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		$(".listBar .tooltip").css("display","none");

		$(this).on('mouseover',function(){
			$(this).parent("td").children(".tooltip").css("display","block");
		});
		$(this).on('mouseleave',function(){
			$(".tooltip").css("display","none");
		});
	});
	/* 행사 툴팁 End */



	/* ############################################################################################ */
	/* 행사 달력 Start */
	/* ############################################################################################ */
	var calendar_cnt = 0;

	$("#unit .searchBar button.startdate").on('click',function(){
		if ( calendar_cnt == 0 )
		{
			$("#calendar").css("display","block");
			calendar_cnt = 1;
		} else if ( calendar_cnt == 1 )
		{
			$("#calendar").css("display","none");
			calendar_cnt = 0;
		}
	});
	$("#calendar > #calendar_bottom > #calendar_close").on('click',function(){
		$("#calendar").css("display","none");
		calendar_cnt = 0;
	});    
	/*$("#calendar table#calendar_body tr td").on('click',function(){ // 선택일자 하일라이트
        var td_index = $(this).index();
		var selectedImg = "<span class=\"selectedImg\"></span>";
		$("#calendar table#calendar_body tr td span").remove();
		$(this).prepend(selectedImg);
    });*/
	/* 행사 달력 End */



	/* ############################################################################################ */
	/* 행사 3단 Month 스크롤 */
	/* ############################################################################################ */
    var monthX = 0;
	var month_length = $("#unit .monthWrap > ul > li").length; //날씨 개수
    var totMonthPage = Math.ceil( month_length ); //총 페이지수
    var monthPage = 1; //초기페이지
 
    if ( monthPage >= totMonthPage -2 )
    {
        $("#unit > .searchBar > button.next").removeClass("on");
    }

    $("#unit > .searchBar > button.prev").on('click',function(){
        if ( monthPage > 1 )
        {
            monthX = monthX + 230;
            monthPage = monthPage - 1;
            monthOnOff();
        }
        $("#unit > .searchBar > .monthWrap > ul").css("left",monthX);
    });
    $("#unit > .searchBar > button.next").on('click',function(){
        if ( monthPage < totMonthPage -2 )
        {
            monthX = monthX - 230;
            monthPage = monthPage + 1;
            monthOnOff();
        }
        $("#unit > .searchBar > .monthWrap > ul").css("left",monthX);
    });
    $("#unit > .searchBar > .hiddenBtn01").on('click',function(){
        if ( monthPage < totMonthPage -2 )
        {
            monthX = monthX - 230;
            monthPage = monthPage + 1;
            monthOnOff();
        }
        $("#unit > .searchBar > .monthWrap > ul").css("left",monthX);
    });
    $("#unit > .searchBar > .hiddenBtn02").on('click',function(){
        if ( monthPage < totMonthPage -2 )
        {
            monthX = monthX - 460;
            monthPage = monthPage + 2;
            monthOnOff();
        }
        $("#unit > .searchBar > .monthWrap > ul").css("left",monthX);
    });

    function monthOnOff(){

        if ( monthX == 0 )
        {
            $("#unit > .searchBar > button.prev").removeClass("on");
            $("#unit > .searchBar > button.next").addClass("on");
        } else if ( monthPage > 1 )
        {
            $("#unit > .searchBar > button.prev").addClass("on");

            if ( monthPage >= totMonthPage -2 )
            {
                $("#unit > .searchBar > button.next").removeClass("on");
            }
        }

		//첫번째월 색상표시
		var orangePage = monthPage -1;
		$("#unit > .searchBar > .monthWrap .date").removeClass("orange");
		$("#unit > .searchBar > .monthWrap > ul > li:eq("+ orangePage +") .date").addClass("orange");
    }
    /* 행사 3단 Month 스크롤 End */



	/* ############################################################################################ */
	/* 기획전 Tab Start*/
	/* ############################################################################################ */
	$("#plan > .tab01").css("display","block");
	//$("#plan > .tab > ul > li:eq(0)").addClass("on");
	$("#plan > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		$("#plan > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#plan > .tabview").css("display","none");
		$("#plan > .tab"+tab_index).css("display","block");
	});
	/* 기획전 Tab End*/



	/* ############################################################################################ */
	/* 이벤트 Tab Start*/
	/* ############################################################################################ */
	$("#event > .tab01").css("display","block");
	//$("#event > .tab > ul > li:eq(0)").addClass("on");
	$("#event > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		$("#event > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#event > .tabview").css("display","none");
		$("#event > .tab"+tab_index).css("display","block");
	});
	/* 이벤트 Tab End*/



	/*tab div 가변처리로 전체 주석*/
	/* ############################################################################################ */
	/* 긴급모객 Tab Start*/
	/* ############################################################################################ */
	
	/*$("#fast > .tab01").css("display","block");
	$("#fast > .tab > ul > li:eq(0)").addClass("on");
	$("#fast > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		var bg_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		$("#fast > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#fast > .tabview").css("display","none");
		$("#fast > .tab"+tab_index).css("display","block");

		// 인근 배경 컨트롤
		$("#fast > .tab > ul > li").removeClass("bgNone");
		$("#fast > .tab > ul > li").eq( bg_index ).addClass("bgNone");

		$("#calendar").css("display","none");
		$("#calendar").removeClass();
	});*/
	
	/* 긴급모객 Tab End*/



	/* ############################################################################################ */
	/* 클럽메드 Tab Start*/
	/* ############################################################################################ */

	$("#introClubMed > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		$("#introClubMed > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#introClubMed > .tabview").css("display","none");
		$("#introClubMed > .tab"+tab_index).css("display","block");
	});
	/* 클럽메드 Tab End*/



	/* ############################################################################################ */
	/* 긴급모객 달력 Start */
	/* ############################################################################################ */
	/*$(".fast_search .cal").on('click',function(){

		var cal_index = $(this).attr("role");
		$("#calendar").css("display","none");
		$("#calendar").removeClass();
		$("#calendar").css("display","block");
		$("#calendar").addClass("c0"+cal_index);
	});
	$("#calendar #calendar_bottom #calendar_close").on('click',function(){
		$("#calendar").css("display","none");
		$("#calendar").removeClass();
	});*/


	/* 긴급모객 달력 End */



	/* ############################################################################################ */
	/* 통합검색 Tab Start*/
	/* ############################################################################################ */
	/*
	$("#searchWrap > .tab01 ").css("display","block");
	$("#searchWrap > .tab > ul > li:eq(0)").addClass("on");
	$("#searchWrap > .tab > ul > li").on('click',function(){
		var tab_index = $(this).index() + 1;
		$("#searchWrap > .tab > ul > li").removeClass("on");
		$(this).addClass("on");
		$("#searchWrap .tabview").css("display","none");
		$("#searchWrap .tab0"+tab_index).css("display","block");
	});
	/* 통합검색 Tab End*/



	/* ############################################################################################ */
	/* 통합검색 가격별검색 Start*/
	/* ############################################################################################ */
	/*
	$('input:checkbox[class="rangeChk"]').on('click',function(){
		$(this).parents(".chkRange").toggleClass("on");
	});
	*/
	$(".rangeWrap .tit").on('click',function(){ //직접입력
		$(".chkRange").removeClass("on");
		$(".minPrice").val("");
		$(".minPrice").focus();
		$(".maxPrice").val("");
	});
	$(".chkRange").on('click',function(){
		var range_index = $(this).index()-4;

		$(".chkRange").removeClass("on");
		$(this).addClass("on");

		if ( range_index == 0 ){ $(".minPrice").val(0); $(".maxPrice").val(300000); }
		else if ( range_index == 1 ){ $(".minPrice").val(300000); $(".maxPrice").val(400000); }
		else if ( range_index == 2 ){ $(".minPrice").val(400000); $(".maxPrice").val(500000); }
		else if ( range_index == 3 ){ $(".minPrice").val(500000); $(".maxPrice").val(1000000); }
		else if ( range_index == 4 ){ $(".minPrice").val(1000000); $(".maxPrice").val(2000000); }
		else if ( range_index == 5 ){ $(".minPrice").val(2000000); $(".maxPrice").val(""); }
	});
	/* 통합검색 가격별검색 Tab End*/



	/* ############################################################################################ */
	/* 통합검색 > 인기검색어 Tab Start*/
	/* ############################################################################################ */
	$("#rank > .tab01").css("display","block");
	$("#rank > .tab:eq(0)").addClass("on");
	$("#rank > .tab").on('click',function(){
		var tab_index = $(this).index() + 1;
		$("#rank > .tab").removeClass("on");
		$(this).addClass("on");
		$(".rankList").css("display","none");
		$(".rankList.tab0"+tab_index).css("display","block");
	});
	/* 통합검색 > 인기검색어 Tab End*/



	/* ############################################################################################ */
	/* 통합검색 1단 달력 Start */
	/* ############################################################################################ *//* 2015-09-22 ui피커로 교체
	var reWrap_calendar_cnt = 0;

	$("#reWrap .inputWrap button.startdate").on('click',function(){
		if ( reWrap_calendar_cnt == 0 )
		{
			$("#calendar").css("display","block");
			reWrap_calendar_cnt = 1;
		} else if ( reWrap_calendar_cnt == 1 )
		{
			$("#calendar").css("display","none");
			reWrap_calendar_cnt = 0;
		}
	});
	$("#reWrap > form > #calendar > #calendar_bottom > #calendar_close").on('click',function(){
		$("#calendar").css("display","none");
		reWrap_calendar_cnt = 0;
	});
    $("#calendar table#calendar_body tr td").on('click',function(){ // 선택일자 하일라이트
        var td_index = $(this).index();
		var selectedImg = "<span class=\"selectedImg\"></span>";
		$("#calendar table#calendar_body tr td span").remove();
		$(this).prepend(selectedImg);
    });
	/* 통합검색 1단 달력 End */



	/* ############################################################################################ */
	/* 통합검색 3단 달력 스크롤 */
	/* ############################################################################################ */
    var totSrh_calendarX = 0;
	var totSrh_calendar_length = $("#searchWrap .calendarWrap > .calendar").length; //개수
    var totSrh_totCalendarPage = Math.ceil( totSrh_calendar_length ); //총 페이지수
    var totSrh_calendarPage = 1; //초기페이지

    if ( totSrh_calendarPage >= totSrh_totCalendarPage -2 )
    {
        $("#searchWrap .calendarBox > button.calendar_next").removeClass("on");
    }

    $("#searchWrap .calendarBox > button.calendar_prev").on('click',function(){
        if ( totSrh_calendarPage > 1 )
        {
            totSrh_calendarX = totSrh_calendarX + 366;
            totSrh_calendarPage = totSrh_calendarPage - 1;
            totSrh_onOff();
        }
        $("#searchWrap .calendarBox > .calendarWrap").css("left",totSrh_calendarX);
    });
    $("#searchWrap .calendarBox > button.calendar_next").on('click',function(){
        if ( totSrh_calendarPage < totCalendarPage -2 )
        {
            totSrh_calendarX = totSrh_calendarX - 366;
            totSrh_calendarPage = totSrh_calendarPage + 1;
            totSrh_onOff();
        }
        $("#searchWrap .calendarBox > .calendarWrap").css("left",totSrh_calendarX);
    });
    $(".calendarBox .calendarWrap .calendar table.calendar_body tr td").on('click',function(){ // 선택일자 하일라이트
        var td_index = $(this).index();
		var selectedImg = "<span class=\"selectedImg\"></span>";
		$(".calendarBox .calendarWrap .calendar table.calendar_body tr td span").remove();
		$(this).prepend(selectedImg);
    });

    function totSrh_onOff(){

        if ( totSrh_calendarX == 0 )
        {
            $("#searchWrap .calendarBox > button.calendar_prev").removeClass("on");
            $("#searchWrap .calendarBox > button.calendar_next").addClass("on");
        } else if ( totSrh_calendarPage > 1 )
        {
            $("#searchWrap .calendarBox > button.calendar_prev").addClass("on");

            if ( totSrh_calendarPage >= totSrh_totCalendarPage -2 )
            {
                $("#searchWrap .calendarBox > button.calendar_next").removeClass("on");
            }
        }
    }
    /* 통합검색 3단 달력 스크롤 */



	/* ############################################################################################ */
	/* 고객센터 */
	/* ############################################################################################ */
	/* CS Main Start */
	$(".para_02 > ul > li > a > img").on("mouseenter",function(){
		$(this).attr("src", $(this).attr("src").replace("_off","_on") );
	});

	$(".para_02 > ul > li > a > img").on("mouseleave",function(){
		$(this).attr("src", $(this).attr("src").replace("_on","_off") ); 
	});

	
	/* CS Main End */
	/*$(".cat_area > tbody > tr > td").on('mouseenter',function(){
		$(".cat_area > tbody > tr > td:eq(0)").removeClass("on");
		$(this).addClass('on');	
	});*/

	/* 탭 클릭시 url 이동하므로 탭이벤트 삭제 
	$(".cat_area > tbody > tr > th").on('click',function(){
		$(".cat_area > tbody > tr > th").removeClass('on');
		$(this).addClass('on');	
	});
	*/
	

	$(".cat_area > tbody > tr > th").on('click',function(){
		$(".cat_area > tbody > tr > th").removeClass('on');
		$(this).addClass('on');
		return false;
	});

	/*$(".cat_area > tbody > tr > td").on('mouseleave',function(){
		$(this).removeClass('on');	
	});*/

	$(".faq_area > .faq_list > .ans").css("display","none");
	$(".faq_area > .faq_list > .ans:eq(0)").css("display","table");

	$(".faq_area > .faq_list > .que").on('click',function(){

		var idx = $(".faq_area > .faq_list > .que").index(this);

		$(".faq_area > .faq_list > .ans").css("display","none");
		$(".faq_area > .faq_list > .ans:eq("+idx+")").css("display","table");
	});

	$(".prize_cat_area > table > tbody > tr > th").on('click',function(){
		var idx=$(this).index();
		var obj="#prize"+(idx+1);

		$(".prize_body").css("display","none");
		$(obj).css("display","block");
	});

	$(".prize_cat_area > table > tbody > tr > td").on('click',function(){
		var idx=$(this).index();
		var obj="#prize"+(idx+1);

		$(".prize_body").css("display","none");
		$(obj).css("display","block");
	});

	$(".pay_info_body > table > tbody > tr > th").on('click',function(){
		var idx=$(this).index();
		var obj="#pay_info_"+(idx+1);

		$(".pay_info").css("display","none");
		$(obj).css("display","block");
	});

	$(".pay_info_body > table > tbody > tr > td").on('click',function(){
		var idx=$(this).index();
		var obj="#pay_info_"+(idx+1);

		$(".pay_info").css("display","none");
		$(obj).css("display","block");
	});

	$(".giftcert_info > table > tbody > tr > th").on('click',function(){
		var idx=$(this).index();
		var obj="#gift_info_"+(idx+1);

		$(".gift_info_tab").css("display","none");
		$(obj).css("display","block");
	});

	$(".giftcert_info > table > tbody > tr > td").on('click',function(){
		var idx=$(this).index();
		var obj="#gift_info_"+(idx+1);

		$(".gift_info_tab").css("display","none");
		$(obj).css("display","block");
	});

	/* ############################################################################################ */
	/* 마이페이지 */
	/* ############################################################################################ */

    /*[[ 레이어팝업 처리 Start ]]*/

	window.showLayer = function(btnObj) {
		
		var mWidth = $(btnObj).attr('role-w');
		var mHeight = $(btnObj).attr('role-h');
		var mUrl = $(btnObj).attr('role-url');
		window.popLayer = $("<div id=popLayer_wrap></div>").load(mUrl).modal({ maxWidth:mWidth,maxHeight:mHeight });
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
	}
	
	window.showLayer2 = function(aObj) {
		var href = $(aObj).attr('href');
		
		window.popLayer = $("<div id=popLayer_wrap></div>").load(href).modal({ maxWidth:880,maxHeight:800 });
		
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
	}

	
	/*window.showLayer = function(btnObj) {
	var mWidth = $(btnObj).attr('role-w');
	var mHeight = $(btnObj).attr('role-h');
	window.popLayer = $(btnObj).modal({ maxWidth:mWidth,maxHeight:mHeight });
		
	}
	 */

	window.closeLayer = function() {
			$("html").css("overflow-y","scroll");
			/*(this).popLayer.close();*/
	}
	
	window.showLoginLayer = function(forwardUrl) {
		var http = (top.location.href).substr(0,5);
		if(http == 'https'){
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:840,maxHeight:427 });
		}else{
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/login/loginPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:840,maxHeight:427 });
		}
//		window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:840,maxHeight:427 });
		
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
	}	
	
	//댓글이벤트 전용 팝업
	window.showLoginReplyLayer = function(forwardUrl) {
		var http = (top.location.href).substr(0,5);
		if(http == 'https'){
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:450 });
		}else{
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/login/loginReplyPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:400 });
		}
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
	}	
	
	window.showLoginRsvLayer = function(forwardUrl) {
		var http = (top.location.href).substr(0,5);
		if(http == 'https'){
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginRsvPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:639 });
		}else{
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/login/loginRsvPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:639 });
		}
		
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
		
//		window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginRsvPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:639 });
	}	

	window.showLoginPayLayer = function(forwardUrl) {
		var http = (top.location.href).substr(0,5);
		if(http == 'https'){
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginPaymentPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:623 });
		}else{
			window.popLayer = $("<div id=popLayer_wrap></div>").load("/login/loginPaymentPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:623 });
		}
		
		
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		modalScrollPop();
		
//		window.popLayer = $("<div id=popLayer_wrap></div>").load("/mypage/loginPaymentPop.do?forwardUrl=" + forwardUrl).modal({ maxWidth:1160,maxHeight:623 });
	}
	
	window.closeLoginLayer = function(forwardUrl) {
		$("html").css("overflow-y","scroll");
		if(forwardUrl != null && forwardUrl != "" && forwardUrl != "undefined") window.location.href = forwardUrl;
		else 									   window.location.reload();
	}
	
	$(".layer_close").on("click", function(){
        closeLayer();
    });
			
    $("#btnLayerClose").on("click", function(){
        closeLayer();
    });


	/* ############################################################################################ */
	/* 팝업 툴팁 Start */
	/* ############################################################################################ */
	$(".price_wrap").each(function(){

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			$("aside").css("display","none");
			$(this).children("a").removeAttr("href");
		}

		$(".price_wrap > .tooltip").css("display","none");

		$(this).on('mouseover',function(){
			$(this).children(".tooltip").css("display","block");
		});

		$(this).on('mouseleave',function(){
			$(".tooltip").css("display","none");
		});
	});
	/* 팝업 툴팁 End */



	/* ############################################################################################ */
	/* 사이트맵 Start */
	/* ############################################################################################ */
	// 하위 depth 있으면 링크제거
	$(".sitemap .depth03").each(function(){
		var depth04_exsist = $(this).children(".depth04").children("span").length;

		if ( depth04_exsist >= 1 )
		{
			$(this).children("span").children("a").removeAttr("href");
		};
	});

	var onOffCnt = 0;

	// 전체열기
	$(".sitemap .titleBar .onOff").on('click',function(){

		$(this).toggleClass("on");
		$(this).parent(".sitemap .titleBar").siblings(".col").children("ul").children("li.depth03").children("span").toggleClass("on");
		$(this).parent(".sitemap .titleBar").siblings(".col").children("ul").children("li.depth03").children(".depth04").toggleClass("on");

		if ( onOffCnt == 0 ){
			$(this).text("전체닫기");
			onOffCnt = 1;
		} else {
			$(this).text("전체펼치기");
			onOffCnt = 0;
		};
	});

	// depth 3 컨트롤
	$(".sitemap .depth03 span").on('click',function(){
		$(this).toggleClass("on");
		$(this).parent(".sitemap li.depth03").children(".depth04").toggleClass("on");
	});
	/* 사이트맵 End*/
	
	function modalScrollPop(){
		/* modal popup scroll */
		if ($(window).width() < 1100){
			$('.simplemodal-wrap').css({'overflow-x':'auto'});
		}
	}
});

function winResizeFunc(){
	if(window.name !== 'printPopup'){
		( $(window).width() <= 1100 ) ? $("html").css("width","1100px") :  $("html").css("width","100%");
	}
	
}