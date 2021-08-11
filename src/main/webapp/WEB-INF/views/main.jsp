<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="sns" value="${param.sns}" />
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="google-signin-scope" content="profile email">
	<meta name ="google-signin-client_id" 
		content="777945930804-scu398nmc9q4qfap8fme6osb70m3pp2u.apps.googleusercontent.com">
	<link rel="icon" href="${cpath}/resources/img/favicon.png" type="image/png">
	<title>毛어때</title>
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
	<!-- sns연동 스크립트 파일불러오기 -->
	<script type="text/javascript" src="${cpath}/resources/js/naver.js" charset="utf-8"></script>	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<!-- 카카오 클라이언트 키 초기화설정 -->
	<script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('11f152af3c0010575ee7f3016cb0eaa1');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
    </script>	
	<script>
		function goJoin(){
			location.href="${cpath}/join.do";
		}
	</script>
<style>
	.form-control:focus{
		border-color : white !important;
	}
.class{
	position: sticky;
}

.bg{
	width: 100%;
	height: 100%;
	position : relative;
	z-index : 1;
}

.bg::after{
	width: 100%;
	height: 100%;
	background: url(${cpath}/resources/img/hair_bg.jpg);
	content: "";
	z-index : -1;
	opacity : 0.2;
	position: absolute;
	top:0;
	left: 0;
	opacity: 0.5;
}

