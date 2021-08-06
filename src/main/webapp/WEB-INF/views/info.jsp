
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

	<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<a href="${cpath}/main.do"> <img
				src="${cpath}/resources/img/logo3.png" alt="">
			</a>
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li><a href="${cpath}/logmain.do">
						<form action="logmain.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="hidden" name="pw" value="${vo.pw}"> <input
								type="submit" class="genric-btn default-border" value="메인">
						</form>
				</a></li>
				<li><a href="${cpath}/execution.do">
						<form action="execution.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="진단기록관리">
						</form>
				</a></li>
				<li><a href="${cpath}/community.do">
						<form action="community.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="커뮤니티">
						</form>
				</a></li>
				<li><a href="${cpath}/consulting.do">
						<form action="consulting.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="1대1 상담">
						</form>
				</a></li>
				<li><a href="${cpath}/info.do">
						<form action="info.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="탈모정보">
						</form>
				</a></li>
				<li><a href="${cpath}/mypage.do">
						<form action="mypage.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="마이페이지">
						</form>
				</a></li>
				<li><a href="${cpath}/main.do"
					class="genric-btn default-border">로그아웃 </a></li>
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
					<a href="${cpath}/main.do" class="main_btn">
						<img src="${cpath}/resources/img/logo3.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</section>
 <!-- Start Sample Area -->
	<section class="sample-text-area">
		<div class="container">
			<h1 class="text-heading title_color">탈모 기본 정보</h1>
			<p class="sample-text">
				<b>탈모란</b> 신체의 털, 그중에서도 특히 머리카락이 부족한 상태를 일컫는다.<i>남성형탈모증</i>의 경우 현대의학으로는 별다른 해결책이 없으며 완벽한 치료방법이 현재까지 확실치 않아 탈모 현상의 진행을 늦춰줄 뿐이며, 
				근본적인 치료제 또한 아직 나오지 않은 상태이다. 특히  <b>20</b>,<b>30대 젊은이</b>, 또는 <b>여성</b>에게  나타나는 탈모는 심한 우울증을 불러 일으키며, 구직과 결혼 및 사회생활에 상당히 부정적인 영향을 끼칠 수 있다.
 				부모세대에서 자식세대로 대물림되는 유전적인 성향이 상당히 강한 질환이다.</span>
			</p>
		</div>
	</section>
	<!-- End Sample Area -->
	
	<div class="button-group-area mt-40" align="center">
				<a href="${cpath}/infoList.do" class="genric-btn default circle" target="f1">남성형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/main.do" target="f1" class="genric-btn primary-border circle" id="woman">여성형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList.do" class="genric-btn success-border circle" target="f1">원형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList.do" class="genric-btn info-border circle" target="f1">휴지기탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList.do" class="genric-btn warning-border circle" target="f1">노화성 탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList.do" class="genric-btn danger-border circle" target="f1">지루성탈모<span class="lnr lnr-arrow-right"></span></a>
			</div>
			<br>
			<iframe id="iframe" align="cneter" name="f1" display="block" vertical-align="bottom" width=650
					height=300 scrolling="no" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 vspace= 0></iframe>
			
			<section class="sample-text-area">
		<div class="container">
			<h1 class="text-heading title_color">탈모 예방법</h1>
			<p class="sample-text">
				식습관, 모발 관리 습관의 개선, 스트레스, 술, 담배 같은 <b>악화 요인</b>은 차단할 수 있어야 한다. 
				음식은 단백질과 비타민, 미네랄이 풍부한 음식을 골고루 섭취하는 것이 좋고 <i>무리한 다이어트</i>는 하지 않아야 한다.
				 또한 모발에 쌓인 먼지와 피지는 모공을 막아 탈모를 악화시킬 수 있으므로 외출 후 머리를 바로 감는 것이 좋다. 
				 더불어 머리를 감을 때 화학 성분이 두피를 자극할 수 있으므로 거품을 낸 채 오랫동안 방치하면 안되고, 
				 머리를 감은 후 선풍기나 드라이기 찬바람을 이용해 말리는 것이 중요하다. 머리는 매일 감아야 두피의 이물질을 제거할 수 있다. 
				 하루 한번 감는다면 저녁에 감는 것이 낮동안 쌓인 먼지를 없앨 수 있기 때문에 좋다.
			</p>
		</div>
	</section>
			
	
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
 
 
</body>
</html>

