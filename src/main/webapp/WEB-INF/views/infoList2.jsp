
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
	</style>
	
</head>

<body>
	<!-- Start Sample Area -->
	<section class="sample-text-area">
		<div class="container" style="max-width: 75%;">
			<h3 class="text-heading title_color" style="font-family: 'Gowun Dodum', sans-serif; font-weight: bold;">여성형 탈모</h3>
			<p class="sample-text" style="font-family: 'Gowun Dodum', sans-serif; font-size: 15px;">
				<span>&nbsp&nbsp&nbsp&nbsp<b>여성형 탈모증</b>은 주로 나이 든 여성에서 모발이 가늘어지고 모발 수가 줄어드는 증상을 말하며 대부분 <b>윗머리 부위</b>에 
				나타납니다. 그러나 남성형 탈모와는 달리 <b>앞머리선의 후퇴</b>는 보이지 않고 탈모부위가 완전한 모발 소실로 진행되지도 
				않습니다. <br><b>&nbsp&nbsp&nbsp&nbsp초경 이후</b>에는 어느 시기에나 생길 수 있으며 분만 후나 영양부족, 호르몬 이상 등으로 인해 <b>발생</b>되어 질 수 있습니다.
				대부분의 환자들은 40-50대에 처음으로 탈모를 호소하며, 나이가 들수록 탈모의 빈도와 정도가 증가하게 됩니다.</span>
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

