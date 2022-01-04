<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

</head> 
<body>
	<!-- 메뉴바 시작 -->
    	<jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    	<jsp:param name="userName" value="${wdUser.userNickname}" />
    	</jsp:include>
	<!-- 메뉴바 종료 -->
<!-- ############################ 여기부터 내용 시작 ############################ -->
<section class="top">
	<div class="back"></div>
</section>

<div class="big_title_hall">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                
	                <h2>${wdHall.whName } &nbsp;> </h2>
		            <div class="hibixbi">
		                	<h2>${wdHall.HName }</h2>
		            </div>
            </div>
        </div>
    </div>
</div>

    <div class="ticket-details-page">
        <div class="container">
            <div class="row">
            <div class="col-lg-12 line">
            </div>
                <div class="col-lg-1">
                </div>
                <div class="col-lg-10">
                	
	                    <div class="left-image-hall">
							<img src="../resources/images/hallrepimage/${wdHall.HImgName }" height="auto" width="100%" alt="">
	                    </div>
                </div>
                <div class="col-lg-1">
                </div>
                <div class="col-lg-12">	
                <br>
                    <div class="com_detail">
                        <div class="right-content">
                            
                            <span>${wdHall.HContent }</span>
                            <ul>
                                <!-- li><i class="fa fa-map-marker"></i>${wdHall.WHLocation }</li -->
                                <li>Tel. 02-514-7600</li>
                            </ul>
                            <!-- div class="banner">
                                <img src="../resources/images/halltour.PNG" width="100%" height="200px">
                            </div -->
                           <!---- 추가인원계산할때 쓸거 ---->
                            <!-- div class="quantity-content">
                                <div class="left-content">
                                    <h6>Standard Ticket</h6>
                                    <p>$65 per ticket</p>
                                </div>
                                <div class="right-content">
                                    <div class="quantity buttons_added">
                                        <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                                    </div>
                                </div>
                            </div -->
                            <!---- 추가인원계산할때 쓸거 끝 ---->
                            <div class="total">
                                <h4>Total: $210.00</h4>
                                <div class="main-dark-button"><a href="#">Purchase Tickets</a></div>
                            </div>
                            <!--  div class="warn">
                                <p>*You Can Only Buy 10 Tickets For This Show</p>
                            </div -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- *** Subscribe *** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h4>Subscribe Our Newsletter:</h4>
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

    
<!-- ############################ 여기까지 내용 끝 ############################ -->
	<!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>