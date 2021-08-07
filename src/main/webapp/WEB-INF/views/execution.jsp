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

</style>
	
</head>	
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
					<img src="${cpath}/resources/img/logo3.png" alt="">
				</div>
			</div>
		</div>
	</section>

	<!--================ Start banner section =================-->
	<section class="home-banner-area common-banner relative">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="header-right col-lg-6 col-md-6">
					<h1>
						
					Take Pictures
					</h1>
					<p class="pt-20">
						We all live in an age that belongs to the young at heart. Life that is becoming extremely fast, day to day also
						asks us to remain physically young. Young at heart.
					</p>
					<div class="page-link-wrap">
						<div class="page_link">
							<a href="index.html">New</a>
							<a href="elements.html">Image</a>
						</div>
						<img src="img/next.png" alt="">
					</div>
				</div>

				<div class="col-lg-6 col-md-6 header-left">
					<div class="">
						<img class="img-fluid w-100" src="${cpath}/resources/img/banner/banner-img1.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End banner section =================-->


	<!-- Start Sample Area -->
	<section class="sample-text-area">
		<div class="container">
			<h3 class="text-heading title_color">사진 촬영 가이드</h3>
			<p class="sample-text">
				Every avid independent filmmaker has <b>Bold</b> about making that <i>Italic</i> interest documentary, or short
				film
				to show off their creative prowess. Many have great ideas and want to “wow” the<sup>Superscript</sup> scene, or
				video
				renters with their big project. But once you have the<sub>Subscript</sub> “in the can” (no easy feat), how do you
				move
				from a <del>Strike</del> through of master DVDs with the <u>“Underline”</u> marked hand-written title inside a
				secondhand
				CD case, to a pile of cardboard boxes full of shiny new, retail-ready DVDs, with UPC barcodes and polywrap sitting
				on
				your doorstep? You need to create eye-popping artwork and have your project replicated. Using a reputable full
				service
				DVD Replication company like PacificDisc, Inc. to partner with is certainly a helpful option to ensure a
				professional
				end result, but to help with your DVD replication project, here are 4 easy steps to follow for good DVD replication
				results:

			</p>
		</div>
	</section>
	<!-- End Sample Area -->
	
	<div class="section-top-border">
				<h3 class="title_color">Image Gallery</h3>
				<div class="row gallery-item">
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g1.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g1.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g2.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g2.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g3.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g3.jpg);"></div>
						</a>
					</div>
					<div class="col-md-6">
						<a href="${cpath}/resources/img/elements/g4.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g4.jpg);"></div>
						</a>
					</div>
					<div class="col-md-6">
						<a href="${cpath}/resources/img/elements/g5.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g5.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g6.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g6.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g7.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g7.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cpath}/resources/img/elements/g8.jpg" class="img-gal">
							<div class="single-gallery-image" style="background: url(${cpath}/resources/img/elements/g8.jpg);"></div>
						</a>
					</div>
				</div>
			</div>
	
	
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