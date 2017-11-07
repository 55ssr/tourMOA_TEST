<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/product/jquery.bxslider.js"></script>
<script src="/js/jquery.film_roll.min.js"></script>
<link rel="stylesheet" href="/css/sliderkit/sliderkit.css" />
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
 
<link rel="stylesheet" href="/css/main-sub.css" />
<script>
	$(document).ready(function(){
		$(".cont03 > ul > li > div .noti").show();
		$(".cont03 > ul > li > div .info").hide();
		$(".cont03 > ul > li > div").each(function(){
			var tab_index = $(this).index();

			$(this).on('mouseover',function(){
				$(".cont03 > ul > li > div:eq("+tab_index+") .noti").css("display","none");
				$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(false, false).show(0).animate({"top":110, "opacity":1},300);
			});

			$(this).on('mouseleave',function(){
				$(".cont03 > ul > li > div:eq("+tab_index+") .info").stop(true, false).hide(0).animate({"top":210},300, function(){
					$(".cont03 > ul > li > div:eq("+tab_index+") .noti").stop(false, false).fadeIn(400).show(0);
				});
			});
		});
		
		$(document).ready(function(){
		    /* ############################################################################################ */
		    /* 서브메인 비쥬얼 슬라이드 Start */ 
		    /* ############################################################################################ */
		    var film_roll = new FilmRoll({
		        configure_load : true ,
		        container      : '#film_roll' ,
		        height         : 500 ,
		        interval       : 5000 ,
		        pager          : false,
		        prev           : '.slide_prev',
		        next           : '.slide_next'
		    });
		    //sliderBtnArrowReset();
		    //$(window).resize(function(){ sliderBtnArrowReset(); });
		
			$(".controlbox > .control > ul > li:eq(1)").addClass("bgNone");
		
		    $('#film_roll').on('film_roll:moving', function(event) {
		        $(".controlbox > .control > ul > li").removeClass("on");
		        $(".controlbox > .control > ul > li:eq("+film_roll.index+")").addClass("on");
		        //$('#some_counter_div').html( (film_roll.index+1)+' / '+film_roll.children.length );
		
				// 인근 배경 컨트롤
				$(".controlbox > .control > ul > li").removeClass("bgNone");
				$(".controlbox > .control > ul > li").eq( film_roll.index + 1 ).addClass("bgNone");
		    });
		
		    $(".controlbox > .control > ul > li").each(function(){
		        var tab_index = $(this).index();
		
		        $(this).click(function() {
		            $(".controlbox > .control > ul > li").removeClass("on");
		            $(this).addClass("on");
		            film_roll.moveToIndex(tab_index);
		
		            // 인근 배경 컨트롤
		            $(".controlbox > .control > ul > li").removeClass("bgNone");
		            $(".controlbox > .control > ul > li").eq( tab_index + 1 ).addClass("bgNone");
		
		            return false;
		        })
		    });
		    $(".controlbox > .control > ul > li:first-child").addClass("on"); //버튼 on 초기화
		    /* 서브메인 비쥬얼 슬라이드 End */
		    });

	});
	
</script>

