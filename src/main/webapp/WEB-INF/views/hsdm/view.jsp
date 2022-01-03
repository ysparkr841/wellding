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

<div class="big_title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>클라라웨딩</h2>
            </div>
            <div class="col-lg-8 _detail">
                <span>동화속의 신비로움을 간직한 클라라 웨딩드레스 1996년에 오픈해 꾸준히 사랑받고 있는 클라라웨딩은 튤소재의 드레스 같은 로맨틱 클래식의 대명사로 특유의 브랜드 이미지를 완성해 굳건히 자리매김했습니다.</span>
            </div>
            <div class="col-lg-4">
                <ul  class="loc_li">
                    <li><i class="fa fa-map-marker"></i> 서울시 강남구 언주로170길 25(신사동) 1층</li>
                    <li>Tel. 02-514-7600</li>
                </ul>
            </div>
        </div>
    </div>
</div>

    <div class="ticket-details-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-image">
                        <img src="../resources/images/dress/D0001.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="com_detail">
                        <div class="right-content">
                            <h4>드레스이름</h4>
                            <span>드레스설명블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라</span>
                            <ul>
                                <li><i class="fa fa-map-marker"></i>서울시 강남구 언주로170길 25(신사동) 1층</li>
                                <li>Tel. 02-514-7600</li>
                            </ul>
                            <div class="banner">
                                <img src="../resources/images/tour.png" width="100%">
                            </div>
                           <!---- 추가인원계산할때 쓸거 ---->
                            <div class="quantity-content">
                                <div class="left-content">
                                    <h6>Standard Ticket</h6>
                                    <p>$65 per ticket</p>
                                </div>
                                <div class="right-content">
                                    <div class="quantity buttons_added">
                                        <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                                    </div>
                                </div>
                            </div>
                            <!---- 추가인원계산할때 쓸거 끝 ---->
                            <div class="total">
                                <h4>Total: $210.00</h4>
                                <div class="main-dark-button"><a href="#">Purchase Tickets</a></div>
                            </div>
                            <div class="warn">
                                <p>*You Can Only Buy 10 Tickets For This Show</p>
                            </div>
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