<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="${cpath}/resources/img/favicon.png"
	type="image/png">
<title>毛어떄</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${cpath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${cpath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/animate-css/animate.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/jquery-ui/jquery-ui.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/popup/magnific-popup.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/swiper/css/swiper.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.css">
<!-- main css -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<script type="text/javascript">
	function goMain() {
		location.href = "${cpath}/logmain.do"
	}
</script>

<style>
.row d-flex {
background-color: white;
}

.gif_div{
	max-width: 400px;
	max-hieght: 300px;
	overflow: hidden;
}

.gif_div img{
	max-width: initial;
	margin-left: -10%;
	margin-top: -30%;
}

.exp{
	font-family: 'Gowun Dodum', sans-serif;
	font-size: 17px
}

.hover1{
	background-color: transparent;
	position: relative;
	display: inline-block; 
	width: 100%; 
	color: #fff;
	font-size: 16px; 
	line-height: 45px; 
	margin-right:3em; 
	max-width: 120px; 
	text-decoration: none; 
	text-transform: uppercase; 
	vertical-align: middle;
	
	letter-spacing: 0; 
	-webkit-transition: all .28s ease-in-out; 
	transition: all .28s ease-in-out;
}

.hover1:hover, .hover1:focus, .hover1:active{
	letter-spacing : 5px;
}

.hover1:after, .hover1:before{
	border: 1px solid rgba(255, 255, 255, 0);
	bottom: 0;
	content: " ";
	display: block;
	margin: 0 auto;
	position: relative;
	-webkit-transition: all .28s ease-in-out;
	transition: all .28s ease-in-out;
	width: 0;
}
.hover1:hover:after, .hover1:hover:before{
	border-color : grey;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover1:hover:before{
	bottom: auto;
	top: 0;
}
</style>
</head>

<body>
	
<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<img src="${cpath}/resources/img/logo3.png" alt="">
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li>
						<form action="${cpath}/logmain.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="hidden" name="pw" value="${vo.pw}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="메인">
						</form>
				</li>
				<li>
						<form action="${cpath}/execution.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="진단기록관리">
						</form>
				</li>
				<li>
						<form action="${cpath}/community.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="커뮤니티">
						</form>
				</li>
				<li>
						<form action="${cpath}/consulting.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="1대1 상담">
						</form>
				</li>
				<li>
						<form action="${cpath}/info.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="탈모정보">
						</form>
				</li>
				<li>
						<form action="${cpath}/mypage.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="마이페이지">
						</form>
				</li>
				<li>
					<form action="${cpath}/main.do" method="post">
						<input type="submit" class="genric-btn default-border" style="border:0 solid black;" value="로그아웃">
					</form>
				</li>
			</ul>
		</div>
	</div>
	<!--================ End Offcanvus Menu Area =================-->

	<!--================ Canvus Menu Area =================-->
	<div class="canvus_menu">
		<div class="container">
			<div class="toggle_icon" title="Menu Bar">
				<span></span>
			</div>
		</div>
	</div>
	<!--================ End Canvus Menu Area =================-->

	<section class="top-btn-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<img src="${cpath}/resources/img/logo4.png" alt="" style="position: fixed; z-index: 1; margin-left:-100px;">
				</div>
			</div>
		</div>
	</section>


	<!--================ Start banner section =================-->
	<section class="home-banner-area relative">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
			</div>
		</div>
	</section>
	<!--================ End banner section =================-->

	<!--================ Start Popular Place Area =================-->
	<section class="amenities-area section_gap" style="margin-top:-100px;">
		<div class="popular-place-area section_gap">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-lg-5 offset-lg-1">
						<div class="left-content">
							<img class="img1 img-fluid" src="${cpath}/img/popular/img_1.png"
								alt=""> <img class="img2 img-fluid"
								src="${cpath}/img/popular/img2.jpg" alt=""> <img
								class="img3 img-fluid" src="${cpath}/img/popular/img3.jpg"
								alt=""> <img class="img1 img-fluid"
								src="${cpath}/resources/img/popular/img_1.png" alt=""> <img
								class="img2 img-fluid"
								src="${cpath}/resources/img/popular/img2.jpg" alt=""> <img
								class="img3 img-fluid"
								src="${cpath}/resources/img/popular/img3.jpg" alt="">
						</div>
					</div>

					<!-- 사진촬영 클릭하면 사진촬영 페이지로 넘어가야 함 -->

					<!-- single-blog -->
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-amenities" style="height:430px; margin-top:20px;">
							<div class="gif_div">
								<img class="gif_css" src="${cpath}/resources/img/m_start.gif" alt="">
							</div>
							<div class="amenities-details" style="margin-top:-30%;">
								<div class="amenities-meta"></div>
								<p class="exp">정면에서 봤을 때 머리카락과 이마가 맞닿은 경계선이 M자 모양으로 변한 상태입니다. 양쪽 관자놀이의 머리카락 경계선이 뒤로 밀려나면서 탈모가 진행된다는 특징이 있습니다.
								</p>
								<h5>
									<form class="contact-form-area contact-page-form contact-form text-right" action="${cpath}/execution2.do" method="post">
										<div class="form-group col-md-12">
											<input type="hidden" name="id" value="${vo.id}">
											<input class="form-control" type="submit" value="분석하기">
										</div>
									</form>
								</h5>
							</div>
						</div>
					</div>

					<!-- 앨범에서 가져오기 클릭하면 앨범에서 카져오기 페이지로 넘어갸야 함 -->

					<!-- single-blog -->
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-amenities" style="height:400px;">
							<div class="gif_div">
								<img class="gif_css" src="${cpath}/resources/img/o_start.gif" alt="">
							</div>
							<div class="amenities-details" style="margin-top: -30%">
								<div class="amenities-meta"></div>
								<p class="exp">정해진 곳 없이 정수리, 뒤통수, 옆 통수 등의 부위에서 지름 1~5cm의 원 모양으로 머리카락이 빠지는 증상입니다.
								</p>
								<h5>
									<form class="contact-form-area contact-page-form contact-form text-right" action="${cpath}/execution2.do" method="post">
										<div class="form-group col-md-12">
											<input class="form-control" type="hidden" name="id" value="${vo.id}">
											<input class="form-control" type="submit" value="분석하기">
										</div>
									</form>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Popular Place Area =================-->

	<!--================ start footer Area  =================-->
	<footer class="footer-area">
		<div class="container">
			<div class="row footer-top">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Crafted</h6>
						<p>The world has become so fast paced that people don’t want
							to stand by reading a page of information, they would much rather
							look.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Navigation Links</h6>
						<div class="row">
							<ul class="col footer-nav">
								<li><a href="index.html">Home</a></li>
								<li><a href="services.html">Services</a></li>
								<li><a href="project.html">Project</a></li>
							</ul>
							<ul class="col footer-nav">
								<li><a href="team-members.html">Team Members</a></li>
								<li><a href="blog-single.html">Blog</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>For business professionals caught between high OEM price
							mediocre print and graphic.</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL"
										placeholder="Enter Email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Email '" required=""
										type="email">


									<button class="click-btn btn btn-default">
										<i class="fa fa-paper-plane" aria-hidden="true"></i>
									</button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a"
											tabindex="-1" value="" type="text">
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instafeed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="${cpath}/resources/img/instagram/i1.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i2.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i3.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i4.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i5.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i6.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i7.jpg"
								alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i8.jpg"
								alt=""></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div
			class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
			<div class="container">
				<div class="row justify-content-between">
					<div>
						<p class="footer-text m-0">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
					<div class="footer-social d-flex align-items-center">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-behance"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="${cpath}/resources/js/jquery-3.2.1.min.js"></script>
	<script src="${cpath}/resources/js/popper.js"></script>
	<script src="${cpath}/resources/js/bootstrap.min.js"></script>
	<script src="${cpath}/resources/js/stellar.js"></script>
	<script
		src="${cpath}/resources/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script
		src="${cpath}/resources/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="${cpath}/resources/vendors/isotope/isotope-min.js"></script>
	<script
		src="${cpath}/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${cpath}/resources/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="${cpath}/resources/js/mail-script.js"></script>
	<script
		src="${cpath}/resources/vendors/popup/jquery.magnific-popup.min.js"></script>
	<script src="${cpath}/resources/vendors/swiper/js/swiper.min.js"></script>
	<script
		src="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.js"></script>
	<script src="${cpath}/resources/js/theme.js"></script>
</body>

</html>