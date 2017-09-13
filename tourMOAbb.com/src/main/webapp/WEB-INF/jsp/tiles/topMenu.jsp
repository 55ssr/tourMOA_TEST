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
	                <li>해외패키지</li>
	                <li>자유여행</li>
	                <li>허니문</li>
	                <li>골프</li>
	                <li>부산/대구출발</li>
	                <li>해외항공</li>
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
               <p>도쿄행</p>
               <p>도쿄행</p>
               <p>도쿄행</p>
               <p>도쿄행</p>
               <p>도쿄행</p>
               <p>도쿄행</p>
                   
             
               </div>
               
               </li>
               
               
               
               <li class="airportfind"><p class="airportfinder">항공권 찾기</p>
               <div class="airportfind-content">
               <p>미국행</p>
               <p>미국행</p>
               <p>미국행</p>
               <p>미국행</p>
               <p>미국행</p>
               <p>미국행</p>
                   
     
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


