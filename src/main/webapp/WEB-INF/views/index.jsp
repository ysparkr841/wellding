<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
    
    <body>
    
    <!-- 메뉴바 시작 -->
    	<%@ include file="/WEB-INF/views/include/navigation.jsp" %>
    <!-- 메뉴바 종료 -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-content">
                        <!-- div class="next-show">
                            <i class="fa fa-arrow-up"></i>
                            <span>Next Show</span>
                        </div-->
                       
                        <h2>Wellding</h2>
                        <!--버튼부분-->
                        <!-- <div class="main-white-button">
                            <a href="ticket-details.html">Purchase Tickets</a>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

<!-- -------------------------보현수정----------------------------- -->
    <!-- *** 보현수정 베스트웨딩홀 ***-->
    <div class="coming-events">
        <div class="container">
            <div class="row">
				<div class="col-lg-12">
			        <div class="bestWedding">
			          <h2>Wellding's Best</h2>
			          <p>Best Wedding Hall</p>
			        </div>
                </div>
                <c:forEach var="hallList" items="${hall}" varStatus="status">
	                <div class="col-lg-4">
	                    <div class="event-item">
	                        <div class="thumb">
	                            <a href="event-details.html"><img src="resources/hsdm/${hallList.HImgName}" alt=""></a>
	                        </div>
	                        <div class="down-content">
	                            <a href="event-details.html"><h4>${hallList.HName}</h4></a>
	                            <ul>
	                                <li><i class="fa fa-map-marker"></i> ${hallList.WHLocation}</li>
	                                <li><i class="fa fa-user"></i> ${hallList.HMax}명 수용 가능</li>
	                                <li><i class="fa fa-krw" aria-hidden="true"></i>
	                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${hallList.HPrice}" />
	                                </li>
	                            </ul>
		                        <div class="main-white-button">
		                            <a href="ticket-details.html">VIEW MORE ▶</a>
		                        </div>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
                
                
                <!--  div class="col-lg-4">
                    <div class="event-item">
                        <div class="thumb">
                            <a href="event-details.html"><img src="resources/images/201.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                            <a href="event-details.html"><h4>더 에스비 웨딩컨벤션</h4></a>
                            <ul>
                                <li><i class="fa fa-map-marker"></i> 서울 동작구 보라매로 길 15 전문건설회관</li>
                                <li><i class="fa fa-user"></i> 650명 수용 가능</li>
                            </ul>
	                        <div class="main-white-button">
	                            <a href="ticket-details.html">VIEW MORE ▶</a>
	                        </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="event-item">
                        <div class="thumb">
                            <a href="event-details.html"><img src="resources/images/305.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                            <a href="event-details.html"><h4>벨라비타</h4></a>
                            <ul>
                                <li><i class="fa fa-map-marker"></i> 서울 강남고 봉은사로 302</li>
                                <li><i class="fa fa-user"></i> 300명 수용 가능</li>
                            </ul>
	                        <div class="main-white-button">
	                            <a href="ticket-details.html">VIEW MORE ▶</a>
	                        </div>
                        </div>
                    </div>
                </div-->
            </div>
        </div>
    </div>
    
   <!-- ------------------------------------------------------------------- -->

     <!-- *** 보현수정 스드메  ***-->
     <div class="venue-tickets">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
			        <div class="category">
			          <h2>SDM category</h2>
			          <p>Wedding Collection</p>
			        </div>
                </div>
                <div class="col-lg-4">
                    <div class="venue-item">
                        <div class="thumb sdmimg">
                        <a href="#">
                            <img src="resources/images/S68.jpg" width="100%" height="auto">
                            <a class="sdm_title" href="#">Studio</a>
                        </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="venue-item">
                        <div class="thumb sdmimg">
                        	<a href="#">
	                            <img src="resources/images/D10.jpg" width="100%" height="auto">
	                        	<a class="sdm_title" href="#">Dress</a>                       	
                        	</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="venue-item">
                        <div class="thumb sdmimg">
                      		<a href="#">
	                            <img src="resources/images/M00.jpg" width="100%" height="auto">
	                        	<a class="sdm_title" href="#">Makeup</a>
                        	</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--의수 수정 + 준호수정 + 보현수정-->

    <div class="slider">
       <div class="row">
           <div class="col-lg-12">
		      <div class="category">
		        <h2>wellding promotion</h2>
		        <p>Event & Promotion</p>
		      </div>
           </div>
         </div>  
        <div class="innerbox">
            <ul class="bxslider" style="text-align: center;"> 
             <c:forEach var="eboard" items="${wdEBoard}" varStatus="status">
                <li><img src="resources/board/${eboard.eBImgName}" style="width: 80%; height: 350px;" /></li> 
             </c:forEach>
                <!--li><img src="resources/images/305.jpg" style="width: 80%; height: 350px;" /></li> 
                <li><img src="resources/images/608.jpg" style="width: 80%; height: 350px;" /></li--> 
            </ul>
        </div>
        </div>
    </div>

    <!--의수수정중 끝-->
    
    <!-- 김동욱 수정 시작 + 보현수정 -->
    <!-- *** Amazing Venus ***-->
    <div class="amazing-venues">
        <div class="container">
            <div class="row">
                <div class="col-lg-auto">
                    <div class="left-content">
                        <iframe width="530" height="300" src="https://www.youtube.com/embed/kqUUPueWUxE?autoplay=1&amp;mute=1" title="video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="communitytitle">
                            <h2>Community</h2>
                            <p>Wellding Reviews</p>
                          </div>
                          
                          <div class="text-button"><a href="show-events-details.html"><span id="plusssss">더 보기</span></a></div>
                        <div class="lisylebox">
                            <ul class="listyle">
                               <c:forEach var="fboard" items="${wdFBoard}" varStatus="status"> 
                                <li>
                                    <div class="board">
                                        <div class="btitle active"><a href="#"><c:out value="${fboard.bTitle}"/></a></div>
                                        <div class="bwriter"><p><c:out value="${fboard.userId}"/></p></div>
                                        <div class="bdate"><p><c:out value="${fboard.regDate}"/></p></div>
                                    </div>
                                </li>
                               </c:forEach> 
                                <!-- li>
                                    <div class="board">
                                        <div class="btitle"><a href="#">자유게시판 내용? 글을 더 써도 이제 안내려가요!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</a></div>
                                        <div class="bwriter"><p>bohyong2</p></div>
                                        <div class="bdate"><p>21.12.28</p></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="board">
                                        <div class="btitle"><a href="#">board 클래스로 CSS를 추가해서 길이가 넘어가면 생략표시가 나오게 해봤어요!!!!!!!!!!!!!!!</a></div>
                                        <div class="bwriter"><p>bohyong2</p></div>
                                        <div class="bdate"><p>21.12.28</p></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="board">
                                        <div class="btitle"><a href="#">그러면 저는 짜장면을 먹고 올게요 여러분들 다들 맛저하세여~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</a></div>
                                        <div class="bwriter"><p>bohyong2</p></div>
                                        <div class="bdate"><p>21.12.28</p></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="board">
                                        <div class="btitle"><a href="#">우리는 이것보다 더 잘할수있다.</a></div>
                                        <div class="bwriter"><p>bohyong2</p></div>
                                        <div class="bdate"><p>21.12.28</p></div>
                                    </div>
                                </li-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 김동욱 수정 끝 -->


