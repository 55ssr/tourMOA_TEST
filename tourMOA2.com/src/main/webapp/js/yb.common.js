/*
 * YBTour Common Script _____create by kgi0412
 * - 사용 빈도가 높은 공통 스크립트.
 * 
 * [[ 기능 정보(Function Info.) ]]
 * ======================================
 * 
 * [[ 개정이력(Modification History Information) ]]
 * ----------------------------------------------------------------------
 * 0.1		2017.00.00		kgi0412			최초 작성
 * ----------------------------------------------------------------------
 * */

$.ajaxSetup({
//	global: true,
	method : "POST",
	timeout : 30000,
//	statusCode: {
//		404: function() {
//			alert( "page not found" );
//		}
//	}
});

/********************************************************************************
 * Jquery 사용자 정의 확장 함수
 * 작성자		: kgi0412
 * 작성일		: 2017.08
********************************************************************************/
$.extend({
	frmtNumber : function(number) {
		var input = String(number);
		var reg = /(\-?\d+)(\d{3})($|\.\d+)/;
		if(reg.test(input)){
			return input.replace(reg, function(str, p1,p2,p3){
					return $.frmtNumber(p1) + "," + p2 + "" + p3;
				}
			);
		}else{
			return input;
		}
	},
//	format : function(source, params){
//		return $.validator.format(source, params);
//	},
	// * 숫자 여부를 판단하여 true/false 값으로 반환.
	isNumber: function(inValue){
		inValue = String(inValue).replace(/^\s*|\s*$/g, '');	// 좌우 공백 제거
		return (inValue == '' || isNaN(inValue)) ? false : true;
	},
	// * 일단위의 숫자를 두자리 기본포맷(00)으로 출력. (날짜에 사용)
	addZero: function(number){
		return parseInt(number, 10) < 10 ? "0" + number : number;
	},
	addZero: function(number, length){
		return number.lpad(length, "0");
	},
	isValidEmail : function(emailAddr) {
//		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
//		var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
		var emailRegex = new RegExp(/^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$/i);
		return emailRegex.test(emailAddr);
	}
});

//$(function(){
//	console.log( "document loaded First!!!" );
//});
//
//$( document ).ready(function() {
//    console.log( "document loaded" );
//});
//
//$( window ).load(function() {
//    console.log( "window loaded" );
//});

//$(function(){
//});