<div id="slide">
	<!--[[ 슬라이드 Start ]]-->
	<div id="film_roll" class="slidebox">
		<!--[[ slidebox Start ]]-->
		
			<div class="txtbox " data-film-roll-child-id="3" >
				<div class="film_dark_curtain"></div>
				<a href="#" target="_self">
					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/EP/EM/201708/201708031448093951501011001096.jpg" class="slidephoto" alt="너랑, 나랑, 아시아나 WITH 동남아">
				</a>
			</div>
			<div class="txtbox  active" data-film-roll-child-id="0" >
				<div class="film_dark_curtain"></div>
				<a href="#" target="_self">
					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/EP/EM/201710/201710251123218921102001001038.jpg" class="slidephoto" alt="11~12월 유럽, 노랑다운 가격전">
				</a>
			</div>
			<div class="txtbox  " data-film-roll-child-id="1" >
				<div class="film_dark_curtain"></div>
				<a href="#" target="_self">
					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/EP/EM/201710/201710131106109461412002001057.jpg" class="slidephoto" alt="오사카 여행">
				</a>
			</div>
			<div class="txtbox " data-film-roll-child-id="2" >
				<div class="film_dark_curtain"></div>
				<a href="#" target="_self">
					<img src="http://cimg.cdn.ybtour.co.kr/attachHome/EP/EM/201710/201710111840398451412002001098.jpg" class="slidephoto" alt="뉴질랜드">
				</a>
			</div>
			</div>
			
		
		
		
		
	<!--[[ slidebox End ]]-->

	<div class="controlbox">
		<!--[[ controlbox Start ]]-->
		<div class="control ctrl01">
			<ul>
			<li class="first on"><a href="너랑 나랑 노랑,&lt;br&gt;그리고 아시아나랑">서유럽 아시아나</a></li>
			<li class="first bgNone"><a href="오사카 여행">일본 오사카</a></li>
			<li class="first"><a href="뉴질랜드 남북섬&lt;br&gt;대한항공 전세기 직항">뉴질랜드</a></li>
			<li class="first"><a href="너랑, 나랑, 아시아나&lt;br&gt; WITH 동남아">동남아</a></li>
			</ul>
		</div>
	</div>
	<!--[[ controlbox End ]]-->

	<div class="btnWrap">
		<div class="btnBox">
			<a href="" class="slide_prev"></a>
			<a href="" class="slide_next"></a>
		</div>
	</div>
</div>
<div id="content">
<div id="theme_block">
	
<div class="slide_area">
	<h3 class="tit1"><img src="/images/product/tit1.png" alt=""></h3>
		<div class="btn_move">
			<span class="btn_prev"></span>
			<span class="btn_next"></span>
		</div>
	<ul class="slide_v4">
		<li><img src="/images/product/1-1.PNG" alt="slide"></li>
		<li><img src="/images/product/1-2.PNG" alt="slide"></li>
		<li><img src="/images/product/1-3.PNG" alt="slide"></li>
		<li><img src="/images/product/2-1.PNG" alt="slide"></li>
		<li><img src="/images/product/2-2.PNG" alt="slide"></li>
		<li><img src="/images/product/2-3.PNG" alt="slide"></li>
		<li><img src="/images/product/3-1.PNG" alt="slide"></li>
		<li><img src="/images/product/3-2.PNG" alt="slide"></li>
		<li><img src="/images/product/3-3.PNG" alt="slide"></li>
	</ul>
		
</div>

<div class="slide_area1">
	<h3 class="tit1"><img src="/images/product/tit2.png" alt=""></h3>
		<ul class="slide_v5">
			<li><img src="/images/product/h1.PNG" alt=""></li>
			<li><img src="/images/product/h2.PNG" alt=""></li>
			<li><img src="/images/product/h3.PNG" alt=""></li>
			<li><img src="/images/product/h4.PNG" alt=""></li>
		</ul>
	</div>