<!--     *** Map ***
    <div class="map-image">
        <img src="resources/images/map-image.jpg" alt="Maps of 3 Venues">
    </div> -->
    
    <!-- 보현수정 시작 : 커뮤니티 및 위치 
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
보현수정 끝 : 커뮤니티 및 위치 -->

    <!-- *** Coming Events ***-->
 <!--   <div class="coming-events">
        <div class="left-button">
            <div class="main-white-button">
                <a href="shows-events.html">Discover More</a>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="event-item">
                        <div class="thumb">
                            <a href="event-details.html"><img src="resources/images/event-01.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                            <a href="event-details.html"><h4>Radio City Musical Hall</h4></a>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Tuesday: 15:30-19:30</li>
                                <li><i class="fa fa-map-marker"></i> Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="event-item">
                        <div class="thumb">
                            <a href="event-details.html"><img src="resources/images/event-02.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                            <a href="event-details.html"><h4>Madison Square Garden</h4></a>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Wednesday: 08:00-14:00</li>
                                <li><i class="fa fa-map-marker"></i> Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="event-item">
                        <div class="thumb">
                            <a href="event-details.html"><img src="resources/images/event-03.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                            <a href="event-details.html"><h4>Royce Hall</h4></a>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Thursday: 09:00-23:00</li>
                                <li><i class="fa fa-map-marker"></i> Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

-->
    <!-- *** Subscribe *** -->
   <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h4>웰딩에 문의사항이 있으신가요? :-)</h4>
                </div>
                <div class="col-lg-8">
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-9">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email Address" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-3">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button">Submit</button>
                            </fieldset>
                          </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

 <!-- *** 욱채수정Footer 시작 *** -->
 	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
  </body>
</html>