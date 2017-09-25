<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/customer.css" />

<script>
function fnMenuSelect() {
	//공지사항
	
	
	//여행이야기
	
	
	//여행상담
	
	
	//고객의소리
	 $('.lnb03').addClass('lnb03 on'); $("ul.sub_3").css("display","block");         $('.sub03_02').addClass('sub03_02 on'); $('#one').show();
	
	//소비자중심경영
	
    
    //서비스안내
    
}

$( document ).ready(function() {
	fnMenuSelect();
	$('#lnb').mouseleave(function(){
        setTimeout(function() {
        	$("#one > li").removeClass('on'); // 1depth 초기화
        	$("ul.sub").css("display","none"); // 2depth 사라짐
        	$("ul.sub > li").removeClass('on'); // 2depth 초기화
            fnMenuSelect();
        }, 3000);
    });
});

function loginConfirm(){
	
	
	if(confirm("로그인 후 이용하실 수 있습니다. 로그인하시겠습니까?")){
		showLoginLayer(encodeURIComponent("/customer/complaintWrite.do"));
	}
	 
}
</script>
<section id="content"><!--[[ content Start ]]-->

        <div class="tit best_guide_tit" title="BEST여행도우미">
        	<span class="tit_txt gift_sub">정성을 다하는 노랑풍선의 BEST 여행도우미/ 우수 대리점을 소개합니다. </span>
        </div>
        <ul class="best_guide_tab">
        	<li><a href="#bg_conts" class="active">BEST 여행도우미</a></li>
        	<li><a href="#bg_conts02">우수 대리점</a></li>
        </ul>
        <!--[[ BEST여행도우미 Start ]]-->
 		<div id="bg_conts" class="best_guide_contens">
            <ul class="guide_profile">
            	<li>
	            		<div class="guide_img"><img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201708/201708251556554411705004002054.png" alt="" /></div>
	            		<div class="guide_info">
	            			<span class="guide_name"><img src="/images/customer/icon_best.png" alt="베스트여행도우미">이미진(부산지사)</span>
	            			<dl  class="appraisal_period">
	            				<dt>- 평가 기간 :</dt>
	            				<dd>2017년</dd>
	            				<dt>- 평가 방법 :</dt>
	            				<dd>2017년 2분기 상담 품질 평가 최우수 직원</dd>
	            				<dt class="s_tit_impression">수상소감</dt>
	            				<dd class="s_txt_impression">개개인의 성향과 취향, 원하시는 바를 신속하게 확인하여 누구라도 만족하실 수 있는 여행이 될 수 있도록, 고객의 입장에서 생각하고 안내드리기 위해 노력하고 있습니다.  노랑풍선을 이용하시는 고객님들 모두, 내 가족이 여행상담을 받는다는 생각으로, 정확한 여행지식과 친절함으로 정성을 다할 것이며, 기분좋은 여행의 첫 시작이 될 수 있도록 노력 하겠습니다.
</dd>
	            			</dl>
	            		</div>
	            	</li>
				<hr />
	           		<li>
	            		<div class="guide_img"><img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201705/201705111438212731305001001014.JPG" alt="" /></div>
	            		<div class="guide_info">
	            			<span class="guide_name"><img src="/images/customer/icon_best.png" alt="베스트여행도우미">김유현(부산지사)</span>
	            			<dl  class="appraisal_period">
	            				<dt>- 평가 기간 :</dt>
	            				<dd>2017년</dd>
	            				<dt>- 평가 방법 :</dt>
	            				<dd>2017년 1분기 전화 모니터링 최우수 직원</dd>
	            				<dt class="s_tit_impression">수상소감</dt>
	            				<dd class="s_txt_impression">하루에 수많은 상담을 진행하다보면 다양한 여행패턴과 성향을 가진 고객님의 문의사항을 접하게 됩니다. 
