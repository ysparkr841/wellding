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
<!-- ############################ 여기부터 내용 시작 ############################ -->

<section class="top">
	<div class="back"></div>
</section>

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>STUDIO</h2>
                    <!-- span>Check out upcoming and past shows & events and grab your ticket right now.</span -->
                </div>
            </div>
        </div>
    </div>

    <div class="tickets-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="search-box">
                        <form id="subscribe" action="" method="get">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="search-heading">
                                        <h4> 예약하고 싶은 스튜디오나 지역이 있으신가요?</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <select value="searchType">
                                            	<option value="">조회 항목</option>
                                                <option name="sd_name" id="sd_name">스튜디오명</option>
                                                <option name="location" id="location">지역</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="submit" id="form-submit" class="main-dark-button">Submit</button>
                                            </fieldset>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="heading">
                        <h2>Tickets Page</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-01.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">펜타그라피</div>
                            <div class="sd_detail">단독 건물사용의 여유로움과 자연채광을 활용해 자연스러운 느낌을 담아내는 스튜디오</div>
                            <ul>
                                <li class="price">850,000원</li>
                                <li><span class="discount">32%</span> <span class="dis-price">578,000원</span></li>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>서울 강남구 영동대로 131길 16</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">스튜디오 자세히보기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-02.jpg" alt="">
                            <div class="price">
                                <span>1 ticket<br>from <em>$45</em></span>
                            </div>
                        </div>
                        <div class="down-content">
                            <span>There Are 200 Tickets Left For This Show</span>
                            <h4>Golden Festival</h4>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Sunday: 06:00 PM to 09:00 PM</li>
                                <li><i class="fa fa-map-marker"></i>789 Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">Purchase Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-03.jpg" alt="">
                            <div class="price">
                                <span>1 ticket<br>from <em>$65</em></span>
                            </div>
                        </div>
                        <div class="down-content">
                            <span>There Are 260 Tickets Left For This Show</span>
                            <h4>Water Splash Festival</h4>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Tuesday: 07:00 PM to 11:00 PM</li>
                                <li><i class="fa fa-map-marker"></i>456 Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">Purchase Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-04.jpg" alt="">
                            <div class="price">
                                <span>1 ticket<br>from <em>$20</em></span>
                            </div>
                        </div>
                        <div class="down-content">
                            <span>There Are 340 Tickets Left For This Show</span>
                            <h4>Tiger Festival</h4>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Thursday: 06:40 PM to 11:40 PM</li>
                                <li><i class="fa fa-map-marker"></i>123 Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">Purchase Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-05.jpg" alt="">
                            <div class="price">
                                <span>1 ticket<br>from <em>$30</em></span>
                            </div>
                        </div>
                        <div class="down-content">
                            <span>There Are 420 Tickets Left For This Show</span>
                            <h4>Woodland Festival</h4>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Wednesday: 06:00 PM to 09:00 PM</li>
                                <li><i class="fa fa-map-marker"></i>1122 Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">Purchase Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/ticket-06.jpg" alt="">
                            <div class="price">
                                <span>1 ticket<br>from <em>$40</em></span>
                            </div>
                        </div>
                        <div class="down-content">
                            <span>There Are 520 Tickets Left For This Show</span>
                            <h4>Winter Festival</h4>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> Saturday: 06:00 PM to 09:00 PM</li>
                                <li><i class="fa fa-map-marker"></i>220 Copacabana Beach, Rio de Janeiro</li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">Purchase Tickets</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li><a href="#">Prev</a></li>
                            <li><a href="#">1</a></li>
                            <li class="active"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>
                    </div>
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