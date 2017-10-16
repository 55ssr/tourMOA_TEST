<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title><tiles:insertAttribute name="title" /></title>
	
	<tiles:insertAttribute name="headLink" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="UTF-8">
	
	<!-- footer에 있으면 $ undefined 문제 -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script> -->
	<!-- <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script> -->
	<script src="/bootstrap4/assets/js/vendor/popper.min.js"></script>
	<script src="/bootstrap4/dist/js/bootstrap.min.js"></script>

	
	<link href="/css/admin/admin.css" rel="stylesheet">
	<!-- Bootstrap core CSS -->
    <link href="/bootstrap4/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/bootstrap4/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    
    <!-- Summer note for this editor -->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
    
	<!-- include summer note-ko-KR -->
	<script src="/js/summernote-ko-KR.js"></script>
	
	<!-- datepicker for bootstrap V4 -->
	<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="http://code.gijgo.com/1.5.1/js/gijgo.js" type="text/javascript"></script>
    <link href="http://code.gijgo.com/1.5.1/css/gijgo.css" rel="stylesheet" type="text/css" /> -->
	
	<!-- datetimepicker -->
	<link href="/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="/js/datetimepicker/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="/js/datetimepicker/bootstrap-datetimepicker.ko.js" charset="UTF-8"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	
</head>
<body class="admin_custom">
	<tiles:insertAttribute name="topMenu" />
	<tiles:insertAttribute name="aSide" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />
