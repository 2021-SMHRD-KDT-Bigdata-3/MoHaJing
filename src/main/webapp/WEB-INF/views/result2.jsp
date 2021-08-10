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

<script type="text/javascript">
/* function result(result){
	String result2 = null;
	if(result.equals("M1")){
		result2 = "1";
	}else if(){
		
	}
	
	
} */


</script>

	
</head>	


<body>

<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu" style="background-color: rgba(240, 240, 240, 0.8); width: 200px;">
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
					<img src="${cpath}/resources/img/logo4.png" alt="" style="position: fixed; z-index: 1; margin-left:-10%;">
				</div>
			</div>
		</div>
	</section>
	
	<!--================ Start banner section =================-->
	<section class="home-banner-area common-banner relative">
				<div style="max-height: 300px; overflow: hidden;"> 
					<img src="${cpath}/resources/img/success.gif" alt="" style="max-height: initial; margin-top: -20%;">
				</div>
			<br><br>
						 <div class="result_tb" align="center" style="margin-top: -10%;">
						 	<table>
						 		<tr style="border-bottom-style: dotted; border-width:1px; border-color: black;"><img src="/img/${deep1.img}" style="width:200px; margin-bottom: 10px;"/></tr>
						 		<tr><th style="font-size: 20px; margin-top: 10%; font-family: 'Gowun Dodum', sans-serif;">${deep1.id}님의 머리상태는...</th></tr>
						 		<tr><td style="color: white;	">.</td></tr>
						 		<tr><td align="center" style="font-family: 'Gowun Dodum', sans-serif; font-size: 15px; color: black;"><b style="display: inline; font-family: 'Gowun Dodum', sans-serif; font-size: 15px; color: orange;">${deep1.category}</b>자 탈모 <b style="display: inline; font-family: 'Gowun Dodum', sans-serif; font-size: 15px; color: orange;">${deep1.result}</b>단계입니다!</td></tr>
						 		<tr><td style="color: white;	">.</td></tr>
						 	</table>
						 	<hr style="height: 3px; background-color: lightgrey; width: 90%; border: 0px;">
						 	<table>
						 		<tr><td align="center" style="font-family: 'Gowun Dodum', sans-serif; font-size: 24px; font-weight: bold;">
						 			<div class="button-group-area mt-40" align="center" style="z-index: 1;" >
							 			<a href="${cpath}/resultList.do?id=${deep1.id}&category=${deep1.category}" class="hover1 hover2" style="border:0 solid black;color: #99CCFF;font-size: 15px;font-weight : bold;width: 100px;height: 40px;" target="f1">개선방안</a>
							 			<a href="${cpath}/resultList2.do?id=${deep1.id}&category=${deep1.category}" class="hover1 hover2" style="border:0 solid black;color: #99CCFF;font-size: 15px;font-weight : bold;width: 100px;height: 40px;" target="f1">추천식품</a>
							 			<a href="${cpath}/resultList3.do?id=${deep1.id}&category=${deep1.category}" class="hover1 hover2" style="border:0 solid black;color: #99CCFF;font-size: 15px;font-weight : bold;width: 100px;height: 40px;" target="f1">체크리스트관련</a>
						 			</div>
						 		</td></tr>
						 	</table>
						 	<br><br>
						 	<div style="padding-left:60px; width:450px;">
						 	<iframe id="iframe" src="${cpath}/resultList.do?id=${deep1.id}&category=${deep1.category}" align="center" name="f1" vertical-align="bottom" width=450 height=400 
						 		scrolling="yes" frameborder=0 framespacing=0 marginheight=0 marginwidth=0 vspace= 0 style="margin-left: -18%; 
						 		margin-top: -5%; z-index: 100;">
						 	</iframe>
						 	</div>
						 	<br><br><br>
						 </div>
						 
						 <!--  
						 <div class="progress-table" style="margin-top: -20%;">
						<div class="table-head">
							<div class="country"><h5>개선할점</h5></div>
							<div class="visit"><h5>병원진료여부</h5></div>
							<div class="percentage"><h5>추천식품</h5></div>
						</div>
						
						<div class="table-row">
							<div class="country"> ${vo.id}</div>
							<div class="visit"><img src="/img/${deep1.img}" /></div>
							<div class="visit">${deep1.result}</div>
							<div class="visit">${deep1.no}</div>
							<div class="visit">${deep1.percent}</div>
							<div class="visit">${deep1.category}</div>
						</div>
						
						
						</div>
						 -->
				<!--   <a  border="1px soild white" class="btn_result" href="index.html">저장하기</a><br>-->
				<!--  <a  border="1px soild white"  class="btn_result" href="elements.html">다시 진단하기</a> -->
						
	</section>
	
	<!--================ End banner section =================-->



	
<!--================ start footer Area  =================-->
	<footer class="footer-area" style="margin-top: 290%;">
	<footer class="footer-area" style="margin-top: 150%;">
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
								href="https://colorlib.com" target="_blank"></a>
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