<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<style>
.row, .title_color {
	max-width: 80%;
	margin: auto;
}

.upload_button, .container {
	display: inline-block;
	margin-right: 10px;
}

.upload_button label, .container label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radious: .25em;
	color: black;
	background-color: lightgrey;
	border-radius: 15px;
	font-family: 'Gowun Dodum', sans-serif;
	font-size: 15px;
	font-weight: bold;
}

.upload_button {
	
}

.upload_button label {
	
}

.container label {
	margin-left: 42%;
}

.upload_button input[type="file"], .container input[type="submit"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: reat(0, 0, 0, 0);
	border: 0;
}

.upload_button label:hover, .container label:hover {
	background-color: grey;
}
</style>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview_image').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#upload_file").change(function() {
		readURL(this);
	});
</script>
<script>
	$(function() {
		$('#camera').change(function(e) {
			$('#pic').attr('src', URL.createObjectURL(e.target.files[0]));
		});
	});
</script>
</head>
</head>

<body>

	<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu"
		style="background-color: rgba(240, 240, 240, 0.8); width: 200px;">
		<div class="logo">
			<img src="${cpath}/resources/img/logo4.png" alt="">
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li>
					<form action="${cpath}/logmain.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="hidden" name="pw" value="${vo.pw}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="메인">
					</form>
				</li>
				<li>
					<form action="${cpath}/execution.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="진단기록관리">
					</form>
				</li>
				<li>
					<form action="${cpath}/community.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="커뮤니티">
					</form>
				</li>
				<li>
					<form action="${cpath}/consulting.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="1대1 상담">
					</form>
				</li>
				<li>
					<form action="${cpath}/info.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="탈모정보">
					</form>
				</li>
				<li>
					<form action="${cpath}/mypage.do" method="post">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="마이페이지">
					</form>
				</li>
				<li>
					<form action="${cpath}/main.do" method="post">
						<input type="submit" class="genric-btn default-border"
							style="border: 0 solid black; background: transparent; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 18px; font-weight: bold;"
							value="로그아웃">
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
					<img src="${cpath}/resources/img/logo4.png" alt=""
						style="position: fixed; z-index: 100; margin-left: -35px; margin-top: -4%;">
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		//모바일, PC 구분하는코드
		function device_check() {
			var theForm = document.imgform;
			// 디바이스 종류 설정
			var pc_device = "win16|win32|win64|mac|macintel";
			// 접속한 디바이스 환경
			var this_device = navigator.platform;
			if (this_device) {
				if (pc_device.indexOf(navigator.platform.toLowerCase()) < 0) {
					theForm.action = "http://172.30.1.15:8000/mo/result.do";
				} else {
					theForm.action = "http://localhost:8000/mo/result.do";
				}
			}
		}
	</script>
	<script>
		document.getElementById("imgform").action = device_check();
	</script>
	<!--================ Start banner section =================-->
	<%-- 	<form action="${cpath}/deep1.do" onsubmit="flask(); method="post" id="form1" runat="server" enctype="multipart/form-data"> --%>
	<!-- <form method="post" id="form1" runat="server" enctype="multipart/form-data"> -->
	<div class="hair" align="center">
		<img src="${cpath}/resources/img/hair_logo1.png" alt=""
			style="margin-top: -21%; width: 60px; height: auto; background-size; contain; padding: 0;">
	</div>

	<form method="post" enctype="multipart/form-data" name="imgform">
		<!-- 
