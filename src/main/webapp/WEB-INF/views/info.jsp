
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
	</script>
	<style>
.text-heading{
text-align: center;
}
.lnr-arrow-right:before {
	content: "";
}
#iframe {
	display: block;
	vertical-align: bottom;
	vertical-align: bottom;
	width: 650; 
	height: 300;
	scrolling: no; 
	frameborder: 0; 
	framespacing: 0; 
	marginheight: 0; 
	marginwidth: 0;
	vspace: 0;
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

.hover2:hover:after, .hover2:hover:before{
	border-color : #99CCFF;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover3:hover:after, .hover3:hover:before{
	border-color : #FF9999;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover4:hover:after, .hover4:hover:before{
	border-color : #CC99FF;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover5:hover:after, .hover5:hover:before{
	border-color : #CCCC99;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover6:hover:after, .hover6:hover:before{
	border-color : #CC9999;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover7:hover:after, .hover7:hover:before{
	border-color : #FF99FF;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 70%
}

.hover1:hover:before{
	bottom: auto;
	top: 0;
}


.sample-text-area,.button-group-area{
max-width:80%;
margin:auto;
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
	background-color: transparent;
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
	border-color : gray;
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
	<div class="side_menu" style="background-color: rgba(245, 245, 245, 0.8); width: 200px;">
		<div class="logo">
			<img src="${cpath}/resources/img/logo4.png" alt="">
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li>
						<form action="${cpath}/logmain.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="hidden" name="pw" value="${vo.pw}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="메인">
						</form>
				</li>
				<li>
						<form action="${cpath}/execution.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="진단기록관리">
						</form>
				</li>
				<li>
						<form action="${cpath}/community.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="커뮤니티">
						</form>
				</li>
				<li>
						<form action="${cpath}/consulting.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="1대1 상담">
						</form>
				</li>
				<li>
						<form action="${cpath}/info.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="탈모정보">
						</form>
				</li>
				<li>
						<form action="${cpath}/mypage.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="마이페이지">
						</form>
				</li>
				<li>
					<form action="${cpath}/main.do" method="post">
						<input type="submit" class="genric-btn default-border" style="border:0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;" value="로그아웃">
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

 <!-- Start Sample Area -->
 <div class="hair" align="center">
		<img src="${cpath}/resources/img/hair_logo1.png" alt="" style="z-index: 2; position: absolute; margin-left: -6%; margin-top : -7%; width: 60px; height: auto; background-size; contain; padding:0;">
	</div>
	<section class="sample-text-area">
		<div class="container">
			<h1 class="text-heading title_color" style="font-family: 'Gowun Dodum', sans-serif; font-weight: bold;">탈모 기본 정보</h1>
			<p class="sample-text" style="font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 15px; margin-top: 10%;">
				&nbsp&nbsp&nbsp&nbsp<b>탈모란</b> 신체의 털, 그중에서도 특히 머리카락이 부족한 상태를 일컫는다.<i>남성형탈모증</i>의 경우 현대의학으로는 별다른 해결책이 없으며 완벽한 치료방법이 현재까지 확실치 않아 탈모 현상의 진행을 늦춰줄 뿐이며, 
				근본적인 치료제 또한 아직 나오지 않은 상태이다.<br> &nbsp&nbsp&nbsp&nbsp특히  <b>20</b>,<b>30대 젊은이</b>, 또는 <b>여성</b>에게  나타나는 탈모는 심한 우울증을 불러 일으키며, 구직과 결혼 및 사회생활에 상당히 부정적인 영향을 끼칠 수 있다.
 				부모세대에서 자식세대로 대물림되는 유전적인 성향이 상당히 강한 질환이다.</span>
			</p>
		</div>
	</section>
	<hr style="height: 3px; background-color: lightgrey; width: 90%; border: 0px;">
	<!-- End Sample Area -->
	

	<div class="button-group-area mt-40" align="center" style="z-index: 1;" >
				<a href="${cpath}/infoList.do" class="hover1 hover2" target="f1" style="border:0 solid black; color: #99CCFF; font-size: 15px; font-weight : bold;">남성형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList2.do" target="f1" class="hover1 hover3" id="woman" style="border:0 solid black; color: #FF9999; font-size: 15px; font-weight : bold;">여성형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList3.do" class="hover1 hover4" target="f1" style="border:0 solid black; color: #CC99FF; font-size: 15px; font-weight : bold;">원형탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList4.do" class="hover1 hover5" target="f1" style="border:0 solid black; color: #CCCC99; font-size: 15px; font-weight : bold;">휴지기탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList5.do" class="hover1 hover6" target="f1" style="border:0 solid black; color: #CC9999; font-size: 15px; font-weight : bold;">노화성 탈모<span class="lnr lnr-arrow-right"></span></a>
				<a href="${cpath}/infoList6.do" class="hover1 hover7" target="f1" style="border:0 solid black; color: #FF99FF; font-size: 15px; font-weight : bold;">지루성탈모<span class="lnr lnr-arrow-right"></span></a>
			</div>
			<br>
			<iframe id="iframe" align="center" src="${cpath}/infoList.do" name="f1" vertical-align="bottom" width=650
					height=450 scrolling="no" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 vspace= 0 style="margin-left: -18%; margin-top: -5%; z-index: 100;"></iframe>
			<hr style="height: 3px; background-color: lightgrey; width: 90%; border: 0px;">
			<section class="sample-text-area">
		<div class="container">
			<h1 class="text-heading title_color" style="font-family: 'Gowun Dodum', sans-serif; font-weight: bold; margin-top: -10%">탈모 예방법</h1>
			<p class="sample-text" style="font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 15px; margin-top:10%;">
				&nbsp&nbsp&nbsp&nbsp식습관, 모발 관리 습관의 개선, 스트레스, 술, 담배 같은 <b>악화 요인</b>은 차단할 수 있어야 한다. 
				음식은 단백질과 비타민, 미네랄이 풍부한 음식을 골고루 섭취하는 것이 좋고 <i>무리한 다이어트</i>는 하지 않아야 한다.<br>
				 &nbsp&nbsp&nbsp&nbsp또한 모발에 쌓인 먼지와 피지는 모공을 막아 탈모를 악화시킬 수 있으므로 외출 후 머리를 바로 감는 것이 좋다. 
				 더불어 머리를 감을 때 화학 성분이 두피를 자극할 수 있으므로 거품을 낸 채 오랫동안 방치하면 안되고, 
				 머리를 감은 후 선풍기나 드라이기 찬바람을 이용해 말리는 것이 중요하다. 머리는 매일 감아야 두피의 이물질을 제거할 수 있다. 
				 하루 한번 감는다면 저녁에 감는 것이 낮동안 쌓인 먼지를 없앨 수 있기 때문에 좋다.
			</p>
		</div>
	</section>
			</div>


	
		<!--================ start footer Area  =================-->
	<footer class="footer-area">
		<div class="container">
			<div class="row footer-top">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About 毛하지</h6>
						<p>This project team participated in the actual convergence project conducted 
						by the Smart Human Resources Development Center and carried out the project.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Mambers</h6>
						<div class="row">
							<ul class="col footer-nav">
								<li><a href="index.html">Areum Kim</a></li>
								<li><a href="services.html">Doyeon Kim</a></li>
								<li><a href="project.html">Hahyeong Kang</a></li>
							</ul>
							<ul class="col footer-nav">
								<li><a href="team-members.html">Hyobin Kim</a></li>
								<li><a href="blog-single.html">Seungjun Moon</a></li>
								<li><a href="contact.html">Hyosoon Yim</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						
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

