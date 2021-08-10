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
	<link rel="stylesheet" href="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.css">
	<!-- main css -->
	<link rel="stylesheet" href="${cpath}/resources/css/style.css?after">
	<link rel="stylesheet" href="${cpath}/resources/scss/_button.scss?after">
	<style>
	.comment-form{
	background-color:transparent;
	}
	.form-check{
	border: transparent;
	background-color:transparent;
	width:400px;
	padding-top:10px;
	border-radius:2%;
	margin:auto;
	}
	.name{
	margin-left:15px;
	}
	.mytitle{
	margin:auto;
	}

	.mypageinfo{
	margin:auto;
	}
	.top-btn-area{
	position:fixed;
	top:0px;
	right:0px;
	}

	.check-title1{
	text-align:left;
	margin-left:40px;
	margin-top:40px;
	margin-bottom:-10px;
	}
	body {
	background: url(${cpath}/resources/img/hair_bg.jpg)
}
	.mypage_img {
	background: transparent;}
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
	letter-spacing : 2px;
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
	border-color : black;
	-webkit-transition : width 350ms ease-in-out;
	transition: width 350ms ease-in-out;
	width: 90%
}

.hover1:hover:before{
	bottom: auto;
	top: 0;
}


	.form-control:focus{
		border-color : white !important;
	}
</style>
	
</head>

<body>
<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu"  >
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
					<img src="${cpath}/resources/img/logo4.png" alt="" ">
				</div>
			</div>
		</div>
	</section>

	<!--================ Start banner section =================-->
	
	<div class="comment-form" align="center">
	
                       <h1 class="my-title">
					<img class="mypage_img" src="${cpath}/resources/img/mypage10.png" alt=""></h1>
                        <form class="form_area" action="${cpath}/updateMypage.do" method="post">
	
	
	<table class="mypageinfo">
		<tr>
			<td>아이디</td>
			<td>${vo.id}</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" placeholder="PASSWORD" class="" name="pw" value="${vo.pw}"
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = ''" 
                                        style="border : none; border-bottom-style : solid; background-color : transparent;"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td> ${vo.name}</td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input  type="text" class="" placeholder="AGE" name="age" value="${vo.age}"
                                         onblur="this.placeholder = ''" style="border : none; border-bottom-style : solid; background-color : transparent;"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${vo.gender}</td>
		</tr>
	
	</table>
	
                        	<div class="check-title1">
                            <h3>checkList</h3></div>
                            <div  style="padding-top:10" class="form-group form-check " align="center">
                            <div class="switch-wrap d-flex justify-content-between ">
								<p>
								<c:set var="no1" value="${check.no1}"/>
								<input type="checkbox" name="no1" value="1" <c:if test="${no1 eq '1'}">checked</c:if> >
								01. 이마가 점점 넓어지는 느낌이다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no2" value="${check.no2}"/>
								<input type="checkbox" name="no2" value="1" <c:if test="${no2 eq '1'}">checked</c:if> >
								02. 가늘고 힘없는 머리가 많이 빠진다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no3" value="${check.no3}"/>
								<input type="checkbox" name="no3" value="1" <c:if test="${no3 eq '1'}">checked</c:if> >
								03. 하루에 80개 이상 모발이 빠진다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no4" value="${check.no4}"/>
								<input type="checkbox" name="no4" value="1" <c:if test="${no4 eq '1'}">checked</c:if> >
								04. 비듬이 많아지거나 두피가 가렵다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no5" value="${check.no5}"/>
								<input type="checkbox" name="no5" value="1" <c:if test="${no5 eq '1'}">checked</c:if> >
								05. 모발이 가늘고 부드러워진다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no6" value="${check.no6}"/>
								<input type="checkbox" name="no6" value="1" <c:if test="${no6 eq '1'}">checked</c:if> >
								06. 두피를 눌러보면 가벼운 통증이 느껴진다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no7" value="${check.no7}"/>
								<input type="checkbox" name="no7" value="1" <c:if test="${no7 eq '1'}">checked</c:if> >
								07. 앞머리와 뒷머리의 굵기 차이가 많이 난다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no8" value="${check.no8}"/>
								<input type="checkbox" name="no8" value="1" <c:if test="${no8 eq '1'}">checked</c:if> >
								08. 몸의 털이 갑자기 굵어진다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no9" value="${check.no9}"/>
								<input type="checkbox" name="no9" value="1" <c:if test="${no9 eq '1'}">checked</c:if> >
								09. 이마와 정수리 부분이 유난히 번들거린다</p>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>
								<c:set var="no10" value="${check.no10}"/>
								<input type="checkbox" name="no10" value="1" <c:if test="${no10 eq '1'}">checked</c:if> >
								10. 두피에 피지량이 갑자기 늘어난 것 같다</p>
							</div>
							
							<div class="form-group col-md-12">
								<!-- 
								<input type="text" class="form-control" name="checknum" placeholder="해당하는 항목 수" value="?"
								 onfocus="this.placeholder = ''" onblur="this.placeholder = '해당하는 항목 수'" style="width:250px; border : none; border-bottom-style : solid; background-color : transparent;" >
								 -->  
							</div>
                             
                            </div><br>
                        <input type="hidden" name="id" value="${vo.id}">
                            	<button  type="submit" class="hover1"style="border:0 solid black; color: black; font-size: 15px; font-weight : bold;" >
                               	정보수정하기
                           		</button>
                        </form>
                    </div>
					
	
<!--================ start footer Area  =================-->

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