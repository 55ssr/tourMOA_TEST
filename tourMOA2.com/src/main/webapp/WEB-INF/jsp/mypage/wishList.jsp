<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mypage.css" />	
	<script>
	function fnMenuSelect() {
		    //여행내역
		    
		    
		    //관심내역
		     $('.lnb02').addClass('lnb02 on'); $("ul.sub_2").css("display","block");  $('.sub02_01').addClass('sub02_01 on'); $('#lnb').show();
		    
		    //참여내역
		    
		    
		    //추가결제수단
		    
		    
		    //개인정보
		    
		}
		
		$( document ).ready(function() {
		    fnMenuSelect();
		    $('#lnb').mouseleave(function(){
		        setTimeout(function() {
		            $("#one > li").removeClass('on'); // 1depth 초기화
		            $("ul.sub").css("display","none"); // 2depth 사라짐
		            fnMenuSelect();
		        }, 2000);
		    });
		});
	</script>
	<script language="javascript">
		function fn_goDetail(wishUrl){
			$(location).attr("href", wishUrl );
		}
		
		$(document).ready(function(){	
			
			//선택상품삭제 하기
			$("#btnDelete").click(function(){
				
				var inputNum = $("input:checkbox[name='chk']").length;
				if(inputNum > 0){
					
					var checkedVal = "";
					var cnt = 0;
					
					$("input:checkbox[name='chk']:checked").each(function(){
						cnt++;
						checkedVal += ((checkedVal == "" ? "" : ",") + $(this).val());
					});			
					
					if(cnt == 0 ){
						alert("삭제할 상품을 선택하세요");
					}else{
						if(confirm("선택하신 상품을 삭제하시겠습니까?")){
							$(location).attr("href","/mypage/updateWishList.do?wishSepStr="+checkedVal);
						}					
					}
				}else{
					alert("삭제할 상품이 없습니다.");
				}
			});
			
			$("button[name='btnSchedule']").click(function(){
				var btnVal = $(this).attr('value');
				var webCls = btnVal.split(",")[0];
				
				if(webCls == 'B'){
					document.location.href='/product/detailFit.do?'+ btnVal.split(",")[1];
				}else{
					showLayer($(this));
				}			
			});		
			
			//예약마감
			$("button[name='btnClose").click(function(){
				alert("감사합니다. 예약이 마감되었습니다. \n담당자에게 전화문의바랍니다.");	
			});
		});
		
		//예약하기
		function doReserve(url){
			var starStrIndex = url.indexOf('?');
			var urlLength = url.length;
			var rervEvent = url.substring(parseInt(starStrIndex)+1, parseInt(urlLength)+1);
			
			
			document.location.href='/product/reserveStep01.do?'+rervEvent+'&nonCustYn=N';
				 
		}
	</script>
   <!-- 로그인, 아이디찾기, 비밀번호 찾기 -->
   <section id="content" class="contentSub"><!--[[ content Start ]]-->
        <div class="sec_wrap sec_01"><!--[[ 메인상단 Start ]]-->
            <div class="para_01">
                <p>안녕하세요. 즐거운 여행 되세요.</p>
                <div class="btnArea">
                    <span class="btn"><a href="/mypage/accountPwReaffirm.do">개인정보관리</a></span>
                    <span class="btn"><a href="/mypage/accountPwUpdate.do">비밀번호변경</a></span>
                </div>
            </div>
            <div class="para_02">
                <ul> 
                    <li class=""><p>여행상품<br />예약내역<br /><a href="/mypage/reserveList.do">0</a>건</p></li>                        
                  	<li><p>해외항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I','_self'); return false;">0</a>건</p></li>
                    <li><p>국내항공권<br />예약내역<br /><a href="#"  onclick="airMenuSubmit('http://air.ybtour.co.kr/air/b2c/AIR/AAA/AIRAAALST0100000010.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=D','_self'); return false;" >0</a>건</p></li>
                    <li class=" sel"><p>관심상품<br /><a href="/mypage/wishList.do">0</a>건</p></li>
                    <li class=""><p>상담문의<br /><a href="/mypage/inquiryList.do">0</a>건</p></li>
                    <li class="last"><p>여행이야기<br /><a href="/mypage/myPostList.do">0</a>건</p></li>                       
                </ul>
            </div>
        </div><!--[[ 메인상단 End ]]-->
   	</section>
    <section id="content" class="contentSub"><!--[[ content Start ]]--> 
        <div class="tit interest_tit" title="관심상품"><!--[[ 관심상품 Start ]]-->
            <div class="t_btn_w">
                <!-- <button type="button" id="btnCompare" class="t_btn" >선택상품비교</button> -->
                <button type="button" id="btnDelete" class="t_btn mgr0">선택상품삭제</button>
            </div>
        </div>
        
        <div class="intlist">
       		<ul class="dataNone">
                <li class="odd">
                    	등록된 관심상품이 없습니다.
                </li>
            </ul>	    	
    	</div><!--[[ 관심상품 End ]]-->
		<!-- <div class="morelist"><button>더보기 +</button></div> -->
    </section><!--[[ content End ]]--><script src="/js/common.js"></script>  
</div>
</div> 
