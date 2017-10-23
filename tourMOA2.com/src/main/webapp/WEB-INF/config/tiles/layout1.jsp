<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title><tiles:insertAttribute name="title" /></title>

<!-- js, css 링크 파일 모아 주세요  "/WEB-INF/jsp/tiles/headLink.jsp" -->
<tiles:insertAttribute name="headLink" />

<meta charset="UTF-8">
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="-1" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="robots" content="noindex,nofollow" />
<meta name="subject" content="" />
<meta name="description" content="해외패키지, 자유여행, 허니문, 국내여행, 항공권 등 실시간예약">
<meta name="keywords" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />	
<!-- <link rel="stylesheet" type="text/css" href="http://www.swagger.kr/index.html"> -->
<link rel="stylesheet" type="text/css" href="/css/tp-main.css">
<link rel="stylesheet" type="text/css" href="/css/detailPackage.css">
<link rel="stylesheet" type="text/css" href="/css/product-main.css">
<link rel="stylesheet" type="text/css" href="/css/product-detail.css">
<link rel="stylesheet" type="text/css" href="/css/search-total.css">
<link rel="stylesheet" type="text/css" href="/css/sliderkit/sliderkit.css">
<link rel="stylesheet" type="text/css" href="/fp/skin/functional.css">
<!-- fontAwesome 사이트에 아이콘  -->
<link rel="stylesheet" type="text/css" href="/css/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Kim Kookjin 추가 s ---
#######/mypage , /customer 사이트에 필요한 것들 #######
 -->
<link rel="stylesheet" href="/css/jquery-ui.css" />
<link rel="stylesheet" href="/css/sliderkit/sliderkit.css" /> 

<!-- <script src="/js/ui.js" type="text/javascript"></script> -->
<script src="/js/jquery.number.min.js"></script>
<script src="/js/jquery-2.2.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js" type="text/javascript"></script>	
<script src="/js/jquery.simplemodal-1.4.4.js"></script>
<script src="/js/jquery.validate.js"></script>
<script src="/js/additional-methods.js"></script>
<script src="/js/localization/messages_ko.js"></script> 
<script src="/js/common.js"></script> 
<script type="text/javascript" src="/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.sliderkit.1.9.2.pack.js"></script>
<script src="/js/sessionCheck.js"></script><!-- 새벽 배포이후 빼기로 -->
<script src="/js/naverLogin_implicit-1.0.2.js"></script>
<script src="/js/yb.mobileCheck.js" type="text/javascript"></script>
<!-- <script type="text/javascript" src="/js/yb.core.js"></script>
<script type="text/javascript" src="/js/yb.certification.js"></script> -->
<!-- Kim Kookjin 추가 e -->
</head>
<body>
	<tiles:insertAttribute name="topMenu" />
	<tiles:insertAttribute name="topNav" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />
