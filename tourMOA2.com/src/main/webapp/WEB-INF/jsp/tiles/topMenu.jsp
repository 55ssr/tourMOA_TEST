<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div id="wrap">
    <div id="header">
        <div id="topmenu">
          <div id="tt">
           <ul>
               <li>로그인</li>
               <li>회원가입</li>
           </ul>
          </div>  
        </div>
        
        
        <div id="header_logo">
        	<div id="tt">
            <h1><img src="/images/tp-main/logo.jpg" alt="로고" width="160px" height="120px"></h1>
            <div id="searchBox">
            <select class="searchCondition">
              <option>전체 상품</option>
            </select>
            <input type="text" class="search" placeholder="search">
            <input type="button" class="searchBox" value="검색">
        	</div>
            </div>
        </div>
        
        <div id="navi">
     	   <div id="tt">   
	            <ul>
	                <li>해외패키지 </li>
	                <li>자유여행 </li>
	                <li>허니문 </li>
	                <li>골프 </li>
	                <li>부산/대구출발</li>
	                <li>해외항공</li>
	                <li>국내항공</li>
	                <li>국내여행</li>
	            </ul>
            </div>          
        </div>
    </div>  
    <!--header부분--> 
   
    <div id="main">
      <div id="tt">
       <div id="quickmenu">
          
           <ul>
               <li class="find"><p class="finder">여행상품 찾기</p>
               <div class="find-content">
               <br>
               <p>거품없는 직판여행 No.1</p>
               <p>급이다른 여행을 탐색해 보세요.</p>
               <br>
               <p>상품유형</p>
               <select class="find-content-inside">
               <option>유형을 선택하세요.</option>
               </select>
               <p>여행지역/호텔명</p>
               <input class="find-content-inside" type="text" id="" name="" placeholder="여행지역/호텔명을 입력하세요" />
               
               <p>출발일월</p>
               <p>달력넣기</p>
               </div>
               </li>
               
               
               
               <li class="airportfind"><p class="airportfinder">항공권 찾기</p>
               <div class="airportfind-content">
               <div id="quick">
               <br>
               <input type="button" class="airlineBtn" value="해외항공권" />
               <input type="button" class="domesticBtn" value="국내항공권" />
               <br>
               <!-- 왕복/편도 설정 id ="flightWay" VALUE = 왕복 : R 편도 : O  -->
               <input type="radio"  value="R" id="flightWay" name="flightWay" checked="checked" style="margin-left: 20px;"/> 왕복
               <input type="radio"  value="O" id="flightWay" name="flightWay"style="margin-left: 20px; margin-bottom: 20px; "/> 편도
                
               <br>
               <p>출발</p>
               <select class="airportfind-content-inside1">
               <option>인천/김포</option>
               </select>
               <input type="text" class="airportfind-content-inside2" placeholder="출발일자 선택"/>
               
               <p>도착</p>
               <!-- 클릭 시 모달창이나 팝업창 띄워 검색하기 기능 -->
               <input type="text" class="airportfind-content-inside1" placeholder="도착도시 검색"/>
               
               <input type="text" class="airportfind-content-inside2" placeholder="도착일자 선택"/>
               
               <p>인원</p>
               <!-- select id 성인 :adult 소아 :child 유아 : baby  -->
               <select class="airportfind-content-inside-people1" id="adult">
               <option value="1">성인1명</option>
               <option value="2">성인2명</option>
               <option value="3">성인3명</option>
               <option value="4">성인4명</option>
               <option value="5">성인5명</option>
               <option value="6">성인6명</option>
               <option value="7">성인7명</option>
               <option value="8">성인8명</option>
               <option value="9">성인9명</option>
               </select>
               
              
               <select class="airportfind-content-inside-people2" id="child">
               <option  value="0">소아 선택 x</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               
               <select class="airportfind-content-inside-people2" id="baby">
               <option  value="0">유아 선택 x</option>
               <option  value="1">1명</option>
               <option  value="2">2명</option>
               <option  value="3">3명</option>
               <option  value="4">4명</option>
               <option  value="5">5명</option>
               <option  value="6">6명</option>
               <option  value="7">7명</option>
               <option  value="8">8명</option>
               <option  value="9">9명</option>
               </select>
               
               </div>
               </div>
   
               </li>
               <li><a href="#" id="quickCloseBtn">X</a></li>
           </ul>
           
         </div>  
       </div>
       
        <div id="rightmenu">
                <ul>
                    <li>100</li>
                    <li>200</li>
                    <li>300</li>
                    <li>400</li>
                    <li><a href="#" id="moveTopBtn">TOP</a></li>
                </ul>
            </div>
    </div>
</div>


