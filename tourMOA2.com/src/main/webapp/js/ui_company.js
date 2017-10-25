$(document).ready(function(){


	/* ############################################################################################ */
	/* GNB Start */
	/* ############################################################################################ */
	$("#gnb > ul > li").each(function(){

		var isTouch = 'ontouchstart' in document.documentElement;
		if ( isTouch == true )
		{
			//$("aside").css("display","none");
			//$(this).children("a").removeAttr("href");
		}

		//$("#gnb > ul > li , #gnbsub > ul > li").removeClass("on"); // 초기화

		$(this).on('mouseleave',function(){
			$("#gnb > ul > li").removeClass("on"); // 초기화
		});

		$(this).children("a").on('blur',function(){
			$("#gnb > ul > li").removeClass("on"); // 초기화
		});

		$(this).on('mouseover',function(){
			$("#gnb > ul > li").removeClass("on"); // 초기화
			$(this).addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$("#gnb > ul > li").removeClass("on"); // 초기화
			$(this).addClass("on");
		});
	});

	/* GNB , GNBSUB End */
	
	/* ############################################################################################ */
	/* GNB Position Start */
	/* ############################################################################################ */

	/*	var tab_t = $("#top").height() + $("#gnb").height() + 261;

        if ( $(window).scrollTop() > tab_t )
        {
            $('.tabWrap').css({ "position":"fixed", "top":"0", "margin-top":"0","margin-left":"-551px" });
            $('.tabWrap > li').css({ "margin-left":"0","border":"1px solid #ececec","border-top":"none","border-left":"none" });
            $('.tabWrap > li:first-child').css({ "border-left":"1px solid #ececec" });
        }

        $(window).scroll(function(){
            var windowTop = $(window).scrollTop();

            if ( tab_t < windowTop )
            {
                $('.tabWrap').css({ "position":"fixed", "top":"0", "margin-top":"0","margin-left":"-551px" });
                $('.tabWrap > li').css({ "margin-left":"0","border":"1px solid #ececec","border-top":"none","border-left":"none" });
                $('.tabWrap > li:first-child').css({ "border-left":"1px solid #ececec" });
            }
            else
            {
                $('.tabWrap').css({ "position":"relative","margin-top":"261px","margin-left":"-550px" });
                $('.tabWrap > li').css({ "border":"none","margin-left":"1px" });
                $('.tabWrap > li:first-child').css({ "margin-left":"0" });
            }
        });

	*/
	/* ############################################################################################ */
	/* Tab Start*/
	/* ############################################################################################ */
	
	$(".top_banner > ul.tabWrap > li").each(function(){

		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".top_banner > ul.tabWrap > li").removeClass("on");
			$(this).addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$(".top_banner > ul.tabWrap > li").removeClass("on");
			$(".top_banner > ul.tabWrap > li:eq("+tab_index+")").addClass("on");
		});

		/*$(this).children("a").on('click',function(){
			var target = $(this).attr("href");
			var target_h = $(target).offset().top-30;
			$('html,body').animate({scrollTop: target_h}, 600);
		});
		*/

	});
	/* Tab End*/
/*
	$(".historyTab > li").each(function(){

		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".historyTab > li").removeClass("on");
			$(this).addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$(".historyTab > li").removeClass("on");
			$(".historyTab > li:eq("+tab_index+")").addClass("on");
		});

	});
*/
	$(".locationTab > li").each(function(){

		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".locationTab > li").removeClass("on");
			$(this).addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$(".locationTab > li").removeClass("on");
			$(".locationTab > li:eq("+tab_index+")").addClass("on");
		});

	});

	$(".recruitTab > li").each(function(){

		var tab_index = $(this).index();

		$(this).on('mouseover',function(){
			$(".recruitTab > li").removeClass("on");
			$(this).addClass("on");
		});

		$(this).children("a").on('focus',function(){
			$(".recruitTab > li").removeClass("on");
			$(".recruitTab > li:eq("+tab_index+")").addClass("on");
		});

	});


	/* ############################################################################################ */
	/* faq */
	/* ############################################################################################ */

	$(".faq_area > .faq_list > .ans").css("display","none");
	$(".faq_area > .faq_list > .ans:eq(0)").css("display","table");

	$(".faq_area > .faq_list > .que").on('click',function(){

		var idx = $(".faq_area > .faq_list > .que").index(this);

		$(".faq_area > .faq_list > .ans").css("display","none");
		$(".faq_area > .faq_list > .ans:eq("+idx+")").css("display","table");
	});


	/* ############################################################################################ */
	/* 달력 레이어*/
	/* ############################################################################################ */


	/*$(".btnCal").on("click",function(){
		var curX = $(this).offset().left;
		var curY = $(this).offset().top;
		var tarX = curX - 203;
		var tarY = curY + 24;
		var direct = $(this).attr("role");

		if (direct == "up")
		{
			tarY = curY - 262;
		}

		$("#calendar").css({"display":"block","top":tarY,"left":tarX});
	});

	$("#calendar_close").on("click",function(){
		$("#calendar").css({"display":"none"});
	});

	$(".cal").on('mouseleave',function(){
		$("#calendar").css("display","none");
	});

	$("#calendar").on('mouseenter',function(){
		$("#calendar").css("display","block");
	});

	$("#calendar").on('mousemove',function(){
		$("#calendar").css("display","block");
	});

	$("#calendar").on('mouseleave',function(){
		$("#calendar").css("display","none");
	});*/



	/* ############################################################################################ */
	/* 회사연혁 Tab Start*/
	/* ############################################################################################ */
	$(".c_history > .historyWrap.tab06").css("display","block");
//	$(".c_history > ul.historyTab > li:eq(0)").addClass("on");
	$(".c_history > ul.historyTab > li").on('click',function(){
		var tab_index = $(this).index() + 1;

		if ( tab_index < 10 ) {
			tab_index = "0" + tab_index ;
		} else if ( tab_index >= 10 ) {
			tab_index = tab_index ;
		};

		// on
		$(".c_history > ul.historyTab > li").removeClass("on");
		$(this).addClass("on");

		$(".c_history > .historyWrap").css("display","none");
		$(".c_history > .historyWrap.tab"+tab_index).css("display","block");
	});
	/* 회사연혁 Tab End*/



    /*[[ 레이어팝업 처리 Start ]]*/

	window.showLayer = function(obj) {
		var mWidth = $(obj).attr('role-w');
		var mHeight = $(obj).attr('role-h');
		var mUrl = $(obj).attr('role-url');
		window.popLayer = $("<div id=popLayer_wrap></div>").load(mUrl).modal({ maxWidth:mWidth,maxHeight:mHeight });
			
		//브라우져 스크롤
		$("html").css("overflow-y","hidden");
		$(".simplemodal-wrap").css("overflow","hidden");
		$(".simplemodal-overlay").css("width","100%");
		
		//위치안내 건물사진 구분
		var mUrlPic = mUrl.split('?pic=')[1];
		if (!!mUrlPic){
			$('#popLayer_wrap').attr('class', 'simplemodal-data picNum' + mUrlPic );
		}
	}
	
	window.closeLayer = function() {
		$("html").css("overflow-y","scroll");
        window.popLayer.close();
	}

	$(".layerClose").on("click", function(){
        closeLayer();
    });
			
    $("#btnLayerClose").on("click", function(){
        closeLayer();
    });

});