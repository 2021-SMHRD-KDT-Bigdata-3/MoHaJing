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

</style>
</head>

<body>

<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<img src="${cpath}/resources/img/logo4.png" alt="">
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
				<div class="col-lg-12 logo">
					<img src="${cpath}/resources/img/logo4.png" alt="">
				</div>
			</div>
		</div>
	</section>

	<!--================ Start banner section =================-->
	<section class="home-banner-area relative">
		<div class="section-top-border">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="header-right col-lg-6 col-md-6">
					<div class="progress-table">
						<div class="table-head">
							<div class="country"><h4>${vo2.title}</h4></div>
						</div>
						<div class="table-row">
							<div class="country" style="float: left;">${vo2.id}</div><div style="float: left;">${vo2.day}</div>
						</div>
						<div class="gif_div">
							<img class="gif_css" src="/img/${vo2.file}" />
						</div>
						<div class="table-head" align="left">
							<div>${vo2.content}</div>
						</div>
							<br><br>
						<div class="table-head">
							<table class="comment1" align="center">
								<tr style="border-bottom:1px solid #6c757d; color:#343a40;background-color:#FAFAFA">
									<th colspan="2" style="width:400px">댓글</th>
									<th></th>
									<th style="padding: 10px;">작성자</th>
								</tr>
							<c:forEach items="${list}" var="list">
								<tr>
									<td colspan="2" style="width: 400px">
										<div style="font-size: 10px;">${list.content}</div>
									</td>
									<td></td>
									<td style="padding: 10px;">
										<div class="country" style="font-size: 12px;">${list.id}</div>
									</td>
								</tr>
							</c:forEach>
							</table>
						</div>
						<div class="table-head">
							<br>
							<form action="${cpath}/writeComment.do" method="post">
								<div class="col-lg-12 text-center">
									<input type="text" name="content"> 
									<input type="hidden" name="no" value="${vo2.no}"> 
									<input type="hidden" name="id" value="${vo.id}">
									<button type="submit" class="main_btn text-uppercase" style="border:0 solid black;">등록</button>
									<a href="${cpath}/community.do?id=${vo.id}" class="main_btn text-uppercase" style="border:0 solid black;">목록</a>
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