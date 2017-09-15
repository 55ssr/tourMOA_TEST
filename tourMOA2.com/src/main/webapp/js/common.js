/**	
 *	select 의 옵션값을 모두 삭제 
 */
$.fn.selectOptionAllDelete = function(){
	var selectId = this;
	
	selectId.find('option').each(function() {
	   $(this).remove();
	});
	

};
/**	
 *	공통코드 select 세팅
 */
$.fn.selectOptionAppendCode = function(result, val, text){
	var selectId = this;
	if(text != null){
		var option;
		option = new Option(text, '');
		$(option).html(text);
		selectId.append(option);
	}
	
	$.each(result,function(idx, optionData){
		
		var option;
		
		if (optionData.commCdId == val){
			option = new Option(optionData.commCdNm, optionData.commCdId, false, true);
		}else{
			option = new Option(optionData.commCdNm, optionData.commCdId);
		}
		$(option).html(optionData.commCdNm);
		
	     selectId.append(option);
	});
	
};

/**	
 *	도시코드 select 세팅
 */
$.fn.selectOptionAppendCity = function(result, val, text){
	var selectId = this;
	if(text != null){
		var option;
		option = new Option(text, '');
		$(option).html(text);
		selectId.append(option);
	}
	
	$.each(result,function(idx, optionData){
		
		var option;
		
		if (optionData.cityCd == val){
			option = new Option(optionData.cityNm, optionData.cityCd, false, true);
		}else{
			option = new Option(optionData.cityNm, optionData.cityCd);
		}
		$(option).html(optionData.cityNm);
		
	     selectId.append(option);
	});
	
};

/**	
 *	도시코드 select 세팅(cityKorNm)
 */
$.fn.selectOptionAppendCityNm = function(result, val, text){
	var selectId = this;
	if(text != null){
		var option;
		option = new Option(text, '');
		$(option).html(text);
		selectId.append(option);
	}
	
	$.each(result,function(idx, optionData){
		
		var option;
		
		if (optionData.cityCd == val){
			option = new Option(optionData.cityKorNm, optionData.cityCd, false, true);
		}else{
			option = new Option(optionData.cityKorNm, optionData.cityCd);
		}
		$(option).html(optionData.cityKorNm);
		
	     selectId.append(option);
	});
	
};

/**	
 *	국가코드 select 세팅
 */
$.fn.selectOptionAppendNationNm = function(result, val, text){
	var selectId = this;
	if(text != null){
		var option;
		option = new Option(text, '');
		$(option).html(text);
		selectId.append(option);
	}
	
	$.each(result,function(idx, optionData){
		
		var option;
		
		if (optionData.naCd == val){
			option = new Option(optionData.naKorNm, optionData.naCd, false, true);
		}else{
			option = new Option(optionData.naKorNm, optionData.naCd);
		}
		$(option).html(optionData.naKorNm);
				
	    selectId.append(option);
	});
	
};

/**	
 *	메뉴 select 세팅
 */
$.fn.selectOptionAppendMenu = function(result, val, text){
	var selectId = this;
	if(text != null){
		var option;
		option = new Option(text, '');
		$(option).html(text);
		selectId.append(option);
	}
	
	$.each(result,function(idx, optionData){
		
		var option;
		
		if (optionData.dspId == val){
			option = new Option(optionData.dspNm, optionData.dspId, false, true);
		}else{
			option = new Option(optionData.dspNm, optionData.dspId);
		}
		$(option).html(optionData.dspNm);
		
	     selectId.append(option);
	});
	
};
/* 다른출발일보기
$.fn.showScheduleLayer = function(){
	
	var roleValue = $(this).attr('role-value');
	
	var goodsCd = roleValue.split("||")[0];
	var compId = roleValue.split("||")[1];
	
	var roleUrl = $(this).attr('role-url');
	$(this).attr('role-url', roleUrl + "?goodsCd=" + goodsCd + "&compId=" + compId);
	showLayer($(this));
	$(this).attr('role-url', roleUrl);	//최초 URL로 복원
}
*/

