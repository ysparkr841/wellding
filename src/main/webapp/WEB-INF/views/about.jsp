<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body class="containerAb">
    <jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
    </jsp:include>
    
    <div class="page-heading-shows-eventsAb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>WELLDING</h2>
                    <!-- span>Check out upcoming and past shows & events and grab your ticket right now.</span -->
                </div>
            </div>
        </div>
    </div>
    
    <div class="containerAb">
    		

				<div class="row">
					
					<div class="col-lg-12 divImg" style="padding-left: 5%;">
		    			<img class="logoImg" alt="wellding" src="../resources/images/icons/logo.png">					
					</div>
				</div>    			
			
    		
    	</div>
    </div>
    
        <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="100">
            <div class="about-img">
              <img src="./resources/images/about.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
            <h3> <br/> Wishing you a wonderful beginning!</h3>
            
            <p>
            <br/>
             	-수많은 웨딩홀에서 가장 중요한 것은 내가 투어할 웨딩홀 리스트를 뽑는 것입니다. 방법은 간단합니다. 
             	<p>
             	-내가 우선시하는 순서로 항목을 정합니다. 그 뒤 해당 웨딩홀의 견적을 낸 후 예산에 맞는 곳을 투어하는 방법입니다. 웰딩에서는 우선순위에 따라 견적을 내주고 웨딩홀 투어날짜, 시간을 조정해드립니다. 
            	</p>
            	<p>
            	-홀에 대한 문의, 혹은 취소나 변경 등도 직접 할 필요없이 웰딩에서 하실 수 있습니다. 뿐만 아니라 그 예식장에서 있었던 사례나 장단점도 확인하실 수 있습니다. 
            	</p>
            </p>
          </div>
        </div>

      </div>
    </section>
    <!-- End About Section -->
    
        <!-- 보현수정 시작 : 커뮤니티 및 위치--> 
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
		<div class="row">
            <div class="left-content section-title">
            <h2>Contact</h2>
            <p><i class="fa fa-map-marker"></i> &nbsp;Contact Us</p>
            </div>
		</div>

      	
      </div>
      
	 <div data-aos="fade-up" class="locationnn">
	       	<iframe style="border:0; width: 100%; height: 400px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.926340073514!2d126.67291905107739!3d37.438844839088915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b799896635d33%3A0x931a5cb92c2d607c!2zKOyjvCnsnbjsspzsnbzrs7Qg7JWE7Lm0642w66-4!5e0!3m2!1sko!2skr!4v1639291920490!5m2!1sko!2skr" frameborder="0" allowfullscreen></iframe>
	  </div> 
   
   	<div class="container" data-aos="fade-up">
		<div class="row">
            <div class="adress_all">
            	<p><i class="fa fa-map-marker"></i>&nbsp; 인천광역시 미추홀구 매소홀로488번길 6-32 태승빌딩 5층 &nbsp;|&nbsp; (지번) 인천광역시 미추홀구 학익동 663-1 태승빌딩 5층 &nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-clock-o"></i> Monday-Friday 09:00 to 18:00 &nbsp;&nbsp;&nbsp;&nbsp; <span>tel.</span> 032-876-3332</p>
            </div>
         </div>
	</div>
      </section>
    
    <br />
    <br />
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Why Us</h2>
          <p>Why Choose Our Wellding</p>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <span>01</span>
              <h4>웨딩홀 검색포털</h4>
              <p>원하는 웨딩홀의 견적을 스스로 확인하고 저렴한 가격으로! 밤낮없는 웨딩쇼핑. 결혼준비 오픈마켓 서비스</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="200">
              <span>02</span>
              <h4>생생한 후기</h4>
              <p>웰딩을 선택한 고객분들의 생생한 스드메, 웨딩홀, 신혼여행, 상견례 후기를 확인하세요!<br/><br/></p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <span>03</span>
              <h4>실시간 UPDATE</h4>
              <p>수시로 바뀌는 방역정책, 이제는 걱정마세요. 빠르게 업데이트 되는 소식을 실시간으로 확인하세요!</p>
            </div>
          </div>

        </div>

      </div>
    </section>
    <!-- End Why Us Section -->
    
    
    <!-- 푸터 시작 -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- 푸터 종료 -->
</body>
</html>