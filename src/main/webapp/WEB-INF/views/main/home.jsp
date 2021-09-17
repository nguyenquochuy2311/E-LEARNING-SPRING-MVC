<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <meta name="description" content="Home Page">
  <meta name="author" content="Quoc Huy">
  <meta name="keywords" content="">

  <title>LearnPLUS</title>
  <link rel="shortcut icon" href="resources/static/images/favicon.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="resources/static/images/apple-touch-icon.png" />
  <link rel="apple-touch-icon" sizes="57x57" href="resources/static/images/apple-touch-icon-57x57.png" />
  <link rel="apple-touch-icon" sizes="72x72" href="resources/static/images/xapple-touch-icon-72x72.png.pagespeed.ic.lf5d8kCpOf.png" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/static/images/xapple-touch-icon-76x76.png.pagespeed.ic.ATZZpSeito.png" />
  <link rel="apple-touch-icon" sizes="114x114"
    href="resources/static/images/xapple-touch-icon-114x114.png.pagespeed.ic.Fi5O5s2tzL.png" />
  <link rel="apple-touch-icon" sizes="120x120"
    href="resources/static/images/xapple-touch-icon-120x120.png.pagespeed.ic.uPQH0sygdV.png" />
  <link rel="apple-touch-icon" sizes="144x144"
    href="resources/static/images/xapple-touch-icon-144x144.png.pagespeed.ic.yZ9-_sm5OF.png" />
  <link rel="apple-touch-icon" sizes="152x152"
    href="resources/static/images/xapple-touch-icon-152x152.png.pagespeed.ic.gThaVrKtXF.png" />
  <link rel="apple-touch-icon" sizes="180x180"
    href="resources/static/images/xapple-touch-icon-180x180.png.pagespeed.ic.Q8Pmsj5fQM.png" />
  <link rel="stylesheet" type="text/css" href="resources/static/rs-plugin/css/A.settings.css.pagespeed.cf.xeOyGChsgq.css"
    media="screen" />
  <link rel="stylesheet" type="text/css"
    href="resources/static/A.fonts%2c%2c_font-awesome-4.3.0%2c%2c_css%2c%2c_font-awesome.min.css%2bcss%2c%2c_bootstrap.css%2bcss%2c%2c_animate.css%2cMcc.kSNwpaaMDX.css.pagespeed.cf.w2G3xGgFf0.css" />
  <link rel="stylesheet" type="text/css" href="resources/static/css/A.menu.css.pagespeed.cf.0_hLwXzYkZ.css">
  <link rel="stylesheet" type="text/css"
    href="resources/static/css/A.carousel.css%2bbxslider.css%2cMcc.jgeTii-u52.css.pagespeed.cf.STKSIMl7GF.css" />
  <link rel="stylesheet" type="text/css"
    href="resources/static/A.style.css%2bcss%2c%2c_custom.css%2cMcc.HvWh1qoob-.css.pagespeed.cf.pWH5huNcWh.css" />
</head>

