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
<style>
 .row,.title_color{
	max-width:80%;
	margin : auto;
 }
 .blog_post img {
	max-width: 40%;
	width: 300px;
    height: 100px;
    float: left;
    margin-right: 30px;
    vertical-align: text-bottom;
 }
 .blog_post {
 	float: left;
    padding-top: 20px;
    width: 500px;
    max-width:80%;
	margin:auto;
  }
  .blog_post h4 {
    line-height: 20px;
    color: #222222;
    font-weight: 600;
    transition: all 0.3s linear; 
    }
  .blog_post h4:hover {
      color: #f8b600; 
     }
  .blog_post p {
    margin-bottom: 26px; 
    }
h4{
 font-family: 'Gowun Dodum', sans-serif; 
 color: black; 
 font-size: 15px; 
}
</style>
</head>	

<body>
	<c:forEach var="deep" items="${list}">
	<div class="container">
		<div class="col-md-9">
			<div class="blog_post">
				<img src="/img/${deep.img}" />
					<h4>${deep.date}</h4>
					<h4>${deep.result}</h4>
					<h4>${deep.category}</h4>
					<h4>${deep.percent}</h4>
					<br/>
			</div>
		</div>
	</div>
	</c:forEach>
</body>
</html>