</div>
<div id="theme_block">
<h3 class="tit1"><img src="/images/product/tit3.png" alt="">
	<span class="more_r_1">항공권포함, 유류할증료 변동가능</span>
	</h3>
	<div class="tab_type02">
		<ul>
					<li ><a href="#" class="decoNone">유럽</a></li>
					<li ><a href="#" class="decoNone">동남아</a></li>
					<li ><a href="#" class="decoNone">필리핀|푸켓</a></li>
					<li ><a href="#" class="decoNone">중국|홍콩</a></li>
					<li ><a href="#" class="decoNone">일본 </a></li>
					<li ><a href="#" class="decoNone">괌|사이판</a></li>
					<li ><a href="#" class="decoNone">호주|뉴질랜드</a></li>
					<li ><a href="#" class="decoNone">미주|캐나다</a></li>
					<li ><a href="#" class="decoNone">아프리카</a></li>
					<li ><a href="#" class="decoNone"><i class="fa fa-plus" aria-hidden="true"></i> 더보기</a></li>
		</ul>
	</div>
		<div class="cont2">
			<ul>
				<li class="left left01">
				<span class="headline">3박4일 꽉찬 대만여행 </span>
			</li>
				<li class="right"><a href="#">
					<span class="theme1"><br></span>
					<span class="tit1"> [OZ+특급호텔] 대만/화련태로각협곡/야류해상공원/온천/지우펀 4일</span>
					<span class="subtit1">여행코스 </span>
					<span class="detail1">
						★ 9월 24일 25일 出 [101타워$35포함] 마감임박 ★<br>
						(출발 날짜마다 관광지가 상이할 수 있습니다.)
					</span>
					<span class="price">
						549,000
						<p>원~</p>
					</span>
					</a>
				</li>
			</ul>
			<ul class="mgL20">
			<li class="left left02">
			<span class="headline">홍콩 + 마카오 꽉찬여행 </span>
			</li>
				<li class="right"><a href="#">
					<span class="theme1"><br></span>
					<span class="tit1">[실속/오전出] 알차고 야무지게 다녀오는 홍콩+마카오/베네시안 3일</span>
					<span class="subtit1">여행코스 </span>
					<span class="detail1">
						홍콩 마카오 오전출발 2박3일<br>
						(출발 날짜마다 관광지가 상이할 수 있습니다.)
					</span>
					<span class="price">
						449,000
						<p>원~</p>
					</span>
					</a>
				</li>
			</ul>
		</div>
		
		<div class="cont02">
			<ul>
				<li><a href="#">
					<span class="pic">
					<img src="/images/product/pic1.png" alt="">
				</span>
				<div class="info">
					<span class="tit">대만</span>
					<span class="detail">[Best.2개국] 에어마카오로 떠나는 대만+마카오 5일/6일</span>
					<span class="price">599,000
					<p>원 ~</p>
					</span>
				</div>
				</a>
			</li>
			<li><a href="#">
					<span class="pic">
					<img src="/images/product/pic2.png" alt="">
				</span>
				<div class="info">
					<span class="tit">홍콩/마카오</span>
					<span class="detail">[디즈니랜드+자유이용권] 소호/픽트램체험 홍콩+마카오 2개국 4일</span>
					<span class="price">679,000
					<p>원 ~</p>
					</span>
				</div>
				</a>
			</li>
			<li><a href="#">
					<span class="pic">
					<img src="/images/product/pic3.png" alt="">
				</span>
				<div class="info">
					<span class="tit">홍콩/마카오/심천</span>
					<span class="detail"> [저녁出/새벽 着] 휴가를 아끼는 홍콩+마카오여행 4일/5일</span>
					<span class="price">499,000
					<p>원 ~</p>
					</span>
				</div>
				</a>
			</li>
			<li class="last">
			<a href="#">
				<img src="/images/product/pic.PNG" alt="">
			</a>
			
			</li>
			</ul>
		</div>
	</div>
	
	
	<div id="theme_block">
