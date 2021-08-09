
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
	
	
	
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	function getJson(){
		$.ajax({
			url: "${cpath}/infoList.do",
			type :"get",
			dataType: "html",
			success: function(result){
				$("#ajax").html(result);
				alert("통신 데이터 값 : " + result);
			},
			error : function(){
				alert("error");}
		});
	}
	
	
	</script>
	<style>
.text-heading{
text-align: center;

}
.lnr-arrow-right:before {
	content: "";
}
.sample-text-area{
max-width:80%;
margin:auto;
}
	</style>
	
</head>

<body>
	<!-- Start Sample Area -->
	<section class="sample-text-area">
		<div class="container" style="max-width: 75%;">
			<h3 class="text-heading title_color" style="font-family: 'Gowun Dodum', sans-serif; font-weight: bold;">남성형 탈모</h3>
			<p class="sample-text" style="font-family: 'Gowun Dodum', sans-serif; font-size: 15px;">
				<span>&nbsp&nbsp&nbsp&nbsp<b>유전적 소인</b>(우성유전) 때문에 발생하며, 증상은 20대 후반에서 30대 남자의 
				 <b>양측 전두부</b> 및 <b>두정부</b>에 탈모가 시작되어 점차 확대되며 개인에 따라 어느 정도의 차이는 있으나
				 전두부나 두정부의 모발이 <b>소실</b>되지만, 측두부나 후두부의 모발은 <b>빠지지 않고 남아 있는 것</b>이 보통이다.<br> 
				 &nbsp&nbsp&nbsp&nbsp탈모 부위에 <b>처음</b>에는 가늘고 약한 모발이 나오다가 결국에는 소실되며, <b>솜털</b>은 계속 자란다. 
				 <b>여성</b>에서도 남성형 탈모증이 생길 수 있다.</span>
			</p>
		</div>
	</section>
	<!-- End Sample Area -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
	<script src="${cpath}/resources/js/popper.js"></script>
	<script src="${cpath}/resources/js/bootstrap.min.js"></script>
	<script src="${cpath}/resources/js/stellar.js"></script>
	<script src="${cpath}/resources/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="${cpath}/resources/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="${cpath}/resources/vendors/isotope/isotope-min.js"></script>
	<script src="${cpath}/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${cpath}/resources/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="${cpath}/resources/js/mail-script.js"></script>
	<script src="${cpath}/resources/vendors/popup/jquery.magnific-popup.min.js"></script>
	<script src="${cpath}/resources/vendors/swiper/js/swiper.min.js"></script>
	<script src="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.js"></script>
	<script src="${cpath}/resources/js/theme.js"></script>
</body>

</html>
 
 
</body>
</html>

