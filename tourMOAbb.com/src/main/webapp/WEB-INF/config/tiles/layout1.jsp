<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>
	<title><tiles:insertAttribute name="title" /></title>
	<meta charset="UTF-8">	
<link rel="stylesheet" type="text/css" href="http://www.swagger.kr/index.html">
<link rel="stylesheet" type="text/css" href="/css/tp-main.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome.css">

<script src="js/jquery-2.2.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/mainJS.js"></script>
</head>
<body>

	<tiles:insertAttribute name="topMenu" />

	<tiles:insertAttribute name="content" />

	<tiles:insertAttribute name="footer" />