var checkPassword = {

    aResultSecure : [],
    sPassword : '',
    sResultRegexp : '',
    
    sCheckRegexp1 : /^[a-zA-Z]/,
    sCheckRegexp2 : /[a-zA-Z0-9\~\!\@\$\^\*\(\)\_\+\{\}\[\]]/,

    sRegexp1 : /[a-z]/,
    sRegexp2 : /[A-Z]/,
    sRegexp3 : /[0-9]/,
    sRegexp4 : /[\~\!\@\$\^\*\(\)\_\+\{\}\[\]]/,

    main : function(sPassword) {

        this.aResultSecure['code'] = 0;
        this.aResultSecure['msg'] = false;
        this.sPassword = sPassword;
        this.sResultRegexp = this.checkRegexp();
        this.aResultSecure['chk'] = this.checkRegexp();

        // 기본 검사
        if (this.checkDefaultPassword() == true) {

            // 낮은 단계 비밀번호 검사
            // 영어 또는 숫자로만 이루어진 6자리이상 비밀번호
            // return 1
            this.checkPasswordLevel1();

            // 중간 단계단계 비밀번호 검사
            // 영어, 숫자 2가지 조합으로 6자리 이상
            // 영어, 숫자, 특수문자 혼용으로 8자리 미만
            // return 2
            this.checkPasswordLevel2();

            // 높은 단계 비밀번호 검사검사
            // 영어, 숫자 2가지 조합으로 14자리 이상
            // 문자그룹 중에서 특수문자 포함 3가지 이상 조합하여 8자리 이상
            // return 3
            this.checkPasswordLevel3();

            if (this.aResultSecure['code'] == 0) {
                this.aResultSecure['code'] = 1000;
                this.aResultSecure['msg'] = '위험';
            }
        }

        return this.aResultSecure;
    },

    // 사용된 문자 확인.
    checkRegexp : function() {

        var rStr = '';
        if (this.sPassword.length >= 8 && this.sPassword.length <= 16) {   
            rStr += '0';
        }
        if (this.sRegexp1.test(this.sPassword)) {   // 소문자 사용
            rStr += '1';
        }
        if (this.sRegexp2.test(this.sPassword)) {   // 대문자 사용
            rStr += '2';
        }
        if (this.sRegexp3.test(this.sPassword)) {   // 숫자 사용
            rStr += '3';
        }
        if (this.sRegexp4.test(this.sPassword)) {   // 특수 문자 사용
            rStr += '4';
        }

        return rStr;
    },

    // 기본 비밀번호 조건 확인
    checkDefaultPassword : function() {

        if (this.sCheckRegexp1.test(this.sPassword)) {
            var sTemp = '';
            for (var x=0; x<this.sPassword.length; x++) {
                sTemp = this.sPassword.substr((x*1),1);
                if (!this.sCheckRegexp2.test(sTemp)) {
                     this.aResultSecure['code'] = 2000;
                     this.aResultSecure['msg'] = '['+sTemp+']는 사용 불가능한 특수문자입니다.';
                     return false;
                }
            }
        }

        if (this.sPassword.length < 8) {
            this.aResultSecure['code'] = 3000;
//            this.aResultSecure['msg'] = '비밀번호를 6자 이상 입력해입력해 주세요.';
            this.aResultSecure['msg'] = '8자 이상 입력';
			return false;
        }
        return true;
    },

    // 낮은 단계 비밀번호 검사
    // 영어 또는 숫자로만 이루어진 6자리이상 비밀번호
    // return 1
    checkPasswordLevel1 : function() {
        if (this.sPassword.length >= 8 && this.sPassword.length < 10) {
            if (this.sResultRegexp.length == 2) {   // 두가지 조합
                this.aResultSecure['code'] = 1;
            }
        }
    },

    // 중간 단계단계 비밀번호 검사
    // 영어, 숫자 2가지 조합으로 6자리 이상
    // 영어, 숫자, 특수문자 혼용으로 8자리 미만
    // return 2
    checkPasswordLevel2 : function() {
        if (this.sPassword.length >= 10 && this.sPassword.length < 15) {
            if (this.sResultRegexp.length == 2) {
                this.aResultSecure['code'] = 2;
            }
        }
        if (this.sPassword.length >= 8) {
            if (this.sResultRegexp == '123') {
                this.aResultSecure['code'] = 2;
            }
        }
    },

    // 높은 단계 비밀번호 검사검사
    // 영어, 숫자 2가지 조합으로 14자리 이상
    // 문자그룹 중에서 특수문자 포함 3가지 이상 조합하여 8자리 이상
    // return 3
    checkPasswordLevel3 : function() {
        if (this.sPassword.length >= 14) {
            if (this.sResultRegexp.length >= 2) {   // 두가지 조합에 14자리 이상
                this.aResultSecure['code'] = 3;
            }
        }

        if (this.sPassword.length >= 10) {
            if (this.sResultRegexp == '123') {    // 세가지 이상 조합 (특수문자 제외).
                this.aResultSecure['code'] = 3;
            }
        }

        if (this.sPassword.length >= 10) {
            if (this.sResultRegexp.length >= 2 && this.sResultRegexp.indexOf('4') > -1) {   // 세가지 이상 조합, 특수문자 포함
                this.aResultSecure['code'] = 3;
            }
        }
    }

}



function AjaxCallXml(url, params, successfunction){
	var targetUrl=url;
	$.ajax({
		'url': targetUrl,
		'type': 'GET',
		'dataType': 'xml',
		'data': params,
		'success': successfunction,
		'error': function() {
		//alert("error");
		}
	});
}

function AjaxCallText(url, params, successfunction){
	var targetUrl=url;
	$.ajax({
		'url': targetUrl,
		'type': 'GET',
		'data': params,
		'success': successfunction,
		'error': function() {
		//alert("error");
		}
	});
}

//경고창 띄우기
function fnAlert(obj,str,msg,len1,len2){
	if(obj.value.split(" ").join("")==str){
		alert('   \n\n    '+msg+'         \n\n');
		if(str!='nofocus') obj.select();	//포커스 안주기
		return 1;
	}else if(str=='nofocus' && obj.value.split(" ").join("")==''){
		alert('   \n\n    '+msg+'         \n\n');
		return 1;	
	}

	if(fnLength(obj,len1,len2,str)==1) return 1; 
}



function fnLength(obj,len1,len2,str){
	
	if (len1&&len2&&len1==len2){
		if(obj.value.length<len1 || obj.value.length>len2){
			alert('   \n\n    입력하신 내용의 길이가 잘못되었습니다       \n\n    '+len1+'자리로 입력하세요         \n\n');
			if(str!='nofocus') obj.select();	
			return 1;
		}	
	}else if(len1&&len2){
		if(obj.value.length<len1 || obj.value.length>len2){
			alert('   \n\n    입력하신 내용의 길이가 잘못되었습니다       \n\n    '+len1+'~'+len2+'자리로 입력하세요         \n\n');
			if(str!='nofocus') obj.select();	
			return 1;
		}
	}
}
//경고창 띄우기

//포커스 이동 obj1현재 포커스, obj2 이동할 포커스, len 길이
function fnNextFocus(obj1,obj2,len){
	if (obj1.value.length==len){
		obj2.focus();
	}
}

//숫자인지 확인하는 함수
function fnNum(strNum,obj){
	for(i=0; i < strNum.length ; i++){
		if(Number(strNum.charAt(i)) >= 0 || Number(strNum.charAt(i)) <= 9){
			continue;
		}
		else{
			obj.value	= "";
			alert("숫자만 입력 가능합니다.    ");
			obj.focus();
			return false;
			break;
		}
	}
	return true;
}

//이메일
function fnEmailForm(value) {
	var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
	return (pattern.test(value)) ? true : false;
}

//동영상 플레이(S)/////
function flash_movie(src, ids, width, height, wmode, autostart)
{
	var wh = "";
	if (parseInt(width) && parseInt(height)) 
		wh = " width='"+width+"' height='"+height+"' ";
		return "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' "+wh+" id="+ids+"><param name=wmode value="+wmode+"><param name=movie value="+src+"><param name=quality value=high><param name=autostart value=true><embed src="+src+" quality=high wmode="+wmode+" type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash' "+wh+" autostart=true></embed></object>";
}


function doc_write(cont)
{
	document.write(cont);
}
//동영상 플레이(E)/////

//각종 팝업
function na_open_window(name, url, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
{
toolbar_str = toolbar ? 'yes' : 'no';
menubar_str = menubar ? 'yes' : 'no';
statusbar_str = statusbar ? 'yes' : 'no';
scrollbar_str = scrollbar ? 'yes' : 'no';
resizable_str = resizable ? 'yes' : 'no';
window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

//구버전(S)

//가격 입력하려고 할때
function fnFocusAmt(obj,num){
	if (obj.value==num){
		obj.value	='';
	}
}

//가격을 입력하지 않고 이동할때
function fnBlurAmt(obj,num){
	if (obj.value==''){
		obj.value	= num;
	}
}

function fnNum2(obj){
	strNum = obj.value;
	if (strNum=='') return;


	if(strNum.substr(0,1)=="-"){
		strNum1	= obj.value.substr(0,1);
		strNum	= obj.value.substr(1,obj.value.length);
	}
	if (strNum=='') return;

	strNum = fnReplace(strNum,",");

	if(strNum.length==0) return;

	if(isNaN(strNum)==true) {
		obj.value="0"
		obj.select();
		return;
	}
}

function fnReMoney(strValue,strObj){
		var strValue1 = ""
		if(event.keyCode==37||event.keyCode==39) return;
		if(strValue.substr(0,1)=="-"){
			strValue1	= strValue.substr(0,1);
			strValue	= strValue.substr(1,strValue.length);
		}

		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');

		if(isNaN(strValue)){
			return;
		}

		if(fnAllMoney(strValue)){
			if(strValue.length==4 && strValue.indexOf(",")!="-1"){
				strObj.value=strValue1+strValue.substr(0,1)+','+strValue.substr(1,3);
				return false;
			}else if(strValue.length<4){
				strObj.value=strValue1+strValue;
				return false;
			}else if(strValue.length>14){
				strObj.value='';
				return false;
			}else{
				strObj.value=strValue1+fnAllMoney(strValue);
				return false;
			}
		}
}

function fnAllMoney(strNum){/////////////단위 환산을 위해
	if(event.keyCode==37||event.keyCode==39) return;

	var strNum = '' + strNum;
	var result = '';

	for(var i=0; i<strNum.length; i++) {
		if(i%3==0 && i!=0) result = ',' + result;
		result = strNum.charAt(strNum.length-(i+1)) + result;
	}

	return result;
}

//가격 입력시 구분자 공백처리 및 정수화
function fnReplace(str, gubun){
	if (str==''){
		str = 0;
		return;
	}

	str = str.replace(gubun,'');
	str = str.replace(gubun,'');
	str = str.replace(gubun,'');
	str = str.replace(gubun,'');
	str = str.replace(gubun,'');
	str = str.replace(gubun,'');
	return str;
}

function fnDieDie(obj1,obj2,msg){
	if(obj1.value!=obj2.value){
		alert('   \n\n    '+msg+'         \n\n');
		obj1.value = '';
		obj2.value = '';
		obj1.focus();
		return 1;
	}
}

//윈도우 새창 열기
function fnWinOpen(width,height,left,top,name,url,scroll,obj){
	if (left!=''){
		LeftPosition	= left;
	}else{
		LeftPosition	= (screen.width)?(screen.width-width)/2:100;
	}

	if (top!=''){
		TopPosition		= top;
	}else{

		TopPosition		= (screen.height)?(screen.height-height)/2:100;
	}

	winprops		= 'width='+width+', height='+height+', top='+TopPosition+', left='+LeftPosition+' scrollbars='+scroll+', toolbar=no';
	if(obj){
		window.open('',name, winprops);	
		obj.target		= name;
		obj.action		= url;
		obj.submit();
		return;
	}else{
		window.open(url,name, winprops);	
	}
}

function fnNum(strNum,obj){//숫자인지 확인하는 함수
	for(i=0; i < strNum.length ; i++){
		if(Number(strNum.charAt(i)) >= 0 || Number(strNum.charAt(i)) <= 9){
			continue;
		}
		else{
			obj.value	= "";
			alert("숫자만 입력 가능합니다.    ");
			obj.focus();
			return false;
			break;
		}
	}
	return true;
}


function fnNum2(obj){
	strNum = obj.value;
	if (strNum=='') return;


	if(strNum.substr(0,1)=="-"){
		strNum1	= obj.value.substr(0,1);
		strNum	= obj.value.substr(1,obj.value.length);
	}
	if (strNum=='') return;

	strNum = fnReplace(strNum,",");

	if(strNum.length==0) return;

	if(isNaN(strNum)==true) {
		obj.value="0"
		obj.select();
		return;
	}
}


function fnNum3(obj){
	strNum = obj.value;
	if (strNum=='') return;


	strNum = fnReplace(strNum,"-");

	if(strNum.length==0) return;

	if(isNaN(strNum)==true) {
		obj.value="0"
		obj.select();
		return;
	}
}

function fnReMoney2(strValue){
		var strValue1 = ""
		if(event.keyCode==37||event.keyCode==39) return;
		if(strValue.substr(0,1)=="-"){
			strValue1	= strValue.substr(0,1);
			strValue	= strValue.substr(1,strValue.length);
		}

		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');
		strValue=strValue.replace(',','');

		if(isNaN(strValue)){
			return;
		}

		if(fnAllMoney(strValue)){
			if(strValue.length==4 && strValue.indexOf(",")!="-1"){
				 return strValue1+strValue.substr(0,1)+','+strValue.substr(1,3);
			}else if(strValue.length<4){
				return strValue1+strValue;
			}else if(strValue.length>14){

				return false;
			}else{
				return strValue1+fnAllMoney(strValue);
			}
		}
}

//즐겨찾기
function fnBookMarkSite(title, url) { 
	// Internet Explorer
	if(document.all)
	{
	    window.external.AddFavorite(url, title); 
	}
	// Google Chrome
	else if(window.chrome){
	   alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	}
	// Firefox
	else if (window.sidebar) // firefox 
	{
	    window.sidebar.addPanel(title, url, ""); 
	}
	// Opera
	else if(window.opera && window.print)
	{ // opera 
	   var elem = document.createElement('a'); 
	   elem.setAttribute('href',url); 
	   elem.setAttribute('title',title); 
	   elem.setAttribute('rel','sidebar'); 
	   elem.click(); 
	}
} 

//시작페이지
function fnStartPage(Obj, urlStr){
 if (document.all && window.external){
	 Obj.style.behavior='url(#default#homepage)';
     Obj.setHomePage(urlStr);
 } else {
	 alert("해당 브라우저에서는 설정하실 수 없습니다.");
 }
}
//구버전(E)

function commaNum(num) {
    var len, point, str;

    num = num + "";
    point = num.length % 3
    len = num.length;

    str = num.substring(0, point);
    while (point < len) {
        if (str != "") str += ",";
        str += num.substring(point, point + 3);
        point += 3;
    }
    return str;
}

/* ********************************************************
 * sns
 ******************************************************** */       
function fnGoSns(targetUrl,snsName, title){
    	 
	var locUrl = window.location.href;
	var message = "[거품없는 노랑풍선]"+ title;
	    	
	switch(snsName){
	    	
		case "facebook":
			Url = targetUrl+encodeURIComponent(document.URL)+"&t="+encodeURIComponent(message);
			window.open(Url, "fnGoSns", "");
			break;
		case "twitter":
			Url = targetUrl+encodeURIComponent(message)+"+"+escape(locUrl);
			window.open(Url, "go_sns", "");
			break;
	}
}
	
/* ********************************************************
 * 브라우져 판별
 ******************************************************** */  
function fnIsIE(){
    
    var _ua = navigator.userAgent;
    var rv = -1;
     
    //IE 11,10,9,8
    var trident = _ua.match(/Trident\/(\d.\d)/i);
    if( trident != null )
    {
        if( trident[1] == "7.0" ) return true;
        if( trident[1] == "6.0" ) return true;
        if( trident[1] == "5.0" ) return true;
        if( trident[1] == "4.0" ) return true;
    }
     
    //IE 7...
    if( navigator.appName == 'Microsoft Internet Explorer' ) return true;
    
    //other
    var agt = _ua.toLowerCase();
    //edge ua에 chrome이 들어있음.....
    if(agt.indexOf("edge") != -1){
    	return true;
    }else if(agt.indexOf("chrome") != -1){
    	return false;
    }
    if (agt.indexOf("opera") != -1) return false; 
    if (agt.indexOf("staroffice") != -1) return false; 
    if (agt.indexOf("webtv") != -1) return false; 
    if (agt.indexOf("beonex") != -1) return false; 
    if (agt.indexOf("chimera") != -1) return false; 
    if (agt.indexOf("netpositive") != -1) return false; 
    if (agt.indexOf("phoenix") != -1) return false; 
    if (agt.indexOf("firefox") != -1) return false; 
    if (agt.indexOf("safari") != -1) return false; 
    if (agt.indexOf("skipstone") != -1) return false; 
    if (agt.indexOf("netscape") != -1) return false; 
    if (agt.indexOf("mozilla/5.0") != -1) return false;
}

/* ********************************************************
 * 링크복사
 ******************************************************** */ 
function fnCopyToClipboard(fitUrl) {
	
	var url = document.URL;

	if(fitUrl!= '' && fitUrl != undefined){
		url = document.URL.substring(0,document.URL.indexOf("?")+1)+fitUrl;
	}
	if( fnIsIE() ) {
		window.clipboardData.setData("Text", url);
		alert("선택하신 상품의 고유주소(URL)가 복사되었습니다. \nCtrl + V를 이용하여 붙여넣기 하세요.");
		return;
	}
	prompt("선택하신 상품의 고유주소(URL)가 복사되었습니다. \nCtrl + C 후 Ctrl + V를 이용하여 붙여넣기 하세요.", url);
}

/* ********************************************************
 * 관심상품
 ******************************************************** */ 
function fnSaveWishProc(wishCd, wishUrl, goodsCd, evCd, isLogin){
	//alert("goods&ev_cd :: "+ goodsCd+ "||"+evCd);
	if(!confirm("관심상품에 등록하시겠습니까?")){
		return false;
	}
	if(isLogin == "true"){
		$.ajax({
			type:"POST"	
			, url:"/product/saveWishProduct.do"
			, data:{
					"wishCd"   : wishCd
				  , "wishUrl"  : wishUrl
				  , "goodsCd"  : goodsCd
				  , "evCd"	   : evCd
			}
			, async: false		   
			, success:function(jsonResult) {
				
				var newBtn = $("<button/>")
				$(newBtn).attr('role-url', '/product/moveWishProduct.do');
				showLayer($(newBtn));
			}
			, error: function() {
				alert('Saving Error! ');
			}
		});
	}else{
		alert("로그인후 이용하실 수 있습니다.");
		showLoginLayer(encodeURIComponent(wishUrl));
	}
}

/* ********************************************************
 * 숫자 천단위 컴마
 ******************************************************** */ 
function comma(num){
	var len, point, str;  
	  
	num = num + "";  
	point = num.length % 3 ;
	len = num.length;  
  
	str = num.substring(0, point);  
	while (point < len) {  
	    if (str != "") str += ",";  
	    str += num.substring(point, point + 3);  
	    point += 3;  
	}  
	
	return str;

}


/* ********************************************************
 * 숫자만 입력(backspace, tab key  허용)
 ******************************************************** */ 
function showKeyCode(event) {
	event = event || window.event;
	var keyId = (event.which) ? event.which : event.keyCode;
	if( ( keyId >=48 && keyId <= 57 ) || ( keyId >=96 && keyId <= 105 ) || keyId == 9 || keyId == 8)
	{
		return;
	}
	else
	{
		return false;
	}
}


/* ********************************************************
 * 전화번호, 핸드폰번호 정규식
 ******************************************************** */ 
function telRegularEx(telNo){
	
	var telNoRgl = telNo;
	telNoRgl = telNoRgl.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/,"$1-$2-$3");
	
	return telNoRgl;
}

