<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <c:set var="context" value="${pageContext.request.contextPath }"/>
<head>
<meta http-equiv="Content-Language" content="ko" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<title>yeSooL homepage</title>

	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" href="resources/css/main.css" type="text/css" media="screen" />
		<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" type="text/css" href="resources/css/slider-style.css" />
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/fav-icon.png" />
		<link type="text/css" rel="stylesheet" href="resources/css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="resources/js/modernizr.custom.28468.js"></script>
		<script type="text/javascript" src="js/jquery.cslider.js"></script>
	    <script type="text/javascript" src="resources/js/login.js"></script>
	<script type="text/javascript">
		//	The menu on the left
		$(function() {
			$('nav#menu-left').mmenu();
		});
</script>

			
	</head>

<body>

	<div class="wrap">
		<div class="header">
			<jsp:include page="../common/header.jsp" />
		</div>
		<div id="container">
				<div class="content_admin">			
			<table style='width:1200px; height:400px;border:1px solid gray;border-collapse: collapse;'>
				<tr style='width:150px'>
					<td style="border:1px solid gray;border-collapse: collapse;">
						<jsp:include page="left_menu.jsp" />
					</td>
					<td style='width:1050px'>
					<c:choose>
					<c:when test="${result eq 'mg_board' }">
						<jsp:include page="mg_board.jsp" />
					</c:when>
					<c:when test="${result eq 'mg_item' }">
						<jsp:include page="mg_item.jsp" />
					</c:when>
					<c:when test="${result eq 'mg_member' }">
						<jsp:include page="mg_member.jsp" />
					</c:when>
					<c:when test="${result eq 'reg_item' }">
						<jsp:include page="reg_item.jsp" />
					</c:when>
					<c:otherwise>
						<jsp:include page="reg_item.jsp" />
					</c:otherwise>
				</c:choose>
					
					
					</td>
				</tr>
			</table>
		
				
			</div>
		</div>

		
			
		</div>


		<jsp:include page="../common/bottom.jsp" />
</body>
</html>