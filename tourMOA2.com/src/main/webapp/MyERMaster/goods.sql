------------------------------ ALTER ADD START ------------------------------

-- 지역 추가 - 강
ALTER TABLE goods ADD(location varchar2(20));
-- 아동가 추가 - 강
ALTER TABLE goods ADD(pricech number);
-- 유아가 추가 - 강
ALTER TABLE goods ADD(pricein number);
-- "1"박 추가 - 강
ALTER TABLE goods ADD(period1 varchar2(20));
-- "2"일 추가 - 강
ALTER TABLE goods ADD(period2 varchar2(20));
-- 경유여부 추가 - 강
ALTER TABLE goods ADD(via char(1));
-- 경유지들 추가 - 강
ALTER TABLE goods ADD(vias varchar2(50));
-- 사용여부 추가 - 강
ALTER TABLE goods ADD(use char(1));
-- rdate 추가 - 강
ALTER TABLE goods ADD(rdate timestamp);
-- 편명 추가 - 강
ALTER TABLE goods ADD(fno varchar(20));
-- 현지도착시간 추가 - 강
ALTER TABLE goods ADD(sadate date);
-- 한국도착시간 추가 - 강
ALTER TABLE goods ADD(eadate date);
-- 남은 좌석 추가 - 강
ALTER TABLE goods ADD(rem number);
-- 최소 출발 인원 추가 - 강
ALTER TABLE goods ADD(minp number);
-- 유류할증료 추가 - 강
ALTER TABLE goods ADD(fuel number);
-- 상품안내 추가 (최상단) - 강
ALTER TABLE goods ADD(finfo varchar2(4000));
-- 상품안내 추가 (최상단) - 강
ALTER TABLE goods ADD(dinfo varchar2(4000));
-- 상품안내 추가 (포함사항) - 강
ALTER TABLE goods ADD(incinfo varchar2(4000));
-- 상품안내 추가 (불포함사항) - 강
ALTER TABLE goods ADD(nincinfo varchar2(4000));
-- 상품안내 추가 (참고/전달사항) - 강
ALTER TABLE goods ADD (ref CLOB); -- 실행 안되면 밑에 DROP COLUMN 실행바람
-- **********************************************************
-- ***** ref 컬럼 처음 만들 때 varchar2 로 부족해서 CLOB 타입 변환   *****
-- ***** ALTER TABLE goods DROP COLUMN ref; *****************
-- ***** 다시 만듬 (CLOB 은 MODIFY 안된다고 함) ********************
-- **********************************************************
-- option 유무 - 강
ALTER TABLE goods ADD(opt char(1));
-- 일정표 추가 - 강
ALTER TABLE goods ADD (daily CLOB);
-- 쇼핑센터 방문 횟수 - 강
ALTER TABLE goods ADD(shop number DEFAULT 0);
-- 썸네일 추가 - 취소 - 강
-- 취소 ALTER TABLE goods ADD(images01 varchar(20));
-- 취소 ALTER TABLE goods ADD(images02 varchar(20));
-- 취소 ALTER TABLE goods ADD(images03 varchar(20));
-- **************************************************************
-- ****** images01,02,03 컬럼을 이미 만들었다면 밑에 딜리트 문 실행 바람 ******
-- **************************************************************
-- ALTER TABLE goods DROP(images01);
-- ALTER TABLE goods DROP(images02);
-- ALTER TABLE goods DROP(images03);

------------------------------ ALTER ADD END ------------------------------




------------------------------ ALTER MODIFY START ------------------------------

-- city 컬럼 바이트 수 증가 - 강
ALTER TABLE goods MODIFY (city varchar(100));
-- title 컬럼 바이트 수 증가 - 강
ALTER TABLE goods MODIFY (title varchar(300));
-- schd 컬럼 바이트 수 증가 - 강
ALTER TABLE goods MODIFY (schd varchar(300));

------------------------------ ALTER MODIFY END ------------------------------





------------------------------ INSERT DATA START ------------------------------

