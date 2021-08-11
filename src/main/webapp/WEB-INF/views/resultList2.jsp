<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="${cpath}/resources/img/favicon.png" type="image/png">
	<title>毛어떄</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${cpath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/linericon/style.css">
	<link rel="stylesheet" href="${cpath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/jquery-ui/jquery-ui.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/popup/magnific-popup.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/swiper/css/swiper.min.css">
	<link rel="stylesheet" href="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.css">
	<!-- main css -->
	<link rel="stylesheet" href="${cpath}/resources/css/style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style>
 .row,.title_color{
	max-width:80%;
	margin : auto;
	
 }
.btn_result:hover{
	background-color: orange;
	padding: 2px;
	}
.pt-20{
text-align: center;
}
.btn-reply:hover{
background-color: orange;
border: 1px solid white;
margin: auto;
padding: 6px;
}
.progress-table{
max-width: 80%;
margin: auto;
}
</style>
	
</head>	
<body>

	<section class="home-banner-area common-banner relative">
		<div class="result_tb" align="center" style="margin-top: -10%; style="padding-left: 40px">
			<table>
				<tr><td align="center" style="font-family: 'Gowun Dodum', sans-serif; font-size: 24px; font-weight: bold; text-decoration: underline; text-underline-position: under; padding-top: 50px;"><img src="${cpath}/resources/img/result2_sol.gif" alt="" style="max-height: 600px;">식습관을 바꿔보자!</td></tr>
				<tr><td style="color: white;	">.</td></tr>
				<tr><td style="color: white;	">.</td></tr>
				<c:forEach var="food" items="${foods}" varStatus="status">
				<tr><td align="left" style="font-family: 'Gowun Dodum', sans-serif; font-size: 16px; color: black;">${status.count}. ${food.food}</td></tr>
				</c:forEach>
			</table>
 		</div>
 	</section>
</body>
</html>