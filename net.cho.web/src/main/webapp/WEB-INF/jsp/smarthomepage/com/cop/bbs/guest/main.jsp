<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!doctype html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="resources/css/main.css" type="text/css" media="screen" />
		<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" type="text/css" href="resources/css/slider-style.css" />
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/fav-icon.png" />
		<link type="text/css" rel="stylesheet" href="resources/css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="resources/js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
	    <script type="text/javascript" src="resources/js/login.js"></script>
	<script type="text/javascript">
		$(function() {
			$('nav#menu-left').mmenu();
		});
</script>
		
</head>
<body>
	<div class="wrap">
		<div class="header">
			<jsp:include page="../../../cmm/layout/header.jsp" />
		</div>
	
		<div class='container'>
			<div id="content">
				<div id="url-navi">yeSooL Community</div>
						<c:choose>
				<c:when test="${result eq 'detail'}">
					<jsp:include page="detail.jsp"/>
				</c:when>
				<c:otherwise>
					<jsp:include page="list.jsp"/>	
				</c:otherwise>
				</c:choose>
			</div>
		</div>
		</div>
		
		

		<jsp:include page="../../../cmm/layout/bottom.jsp" />
	
</body>
</html>