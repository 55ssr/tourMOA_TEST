/*
 * YBTour Mobile Check Script _____create by kgi0412
 * - 모바일 접속 여부를 체크하고, PC보이인지를 체크한다.
 * 
 * [[ 기능 정보(Function Info.) ]]
 * ======================================
 * 
 * [[ 개정이력(Modification History Information) ]]
 * ----------------------------------------------------------------------
 * 0.1		2017.00.00		kgi0412			최초 작성
 * ----------------------------------------------------------------------
 * */

//파라미터 처리
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    	results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

// 모바일 체크 함수
function isMobile() {
	//모바일페이지 이동을 위한 데스크탑 설정
   	var filter = "win16|win32|win64|mac|macintel";
	
	if( navigator.platform ){
		return  filter.indexOf(navigator.platform.toLowerCase()) < 0;
	}
	
	return false;
}

// 모바일에서 PC보기로 볼경우.
function setMobileViewport() {
	if( isMobile() ) {
//console.log("screen width", $(window).width() +"/"+ window.screen.width);
		var viWidth = window.screen.width;
		var scale = "1";
		if(viWidth == 360 || viWidth == 720 || viWidth == 1080 || viWidth == 1440)	// 세로
			scale = "0.327";
		else if(viWidth == 640 || viWidth == 1280 || viWidth == 1920 || viWidth == 2560)	// 가로
			scale = "0.581";
		else if(viWidth == 375 || viWidth == 750)	// 아이폰6 세로
			scale = "0.34";
		else if(viWidth == 667 || viWidth == 1334)	// 아이폰6 가로
			scale = "0.605";
		else if(viWidth == 320)	// 아이폰5 세로
			scale = "0.291";
		else if(viWidth == 568 || viWidth == 1136 || viWidth == 1704 || viWidth == 2272 )	// 아이폰5 가로
			scale = "0.515";
		else if(viWidth == 414)	// 아이폰6+ 세로
			scale = "0.376";
		else if(viWidth == 736 || viWidth == 1472 || viWidth == 2208 || viWidth == 2944)	// 아이폰6+ 가로
			scale = "0.668";
		else if(viWidth == 412)	// 넥서스6 세로
			scale = "0.373";
		else if(viWidth == 732)	// 넥서스6 가로
			scale = "0.664";
		else
			scale = "1";
		
//	console.log(viWidth, scale);
		// viewport Meta Tag 지정.
		if(scale != 1) {
			$('meta[name=viewport]').remove();
			$('<meta/>').attr({'name' : 'viewport', 'content' : 'width=1100,initial-scale='+scale+',minimum-scale='+scale+',maximum-scale=1'})
			.appendTo('head').trigger( "create" );
		}
	}
	
	return false;
}

//모바일 페이지 이동 함수
function goMobileVersion(){
	var href = $(location).attr("href");
	if ( exclusionMobile() ) {
		location.href = href+(href.indexOf('?') > -1 ? '&' : '?') +'pc=Y';
	} else {

		var host = $(location).attr('host');
		if (host == 'homedev.ybtour.co.kr') {
			host = $(location).attr('protocol') + '//mobiledev.ybtour.co.kr';
		} else if(host == 'shome.ybtour.co.kr') {
			host = $(location).attr('protocol') + '//smobile.ybtour.co.kr';
		} else {
			host = $(location).attr('protocol') + '//m.ybtour.co.kr';
		}

		var nowPath = href.replace($(location).attr('protocol')+'//','');
		nowPath = nowPath.substring(nowPath.indexOf('index.html'), nowPath.length);
		location.href = host+nowPath;
		
	}
}

/* 모바일 제외 경로 여부 - kgi0412 */
function exclusionMobile() {
	var strExclusion = "episodeList|episodeView|episodeWrite";
	var arrExclusion = strExclusion.split('|');
	
	$(arrExclusion).each(function(idx, val){
		if( $(location).attr('pathname').indexOf(val) > -1 ) {
			return true;
		}
	});
	
	return false;
}