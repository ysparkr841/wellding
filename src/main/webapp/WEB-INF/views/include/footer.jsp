<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>



 <!-- *** 욱채수정Footer *** -->
 <footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="address">
                    <h4>WELLDING</h4>
                    <span><br>인천일보아카데미 웰딩팀 <br>대표자 박의수<br>COPYRIGHT &copy; Team Wellding</span>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="address">
                    <h4>Information</h4>
                        <span><br>사업자등록번호 123 45 67890 <br>통신판매업신고 제2021-인천일보-아카데미호<br>개인정보관리책임자 박의수펭팀장</span>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="address">
                    <h4>Contact Us</h4>
                        <span><br>오전 8:00 ~ 오후 7:00 (월요일~금요일)<br>T 032 876 3332&nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;F 032 876 3332 <br>인천광역시 미추홀구 매소홀로488번길 6-32</span>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="sub-footer">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo"><span>WELL<em>DING</em></span></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="menu">
                                <ul>
                                    <li><a href="index.html" class="active">메인페이지</a></li>
                                    <li><a href="">이용약관</a></li>
                                    <li><a id="policy" href="/include/PrivacyPolicy" data-lightbox="Privacy Policy" data-title="My caption">개인정보처리방침</a></li>
                                    <li><a href="/about">오시는 길</a></li> 
                                    <li><a href="">고객센터</a></li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="social-links">
                                <ul>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
 <div class="modal fade" id="MoaModal" tabindex="-1" role="dialog" aria-labelledby="historyModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
    </div>
  </div>
</div>
</footer>
<!-- 욱채 수정 푸터 종료 -->


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
    <script src="../resources/js/jquery.colorbox.js"></script>
    <script src="../resources/js/jquery.bxslider.js"></script>
    <script src="../resources/js/jquery.bxslider.min.js"></script>
    <script src="../resources/js/scrollreveal.min.js"></script>
    <script src="../resources/js/waypoints.min.js"></script>
    <script src="../resources/js/jquery.counterup.min.js"></script>
    <script src="../resources/js/imgfix.min.js"></script> 
    <script src="../resources/js/mixitup.js"></script> 
    <script src="../resources/js/accordions.js"></script>
    <script src="../resources/js/owl-carousel.js"></script>
<<<<<<< HEAD
    <script>
function termsofuse(){
   $('#MoaModal .modal-content').load("/Termsofuse");
   $('#MoaModal').modal();
}
</script>
    
=======

<script>    
	$(document).ready(function(){
		   $("#policy").colorbox({
			      iframe:true, 
			      innerWidth:1235,
			      innerHeight:400,
			      overlayClose:true,
			      escKey:true,
			      closeButton:true,
			      scrolling:true,
			      onComplete:function()
			      {
			         $("#colorbox").css("width", "1235px");
			         $("#colorbox").css("height", "400px");
			         $("#colorbox").css("border-radius", "10px");
			         
			         $('html').css("overflow","hidden");
			      }      
			   });
	});
</script>    

>>>>>>> 99752df3767c7b645b0e21af459eab9b6c6eb488
    <!-- Global Init -->

    <!-- script src="../resources/js/custom.js"></script -->
