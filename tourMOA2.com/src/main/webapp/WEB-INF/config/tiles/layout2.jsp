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
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="UTF-8">
	
	<!-- footer에 있으면 $ undefined 문제 -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
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
</head>
<body class="admin_custom">
	<tiles:insertAttribute name="topMenu" />
	<tiles:insertAttribute name="aSide" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />
