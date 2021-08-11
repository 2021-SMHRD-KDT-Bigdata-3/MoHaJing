<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="${cpath}/resources/css/style.css?after">
<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<script>
function goComm(id){
	location.href="${cpath}/community.do?id="+id;
}

function goViewComm(id){
	location.href="${cpath}/viewComment.do?id="+id;
}
</script>

<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<script type="text/javascript">
		function goComm(id){
			location.href="${cpath}/community.do?id="+id;
		}
		
		function goViewComm(id){
			location.href="${cpath}/viewComment.do?id="+id;
		}
</script>
	
<style>
h4 {
	font-size: 30px;
    margin-bottom: 20px;
    color: #000000;
    width: 400px;
},

.progress-table{
max-width:80%;
margin:auto;
}

.mb-30{
text-align:center;
}

.com-table{
border-left:0px;
border-right:0px;
margin:auto;
}

.logo{
position:fixed;
top:50px;
right:50px;
}

.comment1{
text-align: center;
border:1px solid #6c757d;
border-left:0px;
border-right:0px;
width: 400px;
}

td{
padding:10px;
}

.table-row {
    margin-bottom: 10px;
    padding: 10px;
    *zoom: 1;
    color: #777;
    font-size: 12px;
    border-radius: 3px;
    overflow: hidden;
    border: 1px solid #e1e1e1;
    background-color: #f9f9f9;
}
.progress-table .table-row {
  padding: 1px;
  border-top: 1px solid #edf3fd;
  display: flex; 
  flex-direction: row;
  justify-content: flex-start;
  }


.country{
padding-left:20px;
}

.gif_div{
	max-width: 500px;
	max-hieght: 300px;
	overflow: hidden;
	object-fit: scale-down;
}

.gif_div img{
	max-width: initial;
	margin-left: -10%;
	margin-top: -30%;  
	object-fit: cover;
	width: 500px;
	height: 300px;
	margin: auto;
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

.hover2:hover{
	color : grey;
	box-shadow:120px 0 0 0 rgba(255,255,255,0.2) inset,
	-120px 0 0 0 rgba(255,255,255,0,2) inset;
}

.section-top-border {
    padding: 50px 0;
    background: #ffffff;
    border-top: 0px dotted #eee;
}

</style>
</head>

<body>

<!--================ Offcanvus Menu Area =================-->
	<%-- <div class="side_menu" style="background-color: rgba(240, 240, 240, 0.8); width: 200px;">
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
	</div> --%>
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

				<div class="col-lg-12 logo" style="position: fixed; z-index: 1000; margin-left:80%; margin-top: -6% ">
					<img src="${cpath}/resources/img/logo4.png" alt="" >
				</div>

	<!--================ Start banner section =================-->
	<section class="home-banner-area relative">
		<div class="section-top-border">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="header-right col-lg-6 col-md-6">
					<div class="progress-table" style="font-family: 'Gowun Dodum', sans-serif; color: black;">
						<div class="table-head">
							<div align="center"><h4>${vo2.title}</h4></div>
						</div>
						<div class="table-row">
							<div class="country" style="float: left;">${vo2.id}</div><div style="float: left;">${vo2.day}</div>
						</div>
						<div class="gif_div">
							<img class="gif_css" style="padding:20px;" src="/img/${vo2.file}" />
						</div>
<<<<<<< HEAD
						<div class="table-head" align="left">
							<div style="padding-left: 10px;">${vo2.content}</div>
=======
						<div class="table-head" align="left" style="max-width: 80%;">
							<div>${vo2.content}</div>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/MoHaJing.git
						</div>
							<br><br>
						<div class="table-head">
							<table class="comment1" align="center" >
								<tr style="border-bottom:1px solid #6c757d; color:#343a40;background-color:#FAFAFA">



									<th colspan="2" style="width:100px; ">댓글</th>
									<td></td>
									<th style="padding: 0px;">작성자</th>






								</tr>
							<c:forEach items="${list}" var="list">
								<tr>
<<<<<<< HEAD
									<td colspan="2" style="width: 400px; height:50px">
										<div style="font-size: 12px;">${list.content}</div>
=======
								
								
									<td colspan="2" style="width: 100px">
									
									
										<div style="font-size: 10px;">${list.content}</div>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/MoHaJing.git
										<span style="font-size: 8px">${list.day}</span>
									</td>
									<td></td>
									
									
										
										
									<td style="padding: 10px;">
										<div style="font-size: 12px;">${list.id}</div>
									</td>
								</tr>
							</c:forEach>
							</table>
						</div>
						<div class="table-head">
							<br>
							<form action="${cpath}/writeComment.do" method="post">
								<div class="col-lg-12 text-center" style="padding-top: 10px;">
									<input type="text" name="content" placeholder="댓글작성" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '댓글작성'" style="width: 230px; border:1 solid black; height: 50px; padding-top: 10px;">
									<input type="hidden" name="no" value="${vo2.no}"> 
									<input type="hidden" name="id" value="${vo.id}">
									<button type="submit" class="genric-btn info-border radius" style="border:0 solid black;">등록</button>
									<a href="${cpath}/community.do?id=${vo.id}" class="genric-btn info-border radius" style="border:0 solid black;">목록</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
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