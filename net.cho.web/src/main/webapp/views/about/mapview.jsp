<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <c:set var="context" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<link rel="stylesheet" href="../css/main.css" type="text/css" media="screen" />
<title>yeSooL homepage</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" type="text/css" href="resources/css/slider-style.css" />
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/fav-icon.png" />
		<link type="text/css" rel="stylesheet" href="resources/css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="resources/js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
	    <script type="text/javascript" src="resources/js/login.js"></script>
	</head>
	<body>
	<div class="wrap">
		<div class="header">
			<jsp:include page="../common/header.jsp" />
		</div>
		<div class="map" style="margin-left: 10%; margin-right: 20%;">
			<b><h1>찾아 오시는 길 &nbsp;&nbsp;ye:SOOL 신촌점</h1></b> <br>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.102928491936!2d126.93691489503749!3d37.552638703136424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xf5270b2506be3e49!2zKOyjvCntlZzruZvsnbTsl5TslYTsnbQ!5e0!3m2!1sko!2skr!4v1422942568154"
				width="1200px;" height="520" frameborder="0" style="border:0">
			</iframe>
			</br>
			</br>
		</div>

	</div>

</body>
</html>