-- 데이터 추가 ( 작업중 ) - 강
INSERT INTO goods (	unq,title,gubun,location,nation,city,price,pricech,pricein,fuel,sdate,sadate,edate,eadate,period,period1,period2,via,vias,use,schd,dinfo,incinfo,nincinfo,ref,detail1,detail2,daily,airline,person,rem,minp,code,fno,opt,shop,rdate) 
	VALUES (SEQ_goods_unq.nextval,
			'[한폭의그림 이태리] 친퀘테레/오르비에또+로마아울렛포함 이태리완전일주 8일',
			'해외패키지',
			'weurope',
			'italy',
			'로마,피렌체,베니스,베로나,몬테카티니,친퀘테레,피사,나폼쏘',
			'1390000',
			'1390000',
			'500000',
			'85000',
			to_date('2017-12-15 13:55:00', 'yyyy-mm-dd hh24:mi:ss'),
			to_date('2017-12-15 19:00:00', 'yyyy-mm-dd hh24:mi:ss'),
			to_date('2017-10-21 15:00:00', 'yyyy-mm-dd hh24:mi:ss'),
			to_date('2017-10-22 09:25:00', 'yyyy-mm-dd hh24:mi:ss'),
			'6박 8일',
			'6',
			'8',
			'N',
			'',
			'Y',
			'인천-로마-피렌체-베니스-베로나-몬테카티니-친퀘테레-피사-로마-나폼쏘-인천',
			'<p><img alt="" height="3245" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2017/6/19/201706191110514160.jpg" width="836"><br> <img alt="" height="362" src="http://cdn.ybtour.co.kr/Upload/Schedule/20151015/20151015_125659516_07854.jpg" width="831"></p><p>-&nbsp;노랑풍선만의 오랜기간 노하우로 선정된 <strong>전일정 2급 호텔</strong><br> -&nbsp;카사노바와 천재 음악가 비발디의 고향 <strong>수상도시 베니스 관광 일정</strong><br> -&nbsp;셰익스피어의 만든 세계적인 로맨스 로미오와 줄리엣의 무대 <strong>베로나 관광</strong><br> -&nbsp;세계문화유산으로 지정된 5개의 작은 마을이 모여진 절경! <strong>친퀘테레 마을 관광</strong><br> -&nbsp;갈리레오갈릴레이의 고향 피사의 모든것을 말해주는 <strong>피사의 사탑+두오모성당 관광</strong><br> -&nbsp;주변의 숲과 같이 어우러진 중세풍의 아름다운 신앙도시 <strong>오르비에토 관광</strong><br> -&nbsp;미켈란젤로가 메디치가를 통해 공부하였던 예술의 도시 <strong>피렌체 관광</strong><br> -&nbsp;이태리안의 작은 도시 바티칸시국의 총본산 <strong>성 베드로 성당 [내부 관광]</strong><br> -&nbsp;전세계 모든 박물관의 정점에 서있는 이태리의 자존심 <strong>바티칸 박물관[내부 관광]</strong><br> -&nbsp;교황 선출절차 콘클라베와 미켈란젤로의 천지창조로 알려진 <strong>시스티나 예배당[내부 관광]</strong><br> -&nbsp;이태리 남부 <strong>나폴리,소렌토,폼페이 관광</strong>',
			'<span class="type02 border"><p><span style="color:rgb(0, 0, 0)"><strong>▶ 전일정 수신기 제공</strong></span><br> ※분실 및 파손시 비용이 청구되오니 유의 부탁드리며, 공동재산이므로 세심한 관리 부탁드립니다.</p><p><span style="color:rgb(0, 0, 0)"><img alt="" height="394" src="http://cimg.cdn.ybtour.co.kr/attachHome/img/webImg/2016/7/7/201607071747017430.jpg" width="700"></span></p><p>-&nbsp;이용항공기 : 전일정 AZ 알이탈리아 항공 이용(로마 교황의 전세기로 사용되는 항공사로 검증된 기종)<br> -&nbsp;전 일 식 사 : 현지식, 한식, 중식, 호텔식이 번갈아 가며 나옵니다.<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; 이태리 전통 스파게티 특식 2회 포함입니다.</strong><br> -&nbsp;포 함 비 용 : 각종 TAX(유류세제외) + 관광지 입장료 + 여행자 보험 + 호텔비용 + 식사비 + 버스비용<br> -&nbsp;유류할증료 : <strong>유류할증료는 국제선 유가비용이 환율에 따라 달라질 수 있으며 발권일<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 기준 금액으로결정이 되며 상품가 책정시보다 변동 되었을 경우 추가<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 또는 인하 될 수 있음을 사전에 고지합니다.</strong><br> -&nbsp;숙 박 시 설 : 전일정 2급호텔 이용// 2인 1실 기준 이용<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 룸조인 원할시 다른손님과 배정해드립니다.<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>본 상품의 숙박시설은 현재 미정이나 2급호텔로 배정 예정이며, 출발 1일 전까지 WEB일정표에 표기 하겠습니다.</strong><br> -&nbsp;이 동 버 스 : 전 일정 차량(45인승버스) 및 식사, 호텔, 관광지 입장료 포함.<br> -&nbsp;여행자보험 : KB손해보험 가입(만 79세 6개월 이상 부터는 보험 가입 불가. 출발일 기준)<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 5천만원 : 만 14세 6개월 미만 // 만69세 6개월 이상 ~ 만 79세 6개월 미만<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 1억원 : 만14세 6개월 이상 ~ 만 69세 6개월 미만<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (자세한 내용은 아래 여행자보험 자세히 보기를 참고 부탁드립니다.)<br> -&nbsp;이태리를 대표하는 음식 <strong>정통 스파게티 2회 포함</strong></p><p><img alt="" height="246" src="http://cdn.ybtour.co.kr/Upload/Schedule/20150327/20150327_134718974_29597.jpg"></p><p>&nbsp;</p><p>&nbsp;</p> </span>',
			'<span class="type02 border"><p><span style="color:rgb(0, 0, 0)">▣ 현지 지불 ▣<br> - 가이드/기사 경비$140을 현지에서 지불해야합니다.(성인,아동 동일합니다.)<br> - 매너팁 : 호텔팁, 포터팁 (매너팁은 소비자의 자율적 선택사항으로 지불여부에 따른 불이익은 없습니다.)<br> &nbsp;<br> ★ 팁(TIP) 문화 이해하기<br> 한국에서는 다소 생소하지만 아프리카 유럽 북미등 타 나라에서는<br> 관습화,생활화 되어있는 팁문화는 여행중 꼭 기억해야할 문화 입니다.<br> 여행하는 나라의 문화를 존중하여 보다<br> 세련된 여행이 될 수 있도록 하여야 할 것입니다</span></p><p>&nbsp;</p><p><span style="color:rgb(0, 0, 0)">▣ 독실 사용료 ▣<br> 싱글룸 이용 (2인1실이 기준이기 때문에 독실 사용하시게 될 경우 부과됩니다.)<br> <strong>SINGLE CHARGE&nbsp; : 유선상으로 담당자에게 문의해주세요</strong><br> ※ 3인 1실 가능합니다. (성인3명 또는 성인2+소아1명 또는 성인1+소아2명(이 경우는 첫번째소아 90% 두번째소아 80%)</span></p><p><br> <span style="color:rgb(0, 0, 0)">&nbsp;<br> ▣ 무비자 승인 ▣<br> 미국 비자를 소지하지 않고, 전자여권으로 무비자 입국 승인을 받아야하는 경우<br> 입국 승인 홈페이지에서 징수하는 입국 허가 승인 비용 $14</span></p><p><span style="color:rgb(0, 0, 0)">반드시 전자여권을 소지 하셔야만 ESTA 신청이 가능하오니, 전자여권이 아니신 분들은 전자여권으로 교체 후 신청이 가능합니다.<br> ESTA 신청하러 가기.</span></p><p>&nbsp;</p><p><span style="color:rgb(0, 0, 0)">반드시 전자여권을 소지 하셔야만 ESTA 신청이 가능하오니, 전자여권이 아니신 분들은 전자여권으로 교체 후 신청이 가능합니다.</span></p><p><span style="color:rgb(0, 0, 0)"><strong>2011년 3윌 이후 이란과 이라크&nbsp; * 수단 * 시리아를 여행 목적으로 방문한 한국인은 미국 입국시 별도의 비자를 발급받아야 합니다 .<br> (ESTA 전자 승인 비자로는 입국 불가 합니다)</strong> </span></p> </span>',
			'참고사항',
			'이탈리아 항공 로마직항 초특가 상품!<br />이탈리아 주요도시 로마부터 국제적인 수상도시 베니스 등 중세시대의 문화를 아우르는 낭만 가득한 이태리여행! 완벽한 하나의 일정으로 진행되는 출발확정이 높은 상품입니다!',
			'',
			'일정표',
			'알리탈리아항공',
			'20',
			'4',
			'10',
			'2017IT',
			'AZ759',
			'Y',
			'3',
			sysdate
			)
			
------------------------------ INSERT DATA END ------------------------------
			