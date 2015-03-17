<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="context" value="${pageContext.request.contextPath }"/>    
<html>
	<head>
		<title>About yeSooL</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<link href="${context }/resources/css/style.css" rel='stylesheet' type='text/css' />
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
	<%-- 		<jsp:include page="../common/header.jsp" /> --%>
		</div>
		
		<div class="member-grids">
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople1.png" alt=""></a>
				<p>Flathost servers are having high physical security and power
					redundancy Your data will be secure with us.</p>
				<a href="#">IL WI</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople2.png" alt=""></a>
				<p>With our ultra mordern servers and optical cables, your data
					will be transfered to end user in milliseconds.</p>
				<a href="#">JEONG GWAN</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople3.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">CHEOL HEE</a>
			</div>
			
			<p style="color:white;">test</p>
			<p style="color:white;">test</p>
			
			
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople2.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">SEONG SU</a>
			</div>
			<div class="member-grid">
				<a href="#"><img src="./resources/img/about-testpeople1.png" alt=""></a>
				<p>We have a dedicated team of support for sales and support to
					help you in anytime. You can also chat with us.</p>
				<a href="#">SEONG WOO</a>
			</div>
			<div class="member-grid">
				<a href="map.do"><img src="./resources/img/about-map.png" alt=""></a>
					
				<p>회사지도보기</p>
				<a href="#">지도</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clients-slider">
		<%-- <jsp:include page="../common/bottom.jsp" /> --%>
	</div>


	<script type="text/javascript">
							$
		(window).load(function() {
			$(".flexiselDemo3").flexisel({
				visibleItems : 5,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 3
					}
				}
			});
		});
		$(function() {
			$('nav#menu-left').mmenu();
		});
	</script>
</body>
</html>