<form action="http://172.30.1.60:8000/mo/result.do" method="post" enctype="multipart/form-data">   -->
		<section class="home-banner-area common-banner relative"
			style="z-index: 1;">
			<div class="container-fluid">
				<div class="row d-flex align-items-center justify-content-center">
					<div class="picture"
						style="max-width: 400px; max-height: 350px; overflow: hidden;">
						<!-- 여기가 이미지 업로드 했을 때 띄울 공간 -->
						<img src="${cpath}/resources/img/pictureplz.gif" alt=""
							id="preview_image"
							style="max-width: initial; object-fit: fill; max-width: 400px; max-height: 350px;" />
						<img src="#" alt="" id="preview_image2"
							style="object-fit: fill; max-width: 400px; max-height: 350px;" />
					</div>
					<div class="upload_button"
						style="width: 100%; word-break: break-all; word-wrap: break-word; margin-top: 1%;">
						<label for="upload_file" style="margin-left: 43%;"> 업로드 </label>
						<!-- <input type='file' onchange="readURL(this);" name="uploadImg" class="genric-btn disable circle" /> -->
						<input type='file' onchange="readURL(this);" name="img"
							id="upload_file" class="genric-btn disable circle" />
					</div>
					<div class="container">
						<input type="hidden" name="id" value="${vo.id}"> <input
							type="hidden" name="category" value="${category}">
						<!-- <input type="submit" formaction="${cpath}/deep1.do" class="genric-btn info-border circle arrowr"
						value="진단시작">  -->
						<label for="up_confirm" style="margin-left: 45%;">확인</label>
						<input type="submit" id="up_confirm" value="확인" onClick="device_check()" />
					</div>
				</div>
			</div>

			<br>
			<br>
			<hr
				style="height: 3px; background-color: lightgrey; width: 90%; border: 0px;">
			<br>
			<c:set var="cateogry" value="${category}" />
			<div style="align: center;">
				<h1
					style="text-align: center; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 26px; font-weight: bold;">사진
					가이드</h1>
				<br>
				<br>
				<c:if test="${category eq 'M'}">
					<h1
						style="margin-left: 8%; text-align: left; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 19px; text-decoration: underline; text-underline-position: under;">M자
						분석 사진</h1>
					<br>
					<div style="align: center;">
						<img src="${cpath}/resources/img/mpicture_guide.png"
							style="width: 200px; align: center; margin-left: 28%;">
					</div>
					<br>
					<div style="width: 90%">
						<p class=""
							style="margin-left: 8%; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 17px;">
							- 얼굴의 <b>정면</b>이 나오게 촬영을 해주세요.<br> - <b>이마 라인</b>이 보이게 해주세요.
							<br> - 앞머리가 있을 시, 손으로 <b>앞머리를 위로 올려</b> 이마
							&nbsp&nbsp&nbsp라인이 보이게 해주세요.
						</p>
					</div>
				</c:if>
				<br>
				<br>
				<c:if test="${category eq 'O'}">
					<h1
						style="margin-left: 8%; text-align: left; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 19px; text-decoration: underline; text-underline-position: under;">O자
						분석 사진</h1>
					<br>
					<div style="align: center;">
						<img src="${cpath}/resources/img/opicture_guide.png"
							style="width: 200px; align: center; margin-left: 28%;">
					</div>
					<br>
					<div style="width: 90%">
						<p class=""
							style="margin-left: 8%; font-family: 'Gowun Dodum', sans-serif; color: black; font-size: 17px;">
							- <b>정수리</b>가 나오는 방향 촬영을 해주세요.<br> - <b>가마</b>가 보이게 촬영해주세요.
							<br> - 너무 멀리 촬영하시지 마시고, 머리사진이 <b>화면에 적 &nbsp&nbsp&nbsp당히
								가득차도록</b> 촬영해주세요.
						</p>
					</div>
				</c:if>
			</div>
			</div>
		</section>
	</form>
	<!--================ End banner section =================-->
	<br>
	<br>
	<br>
	<!-- End Sample Area -->


	<!--================ start footer Area  =================-->

	<!--================ start footer Area  =================-->
	<footer class="footer-area" style="margin-top: 250%;">
		<div class="container">
			<div class="row footer-top">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About 毛하지</h6>
						<p>This project team participated in the actual convergence
							project conducted by the Smart Human Resources Development Center
							and carried out the project.</p>
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
	<script>
		function flask() {
			alert('서브밋!');
		};
	</script>
</body>

</html>