<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://www.swagger.kr/index.html">
<link rel="stylesheet" type="text/css" href="/css/tp-main.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.css">
</head>
<script src="js/jquery-2.2.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
/* QUICK MENU BTN CLICK FUNC s */
  $(document).ready(function(){
	  /* 여행 상품 찾기  s */
    $(".finder").click(function(){
       	$(".finder").css({
             	color : "pink"
             });
       	$(".airportfinder").css({
         	color : "white"
         });
        $(".airportfind-content").hide("fast");               
        $(".find-content").show("fast");
        });
    /* 여행 상품 찾기  e */
    
    
    /* 항공권 찾기  s */
    $(".airportfinder").click(function(){
        	 $(".finder").css({
               	color : "white"
               });
        	$(".airportfinder").css({
             	color : "pink"
             });
            $(".find-content").hide("fast"); 
            $(".airportfind-content").show("fast");
        });
    /* 항공권 찾기  e */
    
    
    /* X BTN CLICK  s */
    $("#quickCloseBtn").click(function(){
        	$(".airportfinder").css({
              	color : "white"
              });
        	$(".finder").css({
              	color : "white"
              });
            $(".find-content").hide();
            $(".airportfind-content").hide();
        });
    /* X BTN CLICK  e */    
        
    });
  /* QUICK MENU BTN CLICK FUNC e */
</script>
<script type="text/javascript">
	/* TOP BTN CLICK  */
$(function() {
    
    $("#moveTopBtn").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});

</script>
<body>
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
           <h1><img src="/images/tp-main/logo.jpg" width="160px" height="120px"></h1>
            <input type="text" name="search" id="search" placeholder="search">
            <input type="button" name="searchBtn" id="searchBtn" value="검색">
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
