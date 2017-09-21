$(function(){
	//travel search script
	var  travleSearch = {
		tabButton : $(".ts_list>li>a, .air_list>li>a"),
		tabFocusEvent : $('.ts_wrap_cont'),
		popCloseButton : $('.btn_m_pop_close'),
		air_Date_Sel : $('.air_date_sel'),
		resetButton : $('.input_reset'),
		travleSearchBox : $('#travel_search_box'),

		bindTabClick : function(){
			travleSearch.tabButton.on('click focus', function(e){
				e.preventDefault();
				var tsindex = $(this).parent().index();
				var tsCont = $(this).attr('href').split('#')[1];
				$(this).parent().parent().find('li').removeClass('on');
				$(this).parent().parent().removeClass('on');
				$(this).parent().addClass('on');
				if ($(this).parent().parent().attr('class').indexOf('ts_list')>-1) {
					$('.ts_list').addClass('on');
					travleSearch.travleSearchBox.addClass('on');
				}
				if ((tsCont == 'ts_wrap') && (tsindex == 1)) {
					$('.air_list>li').eq(0).find('a').trigger('click');
				}
				$('.' + tsCont).hide();
				$('.' + tsCont).eq(tsindex).show();
				travleSearch.popCloseButton.show();
			});
		},
		bindTBClose : function(e){
			travleSearch.popCloseButton.on('click focus', function(e){
				e.preventDefault();
				travleSearch.travleSearchBox.removeClass('on');
				$('.ts_list li, .ts_list, .air_list li').removeClass('on');
				travleSearch.tabButton.parent().find('>div').hide();
				$('.air_list li').eq(0).find('a').trigger('click');
				travleSearch.popCloseButton.hide();
			});
		},
		bindAirDateSel : function(){
			var airDateList = $('.air_date_list');
			travleSearch.air_Date_Sel.on('click focus', function(){
				(!$(this).find('input[type=checkbox]').is(':checked')) ? airDateList.hide() : airDateList.show();
			})	
		},
		bindButtonReset : function(){
			travleSearch.resetButton.on('click focus', function(){
				var thisParentText =$(this).parent().find('input[type=text]');
				thisParentText.val('');//.end().find('input[type=text]').focus();
			});
		}, 
		init : function(){
			this.bindTabClick();
			this.bindTBClose();
			this.bindAirDateSel();
			this.bindButtonReset();
		}
	};
	travleSearch.init();
	
	//common datepicker
	// 해외 출발
    $("#depdt1_1").datepicker({
    	onSelect: function (dateText, inst) {
    		// 해외 도착
            $("#depdt2_1").datepicker({
            	onSelect : function (dateText, inst){
            		$(this).parent().find('.ui_placeholder').hide();
            	},
                showMonthAfterYear: true
            }); 
           	var dateText = ($("#depdt1_1").val()).split('-');
           	var _dateText = ('09/08/2016').split('index.html');
           	var _date = new Date(
           			(parseInt(dateText[0]+dateText[1]+dateText[2]) > parseInt(_dateText[2]+_dateText[0]+_dateText[1]))
               		? dateText[1]+'/'+dateText[2]+'/'+dateText[0]
               		: '09/08/2016'
           	);        	
            $("#depdt2_1").datepicker("option", "minDate", _date);
            $(this).parent().find('.ui_placeholder').hide();
        },
        showMonthAfterYear: true , 
        beforeShowDay : function ( date ){
    		var _date = new Date('09/08/2016');
    		if (date < _date)
    	        return [false];
    	    return [true];
    	}
    });
        
     // 국내 출발
     $("#depdt1_2").datepicker({
     	onSelect: function (dateText, inst) {
     		//alert(dateText);
             // 국내 도착
             $("#depdt2_2").datepicker({
            	onSelect : function (dateText, inst){
             		$(this).parent().find('.ui_placeholder').hide();
             	},
                 showMonthAfterYear: true
             });
             
             var dateText = ($("#depdt1_2").val()).split('-');
         	var _dateText = ('09/07/2016').split('index.html');
         	
         	var _date = new Date(
         			(parseInt(dateText[0]+dateText[1]+dateText[2]) > parseInt(_dateText[2]+_dateText[0]+_dateText[1]))
             		? dateText[1]+'/'+dateText[2]+'/'+dateText[0]
             		: '09/07/2016'
         	);
             $("#depdt2_2").datepicker("option", "minDate", _date);
             $(this).parent().find('.ui_placeholder').hide();
         },
         showMonthAfterYear: true , 
         beforeShowDay : function ( date ){
     		var _date = new Date('09/07/2016');
     		if (date < _date)
     	        return [false];
     	    return [true];
     	}
     });
     //출발일월
	$("#departDate").datepicker({
		onSelect: function (dateText, inst) {
			$(this).parent().find('.ui_placeholder').hide();
		},
    	showButtonpanel : true,
    	showMonthAfterYear: true ,
        dateFormat : 'yymmdd',
        minDate: 1,
        currentText : '월전체' 
    });
	
	
	
	
	//select change
	var select = $(".select_bx_st select");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
	});
	//placeholder 기능 ie9 이하 적용관련 소스
	if ((navigator.userAgent.indexOf('MSIE 7') > 0 && navigator.userAgent.indexOf('Trident')) || (navigator.userAgent.indexOf('MSIE 8') > 0 && navigator.userAgent.indexOf('Trident')) || (navigator.userAgent.indexOf('MSIE 9') > 0 && navigator.userAgent.indexOf('Trident')))
	{
		$("input[placeholder],textarea[placeholder]").each(function(){
			var parentObj = $(this).parent();
				placeTxt = $(this).attr("placeholder");
				parentObj.css("position","relative");
				parentObj.prepend("<span class='ui_placeholder'>"+placeTxt+"</span>");
				$(this).attr("placeholder","");
			if($(this).val() != ""){
				$(this).prev().hide();
			};        
		});
		$(document.body).on("focusin","input[type=text],textarea[placeholder]",function(){
			$(this).prev().hide();
		}).on("focusout","input[type=text],textarea[placeholder]",function(){
			if($(this).val() == ""){
				$(this).prev().show();
			};        
		});
		$('.ui_placeholder').on({
			'click focusin' : function(){
				$(this).hide();
				$(this).parent().find('input[type=text]').focus();
			},'focusout' : function(){
				$(this).show();
			}
		});
	};
	
});