친구, 가족, 친목단체 등 팀 성격에 따라 여행지, 요청사항이 달라지기도 합니다.. 저는 고객님의 니즈를 최대한 빨리 파악하여 신속의 서비스를 제공하고자 노력하고 있습니다. 여행의 첫 시작인 상담. 앞으로 더 성실하고 꼼꼼한 상담을 진행할 수 있도록 노력하겠습니다.  </dd>
	            			</dl>
	            		</div>
	            	</li>
				<hr />
	           		<li>
	            		<div class="guide_img"><img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201607/201607261901558371301004001059.jpg" alt="" /></div>
	            		<div class="guide_info">
	            			<span class="guide_name"><img src="/images/customer/icon_best.png" alt="베스트여행도우미">남승환(허니문 팀)</span>
	            			<dl  class="appraisal_period">
	            				<dt>- 평가 기간 :</dt>
	            				<dd>2016년</dd>
	            				<dt>- 평가 방법 :</dt>
	            				<dd>2016년 상반기 칭찬접수 최다 직원 및 2016년 2분기/4분기 전화 모니터링 최우수 직원</dd>
	            				<dt class="s_tit_impression">수상소감</dt>
	            				<dd class="s_txt_impression">고객님마다 여행 패턴과 성향이 모두 다르기 때문에 고객님 눈높이에 맞춰서 꼼꼼하게 상담을 해드리려고 노력하고 있습니다. 
허니문의 경우 반자유 혹은 자유일정도 많기 때문에 고객님께서 준비하면서 일정을 만드는데 불안함과 궁금하신 사항이 많이 발생할 수 밖에 없습니다. 고객님께서 여행과 관련하여 궁금하신 부분에 대해선 언제든지 편하게 상담 받고 물어볼 수 있는 담당자가 되려고 노력 하겠습니다.
</dd>
	            			</dl>
	            		</div>
	            	</li>
				<hr />
	           		<li>
	            		<div class="guide_img"><img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201605/201605251455166621301004001022.jpg" alt="" /></div>
	            		<div class="guide_info">
	            			<span class="guide_name"><img src="/images/customer/icon_best.png" alt="베스트여행도우미">이기영(미주 팀)</span>
	            			<dl  class="appraisal_period">
	            				<dt>- 평가 기간 :</dt>
	            				<dd>2016년</dd>
	            				<dt>- 평가 방법 :</dt>
	            				<dd>2016년 1분기/3분기 전화 모니터링 최우수 직원</dd>
	            				<dt class="s_tit_impression">수상소감</dt>
	            				<dd class="s_txt_impression">하루에 수많은 고객님들과 여행관련 상담을 진행하다보면 다양한 고객님들의 요구사항을 듣게됩니다.
저에게는 전화한통이 수많은 문의중 한건이지만 고객님의 입장에서는 전화한통, 방문 한번이 여행에대한 큰 기대감과 설레임을 안고 문의해주시는 것이라고 생각합니다.
고객님들의 요구에 때로는 100% 만족스러운 답변을 드리지 못할때도 있지만
여행에 대한 기대감과 설레임이 사라지지 않도록 한분한분 정성을 다해 상담하고 도와드리겠습니다.</dd>
	            			</dl>
	            		</div>
	            	</li>
				</ul>       
        </div>
        <!--[[ BEST여행도우미 End ]]-->
        <!--[[ 우수대리점 Start ]]-->
		<div id="bg_conts02" class="best_guide_contens">
			<ul class="agent_profile">
			<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161212001211301004001028.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">대전중구</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">저희가 잘했다고 주는 상이 아니란걸 잘 알고 있습니다. 앞으로 더 잘하라고 주시는 상으로 알고 더욱더 열심히 매진하고 노력하겠습니다</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">대전광역시 중구 대흥로 81-1(042-252-6012)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161216017521301004001065.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">울산남구</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">2년동안 부산대학교 관광과 박사를 마치고 최우수상도 받을수 있었던 것은  직원들이 회사를 가족같이 생각하고 노력하였기에  이렇게 큰상을 받은것 같습니다.</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">울산광역시 남구 문수로410번길 21 (052-265-5009)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161216323301301004002016.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">김해율하</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">안녕하세요 노랑풍선 김해 율하점 입니다.
