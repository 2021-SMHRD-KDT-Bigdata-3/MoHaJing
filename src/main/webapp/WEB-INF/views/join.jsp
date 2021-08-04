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
   <script type="text/javascript">
   function goMain(){
        location.href="${cpath}/main.do";
     }
   </script>
   <style>
   .checkList1{
   border: 1px solid ;
   padding:10px;
   border-radius:2%;
   background-color:#F7D358;
   }
   
   .contact-form-section {
     position: relative;
     background: #f9f9ff;
     background: url("");
     background-size: cover;
     text-align: center;
     padding: 70px 50px;
     z-index: 1; }
   
   </style>
</head>

<body>

   <!--================ Canvus Menu Area =================-->
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

   <!--================ Start banner section =================-->
   <section class="home-banner-area relative">
      <div class="container-fluid">
         <div class="row d-flex align-items-center justify-content-center">
            <div class="contact-form-section">
               <form class="contact-form-area contact-page-form contact-form text-right" id="myForm" action="${cpath}/joinTry.do" method="post">
                  <h1 align="center">
                     <img src="${cpath}/resources/img/logo3.png" alt="">
                  </h1><br><br>
                     <div class="form-group col-md-12">
                        <input style="width:250px;" type="text" class="form-control" name="id" placeholder="ID"
                         onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID'">
                     </div>
                     <div class="form-group col-md-12">
                        <input style="width:250px;" type="password" class="form-control" name="pw" placeholder="PASSWARD"
                         onfocus="this.placeholder = ''" onblur="this.placeholder = 'PASSWARD'">
                     </div>
                     <div class="form-group col-md-12">
                        <input style="width:250px;" type="text" class="form-control" name="name" placeholder="이름"
                         onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
                     </div>
                     <div class="switch-wrap d-flex justify-content-between col-md-12">
                        <p>남성</p>
                        <div class="primary-radio">
                           <input type="radio" id="primary-radio" name="gender" value="man">
                           <label for="primary-radio"></label>
                        </div>
                        <p>여성</p>
                        <div class="primary-radio">
                           <input type="radio" id="default-radio" name="gender" value="woman">
                           <label for="default-radio"></label>
                        </div>
                     </div>
                     <div class="form-group col-md-12">
                        <input style="width:250px; type="text" class="form-control" id="name" name="age" placeholder="나이"
                         onfocus="this.placeholder = ''" onblur="this.placeholder = '나이'">
                     </div>
                     <div class="form-group col-md-12"></div>
                     <h4 style="padding-left:10px;"align="left">checkList</h4>
                  <div class="checkList1">
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>01. 이마가 점점 넓어지는 느낌이다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>02. 가늘고 힘없는 머리가 많이 빠진다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>03. 하루에 80개 이상 모발이 빠진다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>04. 비듬이 많아지거나 두피가 가렵다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>05. 모발이 가늘고 부드러워진다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>06. 두피를 눌러보면 가벼운 통증이 느껴진다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>07. 앞머리와 뒷머리의 굵기 차이가 많이 난다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>08. 몸의 털이 갑자기 굵어진다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>09. 이마와 정수리 부분이 유난히 번들거린다</p>
                     </div>
                     <div class="switch-wrap d-flex justify-content-between">
                        <p>10. 두피에 피지량이 갑자기 늘어난 것 같다</p>
                     </div>
                        
                     <div class="form-group col-md-12">
                        <input style="width:250px;" type="text" class="form-control" name="checknum" placeholder="해당하는 항목 수"
                         onfocus="this.placeholder = ''" onblur="this.placeholder = '해당하는 항목 수'">
                     </div>
                  </div>   
                  <br>
                     <div class="col-lg-12 text-center">
                        <button type="submit" class="main_btn text-uppercase">
                           회원가입
                        </button>
                     </div>
                  </form>
            </div>

         <div class="col-lg-6 col-md-6 header-left">
               <img  src="${cpath}/resources/img/banner/banner-img.jpg" alt="">
            </div>
            
            
         </div>
      </div>
   </section>
   <br><br>
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


<!-- 
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
 -->
</body>

</html>