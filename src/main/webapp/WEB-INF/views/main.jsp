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
	<script type="text/javascript">
		function goLogMain(){
	  		location.href="${cpath}/loginTry.do";
	  	}
		
		function goJoin(){
			location.href="${capth}/join.do"
		}
	</script>
</head>

<body>

	<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<a href="index.html">
				<img src="${cpath}/resources/img/logo3.png" alt="">
			</a>
		</div>
		<ul class="list menu-left">
			<li>
				<a href="${cpath}/main.do">메인</a>
			</li>
			<li>
				<a href="">진단관리기록</a>
			</li>
			<li>
				<a href="${cpath}/community.do">커뮤니티</a>
			</li>
			<li>
				<a href="${cpath}/consulting.do">1대1 상담</a>
			</li>
			<li>
				<a href="${cpath}/mypage.do">마이페이지</a>
			</li>
		</ul>
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
					<a href="${cpath}/main.do" class="main_btn">
						<img src="${cpath}/resources/img/logo3.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</section>

	<!--================ Start banner section =================-->
	<section class="home-banner-area relative">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="header-right col-lg-6 col-md-6">
					<form class="contact-form-area contact-page-form contact-form text-right" id="myForm" action="${cpath}/loginTry.do" method="post">
						<h1 align="center">
							<img src="${cpath}/resources/img/logo3.png" alt="">
						</h1>
							<div class="form-group col-md-12">
								<input type="text" class="form-control" id="name" name="id" placeholder="ID"
								 onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID'">
							</div>
							<div class="form-group col-md-12">
								<input type="password" class="form-control" id="name" name="pw" placeholder="PASSWARD"
								 onfocus="this.placeholder = ''" onblur="this.placeholder = 'PASSWARD'">
							</div>
							<div class="col-lg-12 text-center">
								<button class="main_btn text-uppercase" onclick="goLogMain()">
									로그인
								</button>
								<button class="main_btn text-uppercase" onclick="goJoin()">
									회원가입
								</button>
							</div>
						</form>
					
				</div>

				<div class="col-lg-6 col-md-6 header-left">
					<div class="">
						<img class="img-fluid w-100" src="${cpath}/resources/img/banner/banner-img.jpg" alt="">
					</div>
					<div class="video-popup d-flex align-items-center">
						<a class="play-video video-play-button animate" href="https://www.youtube.com/watch?v=KUln2DXU5VE" data-animate="zoomIn"
						 data-duration="1.5s" data-delay="0.1s">
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End banner section =================-->

	<!--================ Start Popular Place Area =================-->
	<div class="popular-place-area section_gap">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-5 offset-lg-1">
					<div class="left-content">
						<img class="img1 img-fluid" src="${cpath}/img/popular/img1.jpg"
							alt=""> <img class="img2 img-fluid"
							src="${cpath}/img/popular/img2.jpg" alt=""> <img
							class="img3 img-fluid" src="${cpath}/img/popular/img3.jpg" alt="">
						<img class="img1 img-fluid" src="${cpath}/resources/img/popular/img1.jpg" alt="">
						<img class="img2 img-fluid" src="${cpath}/resources/img/popular/img2.jpg" alt="">
						<img class="img3 img-fluid" src="${cpath}/resources/img/popular/img3.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="right-content">
						<div class="main_title">
							<h1>프로그램설명</h1>
							<p>대충 프로그램 설명하는 내용들</p>
						</div>
						<div class="counter_area">
							<div class="top-two">
								<!-- single counter -->
								<div class="single_counter">
									<div class="thumb">
										<img src="${cpath}/resources/img/popular/icon1.png" alt="">
									</div>
									<div class="info-content">
										<h4>관리기록</h4>
									</div>
								</div>
								<!-- single counter -->
								<div class="single_counter">
									<div class="thumb">
										<img src="${cpath}/resources/img/popular/icon2.png" alt="">
									</div>
									<div class="info-content">
										<h4>커뮤니티</h4>
									</div>
								</div>
							</div>

							<div class="bottom-two">
								<!-- single counter -->
								<div class="single_counter">
									<div class="thumb">
										<img src="${cpath}/resources/img/popular/icon3.png" alt="">
									</div>
									<div class="info-content">
										<h4>1대1 상담</h4>
									</div>
								</div>
								<!-- single counter -->
								<div class="single_counter">
									<div class="thumb">
										<img src="${cpath}/resources/img/popular/icon4.png" alt="">
									</div>
									<div class="info-content">
										<h4>마이페이지</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
							<li><img src="${cpath}/resources/img/instagram/i1.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i2.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i3.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i4.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i5.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i6.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i7.jpg" alt=""></li>
							<li><img src="${cpath}/resources/img/instagram/i8.jpg" alt=""></li>
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