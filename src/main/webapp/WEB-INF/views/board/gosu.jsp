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
                <div class="col-lg-4">
                    <div class="left-side">
                        <img src="../resources/images/gosu/gosu1.jpg" alt="">
                        
                        <div class="com_detail8">
	                        <div class="right-content2">
	                            <h4 class="h44">한지민 플래너</h4>
	                            <span>웨딩드레스 디자이너, 드레스샵 부원장 출신 한지민 플래너입니다. 웨딩경력 15년 이상의 노하우로 센스있는 웨딩 플래닝을 경험하실 수 있습니다.</span>
	                            <!--ul  class="loc_li">
				                    <li>입력</li>
				                    <li><p style="margin-right:7px">Tel.</p><p style="font-weight:700">플래너 연락처?</p></li>
				                </ul>-->
	                           
	                            <div class="main-dark-button4"><a href="mailto:bohyong2@gmail.com">직접 문의하기</a></div>
	                        </div>
                    	</div>
                    	
                    </div>
                </div>
                
                 <div class="col-lg-8">
                 <div class="rent-venue-application">
                    <div class="heading-text">
                        <h4>견적 요청하기</h4>
                    </div>
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-lg-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="이름을 입력하세요*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="이메일을 입력하세요* ex)id@email.com" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <input name="phone-number" type="text" id="phone-number" placeholder="연락처를 입력하세요*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="about-event-hosting" rows="6" id="about-event-hosting" placeholder="문의내용을 입력해주세요" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-dark-button">견적 요청하기</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
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