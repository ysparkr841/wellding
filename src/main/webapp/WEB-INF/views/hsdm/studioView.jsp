<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script>
$(document).ready(function(){
	<c:choose>
		<c:when test="${empty wdStudio}">
			alert("조회하신 상품이 존재하지 않습니다.");
			document.bbsForm.action = "/hsdm/studio";
			document.bbsForm.submit();
		</c:when>
	</c:choose>

	//다른화보보기 슬라이더
	$('.post-wrapper').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  autoplay: false,
		  prevArrow : "<button type='button' class='slick-prev'></button>",		// 이전 화살표 모양 설정
		  nextArrow : "<button type='button' class='slick-next'></button>"		// 다음 화살표 모양 설정
		});
	
});
</script>
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
<c:if test="${!empty wdStudio}">
<div class="big_title">
</div>
    <div class="ticket-details-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="left-image">
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
                            <div class="det_price9">
	                            <ul>
	                                <li class="dis_price">
	                            		<div class="discount"><c:out value="${wdStudio.sDiscount}" />%</div>
		                                <div class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${wdStudio.sPrice}" /></div>
	                                </li>
	                            </ul>
	                            <div class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdStudio.sPrice * (1-wdStudio.sDiscount*0.01)}" />원</div>
                            </div>
                            <div class="banner">
                                <img src="../resources/images/tour.png" width="100%">
                            </div>
                           
                            <div class="main-dark-button2"><a href="#">이 스튜디오 담기</a></div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-12">
                	<div class="det_navi">
                		<ul>
                			<li><a href=""><c:out value="${wdStudio.sName}" />의 다른 화보 보기</a></li>
                			<li><a href="">이용 후기</a></li>
                		</ul>
                	</div>
                </div>

			    <div class="col-lg-12">
				   <div class="post-slider">
				        <div class="post-wrapper">
				        	<c:forEach var="i" items="${subImg }" varStatus="status">
				          		<div class="post"><img src="../resources/images/studio_det/${i}" alt=""></div>
				            </c:forEach>
				        </div>
					</div>
			    </div>
            </div>
        </div>
    </div>
</c:if>

<form name="bbsForm" id="bbsForm" method="post">
   <input type="hidden" name="dNo" value="${sCode}" />
   <input type="hidden" name="searchType" value="${searchType}" />
   <input type="hidden" name="searchValue" value="${searchValue}" />
   <input type="hidden" name="curPage" value="${curPage}" />
</form>

    
<!-- ############################ 여기까지 내용 끝 ############################ -->
	<!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>