<body>

  <!-- Loader -->
  <div id="loader">
    <div class="loader-container">
      <img src="resources/static/images/site.gif" alt="" class="loader-site">
    </div>
  </div>
  <!-- End Loader -->

  <!-- All Page -->
  <div id="wrapper">

    <!-- Top Area -->
    <div class="topbar">
      <div class="container">
        <div class="row">
          <div class="col-md-6 text-left">
            <p><i class="fa fa-graduation-cap"></i> Best learning management template for ever.</p>
          </div>
          <div class="col-md-6 text-right">
            <ul class="list-inline">
              <li>
                <a class="social" href="#"><i class="fa fa-facebook"></i></a>
                <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                <a class="social" href="#"><i class="fa fa-linkedin"></i></a>
              </li>
              <li class="dropdown">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-lock"></i> Login &
                  Register</a>
                <div class="dropdown-menu">
                  <form method="post">
                    <div class="form-title">
                      <h4>Login Area</h4>
                      <hr>
                    </div>
                    <input class="form-control" type="text" name="username" placeholder="User Name">
                    <div class="formpassword">
                      <input class="form-control" type="password" name="password" placeholder="******">
                    </div>
                    <div class="clearfix"></div>
                    <button type="submit" class="btn btn-block btn-primary">Login</button>
                    <hr>
                    <h4><a href="login.html">Create an Account</a></h4>
                  </form>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- End Top Area -->

    <!-- Header -->
    <header class="header">
      <div class="container">
        <div class="hovermenu ttmenu">
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
              </button>
              <div class="logo">
                <a class="navbar-brand" href="index.html"><img src="resources/static/images/xlogo.png.pagespeed.ic.vap6Ukaf0i.png"
                    alt=""></a>
              </div>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown ttmenu-half"><a href="course.html" data-toggle="dropdown"
                    class="dropdown-toggle">Course <b class="fa fa-angle-down"></b></a>
                  <ul class="dropdown-menu menu-bg wbg">
                    <li>
                      <div class="ttmenu-content">
                        <div class="row">
                          <div class="col-md-6">
                            <div class="box">
                              <ul>
                                <li><a href="course_bycat.html">Category Course 1</a></li>
                                <li><a href="#">Category Course 2</a></li>
                                <li><a href="#">Category Course 3</a></li>
                                <li><a href="#">Category Course 4</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>

                <li><a href="book.html">Book</a></li>

                <li><a href="#">Instructor</a></li>
                <li><a href="#">Community</a></li>
                <li><a href="#">Contact</a></li>

              </ul>

              <!-- Search -->
              <ul class="nav navbar-nav navbar-right">
                <div class="navbar-collapse collapse right">
                  <button class="btn btn-primary navbar-btn" type="button" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle Search</span>
                    <i class="fa fa-search"></i>Search
                  </button>
                </div>
                <div class="collapse clearfix" id="search">
                  <form method="get" action="#" class="navbar-form">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Enter search here" name="searchtext"
                        required>
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary">
                          <i class="fa fa-search"></i>
                        </button>
                      </span>
                    </div>
                  </form>
                </div>
              </ul>
              <!-- End Search -->

            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- End Header -->

    <!-- Silder -->
    <section class="slider-section">
      <div class="tp-banner-container">
        <div class="tp-banner">
          <ul>
            <li data-transition="fade" data-slotamount="1" data-masterspeed="500" data-thumb="${pageContext.request.contextPath }/resources/static/upload/slider_new_01.jpg"
              data-saveperformance="off" data-title="Slide">
              <img src="resources/static/upload/xslider_new_01.jpg.pagespeed.ic.RgCY2ieSzC.jpg" alt="fullslide1"
                data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
              <div class="tp-caption slider_layer_01 text-center lft tp-resizeme" data-x="center" data-y="220"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i
                  class="fa fa-graduation-cap"></i> Learn<strong>PLUS</strong> Site Template
              </div>
              <div class="tp-caption slider_layer_02 text-center lft tp-resizeme" data-x="center" data-y="320"
                data-speed="1000" data-start="800" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Great Theme For Education,
                University Learning Websites<br> with tons of options and custom sections!
              </div>
              <div class="tp-caption text-center lft tp-resizeme" data-x="center" data-y="390" data-speed="1000"
                data-start="800" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none"
                data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#"
                  class="btn btn-default">Start Learning</a> <a href="#" class="btn btn-primary">Learn More</a>
              </div>
            </li>
            <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" data-delay="5000">
              <img src="${pageContext.request.contextPath }/resources/static/images/xdummy.png.pagespeed.ic.lRMfmktUso.png" alt="video_business"
                data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
              <div class="tp-caption tp-fade fadeout fullscreenvideo" data-x="0" data-y="0" data-speed="1000"
                data-start="800" data-easing="Power4.easeOut" data-endspeed="1500" data-endeasing="Power4.easeIn"
                data-autoplay="true" data-autoplayonlyfirsttime="false" data-nextslideatend="true" data-forceCover="1"
                data-aspectratio="16:9" data-forcerewind="on" style="z-index: 2"><video id="revvideo"
                  class="video-js vjs-default-skin" preload="none" poster='images/dummy.png' data-setup="{}">
                  <source src='resources/static/upload/video.mp4' type='video/mp4' />
                  <source src='resources/static/upload/video.webm' type='video/webm' />
                  <source src='resources/static/upload/video.ogv' type='video/ogg' />
                </video>
              </div>
              <div class="tp-caption slider_layer_01 text-center lft tp-resizeme" data-x="center" data-y="220"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-html5"></i>
                SUPPORTED <strong>HTML5 VIDEO</strong> SLIDER
              </div>
              <div class="tp-caption slider_layer_02 lightcolor text-center lft tp-resizeme" data-x="center"
                data-y="320" data-speed="1000" data-start="800" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">The LearnPLUS Compatible
                With Revolution Slider<br> You Can Use Your Own Video Slider..
              </div>
              <div class="tp-caption text-center lft tp-resizeme" data-x="center" data-y="390" data-speed="1000"
                data-start="800" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none"
                data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#"
                  class="btn btn-default">Start Learning</a> <a href="#" class="btn btn-primary">Learn More</a>
              </div>
            </li>
            <li data-transition="fade" data-slotamount="1" data-masterspeed="500" data-thumb="${pageContext.request.contextPath }/resources/static/upload/slider_new_03.jpg"
              data-saveperformance="off" data-title="Slide">
              <img src="${pageContext.request.contextPath }/resources/static/upload/xslider_new_03.jpg.pagespeed.ic.0dDeZb1yS7.jpg" alt="fullslide1"
                data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
              <div class="tp-caption slider_layer_05 text-center lft tp-resizeme" data-x="center" data-y="140"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i
                  class="fa fa-graduation-cap"></i>
              </div>
              <div class="tp-caption slider_layer_01 text-center lft tp-resizeme" data-x="center" data-y="250"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Learning Management System
              </div>
              <div class="tp-caption slider_layer_02 text-center lft tp-resizeme" data-x="center" data-y="360"
                data-speed="1000" data-start="800" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Great Theme For Education,
                University Learning Websites<br> with tons of options and custom sections!
              </div>
              <div class="tp-caption text-center lft tp-resizeme" data-x="center" data-y="440" data-speed="1000"
                data-start="800" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none"
                data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"> <a target="_blank" href="#"
                  class="btn btn-primary">Purchase Now</a> <a target="_blank" href="#" class="btn btn-default">Read More
                  About</a>
              </div>
            </li>
            <li data-transition="fade" data-slotamount="1" data-masterspeed="500" data-thumb="${pageContext.request.contextPath }/resources/static/upload/slider_new_02.jpg"
              data-saveperformance="off" data-title="Slide">
              <img src="${pageContext.request.contextPath }/resources/static/upload/xslider_new_02.jpg.pagespeed.ic.QHr4wT-HDB.jpg" alt="fullslide1"
                data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
              <div class="tp-caption slider_layer_04 text-center lft tp-resizeme" data-x="center" data-y="200"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><strong>Works with any
                  Devices</strong>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="300" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-html5"></i>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="400" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-tablet"></i>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="500" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-laptop"></i>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="620" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-mobile"></i>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="800" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-css3"></i>
              </div>
              <div class="tp-caption slider_layer_03 text-center lft tp-resizeme" data-x="700" data-y="240"
                data-speed="1000" data-start="600" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><i class="fa fa-pencil"></i>
              </div>
              <div class="tp-caption slider_layer_02 text-center lft tp-resizeme" data-x="center" data-y="340"
                data-speed="1000" data-start="800" data-easing="Power3.easeInOut" data-splitin="none"
                data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">Great Theme For Education,
                University Learning Websites<br> with tons of options and custom sections!
              </div>
              <div class="tp-caption text-center lft tp-resizeme" data-x="center" data-y="410" data-speed="1000"
                data-start="800" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none"
                data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="1000"
                style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;"><a target="_blank"
                  href="http://www.responsinator.com/?url=http%3A%2F%2Ftemplatevisual.com%2Fdemo%2Flearnplus%2F"
                  class="btn btn-default">Test Responsive Now</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section>
    <!-- End Silder -->

    <!-- Popular Courses -->
    <section class="grey section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Popular Courses</h4>
              <p>Listed Below Our Most Popular Courses</p>
            </div>
          </div>
        </div>
        <div id="owl-featured" class="owl-custom">
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_01.png.pagespeed.ic.XTOvCuUmZu.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="course-single.html">Learn Web Design & Development</a></h4>
                <div class="shopmeta">
                  <span class="pull-left">12 Student</span>
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
              <div class="visible-buttons">
                <a title="Add to Cart" href="page-shop-cart.html"><span class="fa fa-cart-arrow-down"></span></a>
                <a title="Read More" href="course-single.html"><span class="fa fa-search"></span></a>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_02.png.pagespeed.ic.PL7Wu2UcSB.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="course-single.html">Graphic Design & Logo Mockups Course</a></h4>
                <div class="shopmeta">
                  <span class="pull-left">21 Student</span>
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                </div>
              </div>
              <div class="visible-buttons">
                <a title="Add to Cart" href="page-shop-cart.html"><span class="fa fa-cart-arrow-down"></span></a>
                <a title="Read More" href="course-single.html"><span class="fa fa-search"></span></a>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_03.png.pagespeed.ic.8e1MyY5M7i.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="course-single.html">Social Media Network & Marketing</a></h4>
                <div class="shopmeta">
                  <span class="pull-left">98 Student</span>
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                </div>
              </div>
              <div class="visible-buttons">
                <a title="Add to Cart" href="page-shop-cart.html"><span class="fa fa-cart-arrow-down"></span></a>
                <a title="Read More" href="course-single.html"><span class="fa fa-search"></span></a>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="upload/xcourse_04.png.pagespeed.ic.2rIKmUwjA7.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="course-single.html">WordPress Blogging, Tumblr and Blogger</a></h4>
                <div class="shopmeta">
                  <span class="pull-left">98 Student</span>
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>
                </div>
              </div>
              <div class="visible-buttons">
                <a title="Add to Cart" href="page-shop-cart.html"><span class="fa fa-cart-arrow-down"></span></a>
                <a title="Read More" href="course-single.html"><span class="fa fa-search"></span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Popular Courses -->

    <!-- Recommend Jobs -->
    <section class="section darkskin fullscreen paralbackground parallax"
      style="background-image:url(${pageContext.request.contextPath }/resources/static/upload/xparallax_01.jpg.pagespeed.ic.JPVsQrTu6o.jpg)" data-img-width="1627"
      data-img-height="868" data-diff="100">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Recommend Jobs For You</h4>
              <p>Listed Below Jobs Elements</p>
            </div>
          </div>
        </div>
        <div id="owl-featured-2" class="owl-custom">
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_01.png.pagespeed.ic.XTOvCuUmZu.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="page-shop-single.html">One Year Membership - Graphic Design</a></h4>
                <p>Lsum is simply dummy text of the printing and typesetting industry.</p>
                <div class="shopmeta">
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_02.png.pagespeed.ic.PL7Wu2UcSB.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="page-shop-single.html">Master of PDF, PSD and TXT EBook</a></h4>
                <p>Lsum is simply dummy text of the printing and typesetting industry.</p>
                <div class="shopmeta">
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_03.png.pagespeed.ic.8e1MyY5M7i.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="page-shop-single.html">Learning Web Design with Sublime Text</a></h4>
                <p>Lsum is simply dummy text of the printing and typesetting industry.</p>
                <div class="shopmeta">
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_04.png.pagespeed.ic.2rIKmUwjA7.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="page-shop-single.html">Starting WordPress Blogging with Custo Post Types</a></h4>
                <p>Lsum is simply dummy text of the printing and typesetting industry.</p>
                <div class="shopmeta">
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-featured">
            <div class="shop-item-list entry">
              <div class="">
                <img src="resources/static/upload/xcourse_05.png.pagespeed.ic.mrKpzOf8LX.png" alt="">
                <div class="magnifier">
                </div>
              </div>
              <div class="shop-item-title clearfix">
                <h4><a href="page-shop-single.html">One Year Membership - Graphic Design</a></h4>
                <p>Lsum is simply dummy text of the printing and typesetting industry.</p>
                <div class="shopmeta">
                  <div class="rating pull-right">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Recommend Jobs -->

    <!-- Collaborative Business -->
    <section class="grey section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Our Clients</h4>
              <p>What University's Love Work With Us and With Our Teachers</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_01.png.pagespeed.ic.m5NnlxSzhM.png" alt="" class="img-responsive img-thumbnail">
          </div>
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_02.png.pagespeed.ic.BsH9V4BqCi.png" alt="" class="img-responsive img-thumbnail">
          </div>
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_03.png.pagespeed.ic.mxzQrepbL_.png" alt="" class="img-responsive img-thumbnail">
          </div>
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_04.png.pagespeed.ic.Fx2ObIy0Eb.png" alt="" class="img-responsive img-thumbnail">
          </div>
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_05.png.pagespeed.ic.GBNy2ra72B.png" alt="" class="img-responsive img-thumbnail">
          </div>
          <div class="col-md-2">
            <img src="resources/static/upload/xclient_06.png.pagespeed.ic.a_uqmnbFy0.png" alt="" class="img-responsive img-thumbnail">
          </div>
        </div>
      </div>
    </section>
    <!-- End Collaborative Business -->

    <!-- Student's Feedback -->
    <section class="white section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Happy Students</h4>
              <p>What Our Students Say About LearnPLUS</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="testimonial">
              <img class="alignleft img-circle" src="${pageContext.request.contextPath }/resources/static/upload/xstudent_01.png.pagespeed.ic.756JwMcqdq.png" alt="">
              <p>Lorem Ipsum is simply dummy text of the printing and industry. </p>
              <div class="testimonial-meta">
                <h4>John DOE <small><a href="#">.com</a></small></h4>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="testimonial">
              <img class="alignleft img-circle" src="${pageContext.request.contextPath }/resources/static/upload/xstudent_02.png.pagespeed.ic.y-PM-y4pVj.png" alt="">
              <p>Lorem Ipsum is simply dummy text of the most popular items.</p>
              <div class="testimonial-meta">
                <h4>Jenny Anderson <small><a href="#">photodune.com</a></small></h4>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="testimonial">
              <img class="alignleft img-circle" src="${pageContext.request.contextPath }/resources/static/upload/xstudent_03.png.pagespeed.ic.uCQY3WNMCJ.png" alt="">
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
              <div class="testimonial-meta">
                <h4>Mark BOBS <small><a href="#">tutsplus.com</a></small></h4>
              </div>
            </div>
          </div>
        </div>
        <div class="button-wrapper text-center">
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
            industry's standard dummy text ever since<br> the 1500s, when an unknown printer took a galley of type and
            scrambled it to make a type specimen book. </p>
          <a href="#" class="btn btn-default border-radius"><i class="fa fa-sign-in"></i> Join Community</a>
        </div>
      </div>
    </section>
    <!-- End Student's Feedback -->

    <!-- Feedback -->
    <section class="grey section">
      <div class="container">
        <div class="row contact-wrapper">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Feedback</h4>
              <p>Share with us about your learning experience on the online learning page</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12 content-widget">
            <img src="resources/static/upload/xteam_03.jpg.pagespeed.ic.Mw22RnI1eL.jpg" alt="" class="img-responsive wow fadeInUp">
          </div>
          <div class="col-md-9 col-sm-9 col-xs-12 content-widget">
            <div class="widget-title">
              <h4>Contact Form</h4>
              <hr>
            </div>
            <div id="contact_form" class="contact_form row">
              <div id="message"></div>
              <form id="contactform" action="http://templatevisual.com/demo/learnplus/contact.php" name="contactform"
                method="post">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                  <input type="text" name="name" id="name" class="form-control" placeholder="Name *">
                  <input type="text" name="email" id="email" class="form-control" placeholder="Email *">
                  <input type="text" name="phone_number" id="phone_number" class="form-control"
                    placeholder="Phone Number">
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                  <textarea class="form-control" name="comments" id="comments" rows="6" placeholder=""></textarea>
                  <button type="submit" value="SEND" id="submit" class="btn btn-primary btn-block">Send
                    Feedback</button>
                </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </section>
    <!-- End Feedback -->

    <!-- Footer -->
    <footer class="dark footer section">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-md-6 col-xs-12">
            <div class="widget">
              <div class="widget-title">
                <h4>About LearnPLUS</h4>
                <hr>
              </div>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took...</p>
              <a href="#" class="btn btn-default">Read More</a>
            </div>
          </div>
          <div class="col-md-3 col-md-6 col-xs-12">
            <div class="widget">
              <div class="widget-title">
                <h4>Recent Tweets</h4>
                <hr>
              </div>
              <div class="twitter-widget">
                <ul class="latest-tweets">
                  <li>
                    <p><a href="#" title="">@Mark</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
                      lorem quam.</p>
                    <span>2 hours ago</span>
                  </li>
                  <li>
                    <p><a href="#" title=""></a> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem
                      quam.</p>
                    <span>2 hours ago</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-md-6 col-xs-12">
            <div class="widget">
              <div class="widget-title">
                <h4>Popular Courses</h4>
                <hr>
              </div>
              <ul class="popular-courses">
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="resources/static/upload/xservice_01.png.pagespeed.ic.2iuJZT3CaV.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="resources/static/upload/xservice_02.png.pagespeed.ic.c6RThoxSWC.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="${pageContext.request.contextPath }/resources/static/upload/xservice_03.png.pagespeed.ic.E_Ew4wn4ZP.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="${pageContext.request.contextPath }/resources/static/supload/xservice_04.png.pagespeed.ic.NGi9jRXTXk.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="${pageContext.request.contextPath }/resources/static/upload/xservice_05.png.pagespeed.ic.2iuJZT3CaV.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="${pageContext.request.contextPath }/resources/static/upload/xservice_06.png.pagespeed.ic.o2Uniwq-y5.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="${pageContext.request.contextPath }/resources/static/upload/xservice_07.png.pagespeed.ic.H-fRTeeP8u.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="resources/static/upload/xservice_08.png.pagespeed.ic.76ek5JLaEY.png" alt=""></a>
                </li>
                <li>
                  <a href="single-course.html" title=""><img class="img-thumbnail"
                      src="resources/static/upload/xservice_09.png.pagespeed.ic.FJcG938KC-.png" alt=""></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3 col-md-6 col-xs-12">
            <div class="widget">
              <div class="widget-title">
                <h4>Contact Details</h4>
                <hr>
              </div>
              <ul class="contact-details">
                <li><i class="fa fa-link"></i> <a href="#">www.yoursite.com</a></li>
                <li><i class="fa fa-envelope"></i> <a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                <li><i class="fa fa-phone"></i> +90 123 45 67</li>
                <li><i class="fa fa-fax"></i> +90 123 45 68</li>
                <li><i class="fa fa-home"></i> INC 22 Elizabeth Str. Melbourne. Victoria 8777.</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->
  </div>
  <!-- End All Page -->

  <script src="resources/static/js/jquery.min.js.pagespeed.jm.iDyG3vc4gw.js"></script>
  <script src="resources/static/js/bootstrap.min.js%2bretina.js%2bwow.js.pagespeed.jc.pMrMbVAe_E.js"></script>
  <script>eval(mod_pagespeed_gFRwwUbyVc);</script>
  <script>eval(mod_pagespeed_rQwXk4AOUN);</script>
  <script>eval(mod_pagespeed_U0OPgGhapl);</script>
  <script src="resources/static/js/carousel.js%2bcustom.js.pagespeed.jc.nVhk-UfDsv.js"></script>
  <script>eval(mod_pagespeed_6Ja02QZq$f);</script>
  <script>eval(mod_pagespeed_KxQMf5X6rF);</script>
  <script src="resources/static/rs-plugin/js/jquery.themepunch.tools.min.js.pagespeed.jm.0PLSBOOLZa.js"></script>
  <script src="resources/static/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
  <script>jQuery(document).ready(function () { jQuery('.tp-banner').show().revolution({ dottedOverlay: "none", delay: 16000, startwidth: 1170, startheight: 620, hideThumbs: 200, thumbWidth: 100, thumbHeight: 50, thumbAmount: 5, navigationType: "none", navigationArrows: "solo", navigationStyle: "preview3", touchenabled: "on", onHoverStop: "on", swipe_velocity: 0.7, swipe_min_touches: 1, swipe_max_touches: 1, drag_block_vertical: false, parallax: "mouse", parallaxBgFreeze: "on", parallaxLevels: [10, 7, 4, 3, 2, 5, 4, 3, 2, 1], parallaxDisableOnMobile: "off", keyboardNavigation: "off", navigationHAlign: "center", navigationVAlign: "bottom", navigationHOffset: 0, navigationVOffset: 20, soloArrowLeftHalign: "left", soloArrowLeftValign: "center", soloArrowLeftHOffset: 20, soloArrowLeftVOffset: 0, soloArrowRightHalign: "right", soloArrowRightValign: "center", soloArrowRightHOffset: 20, soloArrowRightVOffset: 0, shadow: 0, fullWidth: "on", fullScreen: "off", spinner: "spinner4", stopLoop: "off", stopAfterLoops: -1, stopAtSlide: -1, shuffle: "off", autoHeight: "off", forceFullWidth: "off", hideThumbsOnMobile: "off", hideNavDelayOnMobile: 1500, hideBulletsOnMobile: "off", hideArrowsOnMobile: "off", hideThumbsUnderResolution: 0, hideSliderAtLimit: 0, hideCaptionAtLimit: 0, hideAllCaptionAtLilmit: 0, startWithSlide: 0, fullScreenOffsetContainer: "" }); });</script>
  <script src="resources/static/js/bxslider.js.pagespeed.jm.X-sF7YFq4Y.js"></script>
  <script
    type="text/javascript">(function ($) { "use strict"; $('.bxslider').bxSlider({ mode: 'vertical', minSlides: 1, maxSlides: 1, slideMargin: 0, pager: false, nextText: '<i class="fa fa-arrow-down"></i>', prevText: '<i class="fa fa-arrow-up"></i>', speed: 1000, auto: true }); })(jQuery);</script>

</body>

</html>
