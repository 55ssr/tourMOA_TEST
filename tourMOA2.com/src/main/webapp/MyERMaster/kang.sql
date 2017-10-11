	-- goods 테이블 지역 추가
	ALTER TABLE goods ADD(location varchar2(20)); --varchar2
	-- goods 테이블 아동가 추가
	ALTER TABLE goods ADD(pricech number);
	-- goods 테이블 유아가 추가
	ALTER TABLE goods ADD(pricein number);
	-- goods 테이블 "1박" 추가
	ALTER TABLE goods ADD(period1 varchar2(20));
	-- goods 테이블 "2일" 추가
	ALTER TABLE goods ADD(period2 varchar2(20));
	-- goods 테이블 경유여부 추가
	ALTER TABLE goods ADD(via char(1));
	-- goods 테이블 경유지들 추가
	ALTER TABLE goods ADD(vias varchar2(50)); --varchar2
	-- goods 테이블 사용여부 추가
	ALTER TABLE goods ADD(use char(1));
	-- goods 테이블 rdate 추가
	ALTER TABLE goods ADD(rdate timestamp); -- add
	-- city 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (city varchar(100))
	
	-- member 테이블 addr1_1, 1_2 바이트 수 증가
	ALTER TABLE member MODIFY (addr1_1 varchar(100))
	ALTER TABLE member MODIFY (addr1_2 varchar(100))

	-- goods 테이블 title 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (title varchar(300))
	-- goods 테이블 schd 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (schd varchar(300))
	-- goods 테이블 썸네일 추가
	ALTER TABLE goods ADD(images01 varchar(20))
	ALTER TABLE goods ADD(images02 varchar(20))
	ALTER TABLE goods ADD(images03 varchar(20))
	-- goods 테이블 편명 추가
	ALTER TABLE goods ADD(fno varchar(20))
	-- goods 테이블 현지도착시간 추가
	ALTER TABLE goods ADD(sadate date)
	-- goods 테이블 한국도착시간 추가
	ALTER TABLE goods ADD(eadate date)
	-- goods 테이블 남은 좌석 추가
	ALTER TABLE goods ADD(rem number)
	-- goods 테이블 최소 출발 인원 추가
	ALTER TABLE goods ADD(minp number)
	-- goods 테이블 유류할증료 추가
	ALTER TABLE goods ADD(fuel number)
	
	-- goods 테이블 데이터 추가
	INSERT INTO goods (	unq,title,gubun,location,nation,city,price,pricech,pricein,fuel,sdate,sadate,edate,eadate,period,period1,period2,via,vias,use,schd,dinfo,incinfo,nincinfo,ref,detail1,detail2,airline,person,rem,minp,code,images01,images02,images03,fno,opt,rdate) 
		VALUES (SEQ_goods_unq.nextval,
				'[한폭의그림 이태리] 친퀘테레/오르비에또+로마아울렛포함 이태리완전일주 8일',
				'해외패키지',
				'westeu',
				'이탈리아',
				'로마,피렌체,베니스,베로나,몬테카티니,친퀘테레,피사,나폼쏘',
				'1390000',
				'1390000',
				'500000',
				'85000',
				'2017-10-13', --수
				'2017-10-13', --정
				'2017-11-19', --요
				'2017-11-19', --함
				'8박 10일',
				'8',
				'10',
				'N',
				'',
				'Y',
				'인천-로마-피렌체-베니스-베로나-몬테카티니-친퀘테레-피사-로마-나폼쏘-인천',
				'상품안내(수정요)',
				'포함사항',
				'불포함사항',
				'참고사항',
				'이탈리아 항공 로마직항 초특가 상품!<br />이탈리아 주요도시 로마부터 국제적인 수상도시 베니스 등 중세시대의 문화를 아우르는 낭만 가득한 이태리여행! 완벽한 하나의 일정으로 진행되는 출발확정이 높은 상품입니다!',
				'이탈리아 항공 로마직항 초특가 상품!<br />이탈리아 주요도시 로마부터 국제적인 수상도시 베니스 등 중세시대의 문화를 아우르는 낭만 가득한 이태리여행! 완벽한 하나의 일정으로 진행되는 출발확정이 높은 상품입니다!',
				'알리탈리아항공',
				'20',
				'4',
				'10',
				'2017IT',
				'images01.PNG',
				'images02.PNG',
				'images03.PNG',
				'AZ759',
				'Y',
				sysdate
				)
				
	-- nation 테이블 생성
	CREATE TABLE nation 
	(
		eng varchar2(20),
		kor varchar2(20),
		imgsm varchar2(50),
		imglg varchar2(50)
	);
	
	-- 국가별 슬라이더 이미지 데이터 등록
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm01.jpg','img_lg01.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm02.jpg','img_lg02.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm03.jpg','img_lg03.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm04.jpg','img_lg04.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm05.jpg','img_lg05.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm06.jpg','img_lg06.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('spain','스페인','img_sp01.jpg','img_sp01.jpg');
	
	-- goods 테이블 상품안내 추가
	ALTER TABLE goods ADD(dinfo varchar2(4000));
	ALTER TABLE goods ADD(incinfo varchar2(4000));
	ALTER TABLE goods ADD(nincinfo varchar2(4000));	
	ALTER TABLE goods ADD(ref varchar2(4000));
	
	-- ref 컬럼 varchar2 > CLOB 타입 변환
	-- 삭제 후	
	ALTER TABLE goods DROP COLUMN ref;
	-- 다시 만듬 (CLOB 은 MODIFY 안된다고 함)
	ALTER TABLE goods ADD (ref CLOB);
	
	-- 담당자 테이블 생성
	CREATE TABLE manager
	(
		code varchar2(20),
		name varchar2(20),
		phone varchar2(20),
		mail varchar2(20),
		img varchar2(20)
	);
	
	-- 담당자 등록
	INSERT INTO manager (code, name, phone, mail, img) VALUES ('westeu','공유','010-1111-1111','zeroU@mail.com','img01.jpg')
	
	-- option 유무
	ALTER TABLE goods ADD(opt char(1));
	
	-- 옵션 테이블 생성
	CREATE TABLE opt
	(
		code varchar2(20),
		title varchar2(30),
		img varchar2(20),
		rtime varchar2(20),
		price varchar2(20),
		expl varchar2(500)
	);
	
	-- 옵션 테이블 데이터 생성 unq 임시 작성
	INSERT INTO opt (code, title, img, rtime, price, expl) 
	VALUES (
			'26', -- 상품의 unq와 매칭
			'베니스 곤돌라',
			'gon.jpg',
			'약 30분 소요',
			'€50',
			'- 진행방법 : 베니스의 명물 곤돌라에 탑승하여 베니스 본섬 물길따라 관광합니다.<br>- 미참가시 : 주변 자유관광 합니다. (인솔자/가이드 미동행)'
			)
	INSERT INTO opt (code, title, img, rtime, price, expl) VALUES ('26','베니스 수상택시','taxi.jpg','약 40분 소요','€50','- 진행방법 : 수상택시를 탑승하여 베니스 본섬의 S자 대운하를 관광합니다.<br>- 미참가시 : 일반 배로 본토로 이동합니다. (인솔자 동행)');
	INSERT INTO opt (code, title, img, rtime, price, expl) VALUES ('26','로마 미니밴투어','van.jpg','약 3시간 소요','€60','- 진행방법 : 바티칸시국을 제외한 모든 관광지를 미니밴으로 이동합니다.<br>- 미참가시 : 기존일정대로 도보로 로마 관광합니다. (인솔자 동행)');
	INSERT INTO opt (code, title, img, rtime, price, expl) VALUES ('26','카프리섬 투어','cafri.JPG','약 4시간 소요','€120','- 진행방법 : 카프리섬으로 들어가 카프리섬관광 진행합니다.<br>- 미참가시 : 미 참여자분들은 주변 자유 관광합니다.(인솔자 미동행)');		
	