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

	<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<img src="${cpath}/resources/img/logo3.png" alt="">
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li><a href="${cpath}/logmain.do">
						<form action="logmain.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="hidden" name="pw" value="${vo.pw}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="메인">
						</form>
				</a></li>
				<li><a href="${cpath}/execution.do">
						<form action="execution.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="진단기록관리">
						</form>
				</a></li>
				<li><a href="${cpath}/community.do">
						<form action="community.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="커뮤니티">
						</form>
				</a></li>
				<li><a href="${cpath}/consulting.do">
						<form action="${cpath}/consulting.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="1대1 상담">
						</form>
				</a></li>
				<li><a href="${cpath}/info.do">
						<form action="info.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="탈모정보">
						</form>
				</a></li>
				<li><a href="${cpath}/mypage.do">
						<form action="${cpath}/mypage.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="마이페이지">
						</form>
				</a></li>
				<li><a href="${cpath}/main.do">
					<form action="main.do" method="post">
						<input type="submit" class="genric-btn default-border" style="border:0 solid black;" value="로그아웃">
					</form>
				</a></li>
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
					<br><br>
					<h1>
                    Self-diagnosis Result
					</h1>
					
				</div>

				<div class="col-lg-6 col-md-6 header-left">
					<div class="">
						<img class="img-fluid w-100" src="${cpath}/resources/img/banner/banner-img1.jpg" alt="">
					</div>
				</div>
			</div>
			<br><br>
						 
						 <div class="progress-table">
						<div class="table-head">
							<div class="country"><h5>개선할점</h5></div>
							<div class="visit"><h5>병원진료여부</h5></div>
							<div class="percentage"><h5>추천식품</h5></div>
						</div>
						
						<div class="table-row">
							<div class="country"> ${deep1.id}</div>
							<div class="visit"><img src="/img/${deep1.img}" /></div>
							<div class="visit">${deep1.no}</div>
						</div>
						
						</div>
					</div>
				</div>
			</div>
						 
				<a  border="1px soild white" class="btn_result" href="index.html">저장하기</a><br>
				<a  border="1px soild white"  class="btn_result" href="elements.html">다시 진단하기</a>
						
			</div>
	</section>
	
	<!--================ End banner section =================-->



	
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