.hover1{
	background-color: transparent;
	position: relative;
	display: inline-block; 
	width: 100%; 
	color: #fff;
	font-size: 16px; 
	line-height: 45px; 
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

.hover2:hover{
	color : grey;
	box-shadow:120px 0 0 0 rgba(255,255,255,0.2) inset,
	-120px 0 0 0 rgba(255,255,255,0,2) inset;
}

</style>


</head>

<body>

<div class="bg" style="background-image : url(${cpath}/resources/img/hair_bg.jpg)">
	<!--================ Offcanvus Menu Area =================-->
	<!-- <div class="side_menu">
		<div class="logo" style="position : fixed;">
			<a href="${cpath}/main.do"> <img
				src="${cpath}/resources/img/logo4.png" alt="">
			</a>
		</div>
		<div class="button-group-area mt-10">
			<ul class="list menu-left">
				<li><a href="${cpath}/logmain.do">
						<form action="logmain.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="hidden" name="pw" value="${vo.pw}"> <input
								type="image" onclick="goMain()" src="${cpath}/resources/img/manu2.png" class="genric-btn default-border" value="메인">
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="메인">
						</form>
				</a></li>
				<li><a href="execution.do">
						<form action="execution.do" method="post">
							<input  type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="진단기록관리">
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
				<li>
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
				<li>
						<form action="${cpath}/mypage.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" style="border:0 solid black;" value="마이페이지">
						</form>
				</a></li>
				<li><a href="${cpath}/main.do">
						<form action="main.do" method="post">
							<input type="hidden" name="id" value="${vo.id}"> <input
								type="submit" class="genric-btn default-border" value="로그아웃">
						</form>
				</a></li>
				
			</ul>
		</div>
	</div>
	<!--================ End Offcanvus Menu Area =================-->

	<!--================ Canvus Menu Area =================-->
	<!-- <div class="canvus_menu">
		<div class="container">
			<div class="toggle_icon" title="Menu Bar">
				<span></span>
			</div>
		</div>
	</div> -->
	<!--================ End Canvus Menu Area =================-->

	<!-- <section class="top-btn-area" >
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<img src="${cpath}/resources/img/logo3.png" alt="">
					
				</div>
			</div>
		</div>
	</section>-->
	<!--================ Start banner section =================-->
<br>

	<div class="hair" align="center" style="margin-top : 80px;">
		<img src="${cpath}/resources/img/hair_logo1.png" alt="">
	</div>
	<div class="logo" align="center">
		<img src="${cpath}/resources/img/logo4.png" alt="">
	</div>
	
	<section class="home-banner-area relative" style="background-color: rgba(255, 255, 255, 0.01); margin-top: 10px;">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center" style="height: 300px;">
				<form
					class="contact-form-area contact-page-form contact-form text-right"
					id="myForm" action="${cpath}/logmain.do" method="post">
					<div class="form-group col-md-12">
						<input type="text" class="form-control" id="name" name="id"
							placeholder="ID" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'ID'" style="border : none; border-bottom-style : solid; background-color : transparent;">
					</div>
					<div class="form-group col-md-12">
						<input type="password" class="form-control" id="name" name="pw"
							placeholder="PASSWARD" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'PASSWARD'" style="border : none; border-bottom-style : solid; background-color : transparent;">
					</div>
					<div class="col-lg-12 text-center">
						<button type="submit" class="hover1" style="border:0 solid black; color: grey; font-size: 15px; font-weight : bold;">
							로그인</button>
						<button type="button" class="hover1" style="border:0 solid black; color: grey; font-size: 15px; font-weight : bold;" 
							onclick="goJoin()">회원가입</button> 
					</div>
					<br>
					<div style="text-align: center !important; padding-right: 10px;" >
						<!-- 네이버 버튼 -->
						<div id="naver_id_login" width="250px" height="40px" style=" width: 250px; height: 40px; margin-bottom : 10px;"></div>
						<!-- 카카오 버튼 -->
						<a id="custom-login-btn" href="javascript:loginWithKakao()" width="185px" height="40px" style="width: 185px; height: 40px">
						  <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="185px" height="40px" style = "margin-bottom: 10px"/>
						</a>
						<!-- 구글 버튼 -->
						<div style="padding-left: 33px;"><div align="center" class="g-signin2" data-onsuccess="onSignIn" width="185px" height="40px" style="width: 185px; height: 40px"></div></div>
					</div>
				</form>
				
				<!-- sns연동 자바스크립트코드 -->
				<div class="col-lg-6 col-md-6 header-left">
					<div class="">
						<img class="img-fluid w-100"
							src="${cpath}/resources/img/banner/banner-img.jpg" alt="">
					</div>
					<div class="video-popup d-flex align-items-center">
						<a class="play-video video-play-button animate"
							href="https://www.youtube.com/watch?v=KUln2DXU5VE"
							data-animate="zoomIn" data-duration="1.5s" data-delay="0.1s">
							<span></span>
						</a>
					</div>
				</div>
			</div>
	</section>
				<script type="text/javascript">
					//모바일, PC 구분하는코드
					var sns = '<c:out value="${sns}"/>';
				 	var map = "";
				 	if(sns == 'yes'){
				 		map = "logmain.do?id=naver&pw=naver";
				 		
				 	}else{
				 		//map = "join.do?sns=yes";
				 		map = "logmain.do?id=naver&pw=naver"; 
				 	}
				 	
				 	
					function device_check() {
						
					    // 디바이스 종류 설정
					    var pc_device = "win16|win32|win64|mac|macintel";
					 
					    // 접속한 디바이스 환경
					    var this_device = navigator.platform;
					    
					 	// sns 계정연동 체크
						

					    if ( this_device ) {
					 
					        if ( pc_device.indexOf(navigator.platform.toLowerCase()) < 0 ) {
					            return "http://172.30.1.28:8081/mo/"+map;
					        } else {
					        	return "http://localhost:8081/mo/"+map;
					        }
					 
					    }
					}
				</script>
				<!-- 네이버 로그인 자바스크립트 코드 -->
				<script type="text/javascript">
					
					var naver_id_login = new naver_id_login("IS4Oj4O6Hz9J2KVtifmj", device_check());
					
					
					var state = naver_id_login.getUniqState();
					naver_id_login.setButton("white", 3,40);
					naver_id_login.setDomain(".service.com");
					naver_id_login.setState(state);
					naver_id_login.setPopup();
					naver_id_login.init_naver_id_login();
					
				</script>
				<!-- 네이버 사용자정보 가져오는코드 -->
				<script type="text/javascript">
					naver_id_login.get_naver_userprofile("naverSignInCallback()");
					// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
					function naverSignInCallback() {
						// naver_id_login.getProfileData('프로필항목명');
						// 프로필 항목은 개발가이드를 참고하시기 바랍니다.이메일을 db에 저장
						console.log(naver_id_login.getProfileData('id'));
	
					}
				
				
					// 네이버 사용자 프로필 조회
					
					
				</script>
				<!-- 카카오 로그인 자바스크립트 코드 -->
				<script type="text/javascript">
				 
				  function loginWithKakao() {
				    Kakao.Auth.authorize({
				      redirectUri: device_check(),
				      scope: 'account_email'
				    })
				  }
				  

				</script>
				<script type="text/javascript">
					Kakao.API.request({
					    url: '/v2/user/scopes',
					    data: {
					        scopes: ["account_email"]
					    },
					    success: function(response) {
					        console.log(response);
					    },
					    fail: function(error) {
					        console.log(error);
					    }
					});
				
				
				
				
				</script>
				<!-- 구글 로그인 자바스크립트 코드 -->
				<script>
				      function onSignIn(googleUser) {
				        // Useful data for your client-side scripts:
				        var profile = googleUser.getBasicProfile();
				        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
				        console.log('Full Name: ' + profile.getName());
				        console.log('Given Name: ' + profile.getGivenName());
				        console.log('Family Name: ' + profile.getFamilyName());
				        console.log("Image URL: " + profile.getImageUrl());
				        console.log("Email: " + profile.getEmail());
				
				        // The ID token you need to pass to your backend:
				        var id_token = googleUser.getAuthResponse().id_token;
				        console.log("ID Token: " + id_token);
				      }
				</script>
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
						<img class="img1 img-fluid"
							src="${cpath}/resources/img/popular/img1.jpg" alt=""> <img
							class="img2 img-fluid"
							src="${cpath}/resources/img/popular/img2.jpg" alt=""> <img
							class="img3 img-fluid"
							src="${cpath}/resources/img/popular/img3.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="right-content">
						<div class="main_title" align="center" style="margin-top:10%;">
							<p style="color : black; font-family: 'Gowun Dodum', sans-serif; font-size: 20px;">바쁜 현대인을 위한 탈모 자가진단 서비스</p>
							<p style="color : black; font-family: 'Gowun Dodum', sans-serif; font-size: 20px;">탈모 고민하지 말고 毛어때와 함께!</p>
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


	<!-- 
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
	<script src="${cpath}/resources/js/theme.js"></script> -->
	
</body>

</html>