한분 한분 소중한 고객으로 생각하며 열심히 한 결과 
최우수 대리점으로 선정이 되었습니다. 
항상 관심가져 주신분들께 진심으로 감사드리며
더욱 열심히 하라는 채찍으로 생각 하고 최선을 다하겠습니다. 
감사합니다.</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">경상남도 김해시 율하1로 10-1, 103호(율하동) (055-333-6693)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161217053971301004003098.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">수원시청</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">항상 노랑풍선을 사랑해주시는 고객분들께 감사드립니다.
더불어  거품없는 여행, 고객중심의 여행, 고객 한분 한분의  만족하는 여행이 되도록 신속 정확한 서비스로 최선을 다하겠습니다.</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">경기도 수원시 팔달구 권광로 159 수원프라자 1008호 (031-236-8845)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161217559371301004004032.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">청주상당</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">고객님들께 진심으로 감사드립니다.
더욱 열심히해서 최우수 대리점이 될 수 있도록 고객 한 분 한 분에게 정성을 다하는 청주 상당점이 되겠습니다.</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">충청북도 청주시 사직대로 342-2 (043-259-6423)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161218276241301004005056.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">창원양덕</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">안녕하세요 노랑풍선 창원양덕점입니다
지난 한해 고객님들의 관심과 사랑덕에
저희 노랑풍선 창원양덕점이 우수대리점에 선정되었습니다
더욱더 노력하고 고객님들께 사랑으로 보답하는 창원양덕점이 되겠습니다
감사합니다</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">경상남도 창원시 마산회원구 양덕남1길 45 (양덕동62-29) 노랑풍선 창원양덕 (055-255-1521)</dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161219023411301004006006.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">해운대신도시</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">한분한분 최선을 다해서 오랫동안 기억에 남을수 있는 여행이 되도록 노력하겠습니다</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">부산광역시 해운대구 대천로 205(좌동,벽산아파트 상가 306,307호) (051-702-7764) </dd>
            			</dl>
       				</div>
       			</li>
       		<li>
       				<div class="agent_img">
       					<span class="icon_best"><img src="/images/customer/icon_best_guide.png" alt="BEST" /></span> 
       					<span class="icon_the_best"><img src="/images/customer/ico_the_best.gif" alt="최우수 대리점" /></span> 
       					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/CS/BA/201606/201606161219329471301004007021.jpg" alt="" />
       				</div>
       				<div class="agent_info">
       					<span class="in_position">인천계양</span>
       					<dl  class="appraisal_period">
            				<dt>- 평가 방법 :</dt>
            				<!--<dd> 15년 송객목표 달성 대리점</dd>-->
            				<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>
            				<dt>- 평가 대상 :</dt>
            				<!--<dd> 년간 송객 목표 달성 대리점 상위 8개점</dd>-->
            				<dd> 15년 송객목표 달성 대리점</dd>
            				<dt class="s_tit_impression">수상소감</dt>
            				<dd class="s_txt_impression">고객님들께 진심으로 감사드립니다. 고객님들 덕분에 우수대리점이 되었습니다. 더욱 정성을 다하는 노랑풍선 인천계양점이 되겠습니다</dd>
            				<dt class="s_tit_position">대리점 위치</dt>
            				<dd class="s_txt_position">인천광역시 계양구 계양대로 185 남양빌딩 2층 (032-555-0744)</dd>
            			</dl>
       				</div>
       			</li>
       		</ul>
		</div>       		
		<!--[[ 우수대리점 End ]]-->
    </section><!--[[ content End ]]-->
            <script>
        $(function(){
        	//베스트 여행도우미 tab click
        	$(".best_guide_tab>li>a").on("click", function(e){
				e.preventDefault();
				$(".best_guide_tab>li>a").removeClass("active");
				$(this).addClass('active');
				var contsId = $(this).attr("href");
				$(".best_guide_contens").removeClass("active");
				$(contsId).addClass('active');
        	});
        	$(".best_guide_tab>li").eq(0).find("a").trigger("click");
        });
        </script>