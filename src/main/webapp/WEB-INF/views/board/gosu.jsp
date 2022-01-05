<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웨딩플래너 상세보기</title>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
    <div class="gosu_page">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="left-side">
                        <img src="../resources/images/studio/${wdStudio.sImgname}" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="com_detail9">
                        <div class="right-content2">
                            <h4><c:out value="${wdStudio.sName}" /></h4>
                            <span><c:out value="${wdStudio.sContent}" /></span>
                            <ul  class="loc_li">
			                    <li><i class="fa fa-map-marker"></i> <c:out value="${wdStudio.sLocation}" /></li>
			                    <li><p style="margin-right:7px">Tel.</p><p style="font-weight:700"><c:out value="${wdStudio.sNumber}" /></p></li>
			                </ul>
                           
                            <div class="main-dark-button3"><a href="#">이 스튜디오 담기</a></div>
                        </div>
                    </div>
                </div>
             </div>
          </div>
      </div>
      
     <div class="rent-venue-application">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="heading-text">
                        <h4>Reservation Application</h4>
                    </div>
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Your Name*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="phone-number" type="text" id="phone-number" placeholder="Phone Number*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="company-organization" type="text" id="company-organization" placeholder="Company / Organization*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="venue-requested" type="text" id="venue-requested" placeholder="Venue Requested*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="type-event" type="text" id="type-event" placeholder="Type Of Event*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="date-requested-first" type="text" id="date-requested-first" placeholder="Date Requested (Primary Date)*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="date-requested-second" type="text" id="date-requested-second" placeholder="Date Requested (Secondary Date)*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="about-event-hosting" rows="6" id="about-event-hosting" placeholder="About The Event You Are Hosting" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-dark-button">Submit Request</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
         
    <!-- jQuery -->
    <script src="../resources/js/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.colorbox.js"></script>
   
    
    <!-- 보현추가 -->
	<script type="text/javascript" src="../resources/js/slick.min.js"></script>

    <!-- Bootstrap -->
    <script src="../resources/js/popper.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/bootstrap.js"></script>

    <!-- Plugins -->

    <script src="../resources/js/jquery.bxslider.js"></script>
    <script src="../resources/js/jquery.bxslider.min.js"></script>
    <script src="../resources/js/scrollreveal.min.js"></script>
    <script src="../resources/js/waypoints.min.js"></script>
    <script src="../resources/js/jquery.counterup.min.js"></script>
    <script src="../resources/js/imgfix.min.js"></script> 
    <script src="../resources/js/mixitup.js"></script> 
    <script src="../resources/js/accordions.js"></script>
    <script src="../resources/js/owl-carousel.js"></script>
</body>
</html>