<h3 class="tit1"><img src="/images/product/tit4.png" alt=""></h3>
	<div class="tab_type02">
		<ul>
					<li ><a href="#" class="decoNone">Blue<br>Lacande</a></li>
					<li ><a href="#" class="decoNone">관광여행</a></li>
					<li ><a href="#" class="decoNone">휴양여행</a></li>
					<li ><a href="#" class="decoNone">효도여행</a></li>
					<li ><a href="#" class="decoNone">노팁|노옵션</a></li>
					<li ><a href="#" class="decoNone">자녀동반</a></li>
					<li ><a href="#" class="decoNone">프리미엄</a></li>
					<li ><a href="#" class="decoNone">베이비문</a></li>
					<li ><a href="#" class="decoNone">주말여행</a></li>
					<li ><a href="#" class="decoNone">자유여행</a></li>
		</ul>
	</div>
	<div class="cont03">
		<ul>
			<li>
				<div class="small">
					<a href="#">
					<img src="/images/product/s1.png" alt="">
					<div class="notiWrap smallWrap">
	         			<span class="noti" style="">
	                         <span class="tit">서유럽</span>
	                         <span class="subtit">8박10일</span>
	                         <span class="subPay">3,190,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	아이들에게 들려주고 싶은 이야기_동심...
								 </span>
	                     <span class="line"></span>
	                     <span class="area">서유럽</span>
	                     <span class="period">8박10일</span>
	                     <span class="price">3,190,000원 ~</span>
	                 </div>
					</a>
				</div>
				<div class="small">
					<a href="#">
					<img src="/images/product/s2.png" alt="">
					<div class="notiWrap smallWrap">
	         			<span class="noti" style="">
	                         <span class="tit">베트남</span>
	                         <span class="subtit">3박4일</span>
	                         <span class="subPay">1,099,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	다나아아아앙ㅇ..
								 </span>
	                     <span class="line"></span>
	                     <span class="area">베트남</span>
	                     <span class="period">3박4일</span>
	                     <span class="price">1,099,000원 ~</span>
	                 </div>
					</a>
				</div>
				 <div class="large">
         			<a href="#">
	               	 <img src="/images/product/s4.png" alt="">
			               	 <div class="notiWrap largeWrap">
	         			<span class="noti" style="">
	                         <span class="tit">서유럽</span>
	                         <span class="subtit">8박10일</span>
	                         <span class="subPay">3,590,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	서유럽ㅇ..
								 </span>
	                     <span class="line"></span>
	                     <span class="area">서유럽</span>
	                     <span class="period">8박10일</span>
	                     <span class="price">3,590,000원 ~</span>
	                 </div>
	                 
                 </a>
             </div>
				<div class="large">
         			<a href="#">
	               	 <img src="/images/product/s3.png" alt="">
			               	 <div class="notiWrap largeWrap">
	         			<span class="noti" style="">
	                         <span class="tit">서유럽</span>
	                         <span class="subtit">6박8일</span>
	                         <span class="subPay">2,790,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	산과 호수의 맑은 이야기_스위스일주_...
								 </span>
	                     <span class="line"></span>
	                     <span class="area">서유럽</span>
	                     <span class="period">6박8일</span>
	                     <span class="price">2,790,000원 ~</span>
	                 </div>
                 </a>
             	</div>
				<div class="small">
					<a href="#">
					<img src="/images/product/s2.png" alt="">
					<div class="notiWrap smallWrap">
	         			<span class="noti" style="">
	                         <span class="tit">사이판</span>
	                         <span class="subtit">4박5일</span>
	                         <span class="subPay">699,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	사이판_...
								 </span>
	                     <span class="line"></span>
	                     <span class="area">사이판</span>
	                     <span class="period">6박5일</span>
	                     <span class="price">699,000원 ~</span>
	                 </div>
					</a>
				</div>
				<div class="small">
					<a href="#">
					<img src="/images/product/s2.png" alt="">
					<div class="notiWrap smallWrap">
	         			<span class="noti" style="">
	                         <span class="tit">훗카이도</span>
	                         <span class="subtit">3박4일</span>
	                         <span class="subPay">729,000원 ~</span>
	                     </span>
	                 </div>
	                 <div class="info" style="display: block; top: 210px;">
	                     <span class="tit"></span>
	                     <span class="subtit">
	                     	온천여행...
								 </span>
	                     <span class="line"></span>
	                     <span class="area">훗카이도</span>
	                     <span class="period">3박4일</span>
	                     <span class="price">729,000원 ~</span>
	                 </div>
					</a>
				</div>
			</li>
		</ul>
	</div>
</div>
	</div>