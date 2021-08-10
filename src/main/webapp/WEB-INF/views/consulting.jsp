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
.comment_title{
   width : 200px;
 }
.comments-area{
    margin: auto;
    /* max-width: 90%; */
    width: 270px;
    background-color: white;
    border:1px solid white;
   }
.btn-reply{
   margin-left:20px;
   border-radius:8%;
   padding:6px;
   color:black;
 }
.btn-reply:hover{
   padding: 6px;
   background-color: #F7819F;
   color:white;
 }
   
.table1{
margin : auto;
max-width:80%;
border:1px solid black;
border-left:0px;
border-right:0px;
}
.top-btn-area{
   position:fixed;
   top:0px;
   right:0px;
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
            <div class="col-lg-12">
               <img src="${cpath}/resources/img/logo4.png" alt="">
            </div>
         </div>
      </div>
   </section>

   <!--================ Start banner section =================-->
   
     <div class="comments-area">
            <img class = "comment_title``````````````"src="${cpath}/resources/img/popular/con_img1.png" alt="">                    
      </div>
   

   <table class="table1">
   <tr style=" border-bottom:1px solid black; color:black; background-color:#f8f9fa;">
      <td style="padding-top:6px;"align="center"><h5 class="consul">상담사</h5></td>
      <td style=" padding-top:6px;padding-left:50px;"align="center";><h5 class="consul">상담분야</h5></td>
      <td style=" padding-top:6px;padding-left:40px;padding-right:10px;"align="center"><h5 class="consul">상담하기</h5></td>
   </tr>
   <tr height="120px">
      <td style="padding-right:10px;"align="center"><img src="${cpath}/resources/img/blog/c1.jpg" alt="" style="padding-right:10px;"><br>Areum Kim</td>
      <td style="padding-left:65px;color:#81BEF7; font-size:15px; font-weignt:bold;">약물치료</td>
      <td style="padding-right:10px;padding-left:40px;"><a href="" class="btn-reply text-uppercase"><butten>신청</butten></a></td>
   </tr>
   <tr height="120px">
      <td style="padding-right:10px;"align="center"><img src="${cpath}/resources/img/blog/c2.jpg" alt="" style="padding-right:10px;"><br>Hyobin Kim</td>
      <td style="padding-left:65px;color:#F7819F;font-size:15px; font-weignt:bold;">수술치료</td>
      <td style="padding-right:10px;padding-left:40px;"><a href="" class="btn-reply text-uppercase"><butten>신청</butten></a></td>
   </tr>
   <tr height="120px">
      <td style="padding-right:10px;"align="center"><img src="${cpath}/resources/img/blog/c3.jpg" alt="" style="padding-right:10px;"><br>Doyeon Kim</td>
      <td style="padding-left:50px;color:#D0A9F5;font-size:15px; font-weignt:bold;">모발두피관리</td>
      <td style="padding-right:10px;padding-left:40px;"><a href="" class="btn-reply text-uppercase"><butten>신청</butten></a></td>
   </tr>
   <tr height="120px">
      <td style="padding-right:10px;"align="center"><img src="${cpath}/resources/img/blog/c4.jpg" alt="" style="padding-right:10px;"><br>Seungjun Moon</td>
      <td style="padding-left:50px; color:#FFBF00;font-size:15px; font-weignt:bold;">비절개 모발이식</td>
      <td style="padding-right:10px;padding-left:40px;"><a href="" class="btn-reply text-uppercase"><butten>신청</butten></a></td>
   </tr>
   <tr height="120px;">
      <td align="center"><img src="${cpath}/resources/img/blog/c5.jpg" alt="" style="padding-right:10px;"><br>Hahyeong Kang</td>
      <td style="padding-left:50px;color:#688A08;font-size:15px; font-weignt:bold;">진행과정상담</td>
      <td style="padding-right:10px;padding-left:40px;"><a href="" class="btn-reply text-uppercase"><butten>신청</butten></a></td>
   </tr>
   
   
   </table>
   <br><br>

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