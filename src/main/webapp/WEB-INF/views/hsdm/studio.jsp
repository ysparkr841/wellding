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
                        <h2>Studio</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/S01.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">봉 스튜디오</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로40번길 124-27</li>
                            </ul>
                                <div class="sd_detail">스튜디오 느낌과 자연적인 느낌을 동시에 연출할 수 있는 스튜디오</div>
                            <ul>    
                                <li class="price">550,000원</li>
                                <li><span class="discount">28%</span> <span class="dis-price">396,000원</span></li>
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
                            <img src="../resources/images/S02.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">마이퍼스트레이디</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>서울 강남구 압구정로60길 26 청담힐사이드빌딩 5F</li>
                            </ul>
                                <div class="sd_detail">컨셉이 다양하고 자연스러운 스냅느낌 촬영이 가능한 스튜디오</div>
                            <ul>    
                                <li class="price">680,000원</li>
                                <li><span class="discount">38%</span> <span class="dis-price">421,600원</span></li>
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
                            <img src="../resources/images/S03.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">그림비(세미 스튜디오)</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로37번길 64 1층</li>
                            </ul>
                                <div class="sd_detail">세미촬영 - 심플한 배경과 스냅느낌이 공존하는 스튜디오</div>
                            <ul>    
                                <li class="price">850,000원</li>
                                <li><span class="discount">32%</span> <span class="dis-price">780,000원</span></li>
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
                            <img src="../resources/images/S01.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">봉 스튜디오</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로40번길 124-27</li>
                            </ul>
                                <div class="sd_detail">스튜디오 느낌과 자연적인 느낌을 동시에 연출할 수 있는 스튜디오</div>
                            <ul>    
                                <li class="price">550,000원</li>
                                <li><span class="discount">28%</span> <span class="dis-price">396,000원</span></li>
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
                            <img src="../resources/images/S02.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">마이퍼스트레이디</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>서울 강남구 압구정로60길 26 청담힐사이드빌딩 5F</li>
                            </ul>
                                <div class="sd_detail">컨셉이 다양하고 자연스러운 스냅느낌 촬영이 가능한 스튜디오</div>
                            <ul>    
                                <li class="price">680,000원</li>
                                <li><span class="discount">38%</span> <span class="dis-price">421,600원</span></li>
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
                            <img src="../resources/images/S03.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">그림비(세미 스튜디오)</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로37번길 64 1층</li>
                            </ul>
                                <div class="sd_detail">세미촬영 - 심플한 배경과 스냅느낌이 공존하는 스튜디오</div>
                            <ul>    
                                <li class="price">850,000원</li>
                                <li><span class="discount">32%</span> <span class="dis-price">780,000원</span></li>
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
                            <img src="../resources/images/S01.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">봉 스튜디오</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로40번길 124-27</li>
                            </ul>
                                <div class="sd_detail">스튜디오 느낌과 자연적인 느낌을 동시에 연출할 수 있는 스튜디오</div>
                            <ul>    
                                <li class="price">550,000원</li>
                                <li><span class="discount">28%</span> <span class="dis-price">396,000원</span></li>
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
                            <img src="../resources/images/S02.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">마이퍼스트레이디</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>서울 강남구 압구정로60길 26 청담힐사이드빌딩 5F</li>
                            </ul>
                                <div class="sd_detail">컨셉이 다양하고 자연스러운 스냅느낌 촬영이 가능한 스튜디오</div>
                            <ul>    
                                <li class="price">680,000원</li>
                                <li><span class="discount">38%</span> <span class="dis-price">421,600원</span></li>
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
                            <img src="../resources/images/S03.jpg" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">그림비(세미 스튜디오)</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>경기 하남시 미사동로37번길 64 1층</li>
                            </ul>
                                <div class="sd_detail">세미촬영 - 심플한 배경과 스냅느낌이 공존하는 스튜디오</div>
                            <ul>    
                                <li class="price">850,000원</li>
                                <li><span class="discount">32%</span> <span class="dis-price">780,000원</span></li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="ticket-details.html">스튜디오 자세히보기</a>
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