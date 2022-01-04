<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	<c:choose>
		<c:when test="${empty wdStudio}">
			alert("조회하신 상품이 존재하지 않습니다.");
			document.bbsForm.action = "/hsdm/studio";
			document.bbsForm.submit();
		</c:when>
	</c:choose>


	
});

function fn_view(sCode)
{
	document.bbsForm.sCode.value = sCode;
	document.bbsForm.searchType.value = $("#_searchType").val();
	document.bbsForm.searchValue.value = $("#_searchValue").val();
	document.bbsForm.action = "/hsdm/studioView";
	document.bbsForm.submit();
}



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
			                    <li><p style="margin-right: 7px">Tel.</p><p style="font-weight:700"><c:out value="${wdStudio.sNumber}" /></p></li>
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
                
              <!-- 같은 샵 다른상품 보기 시작,,,, 
               	<div class="col-lg-4">
                       <div class="thumb1">
                           <img src="../resources/images/studio_det/${wdStudio.sCode}_1.jpg" alt="">
                       </div>
               	</div>    
               	
               	<div class="col-lg-4">
                        <div class="thumb1">
                            <img src="../resources/images/studio_det/${wdStudio.sCode}_2.jpg" alt="">
                        </div>
               	</div> 
               	
               	<div class="col-lg-4">
                        <div class="thumb1">
                            <img src="../resources/images/studio_det/${wdStudio.sCode}_3.jpg" alt="">
                        </div>
               	</div> 
			 같은 샵 다른상품 보기 끝 -->
			<!-- 캐러셀도전-->
			<div class="col-lg-12">
				<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
				  <div class="carousel-inner">
				    <div class="carousel-item">
				      <img src="../resources/images/studio_det/${wdStudio.sCode}_1.jpg" class="d-block w-100" alt="...">
				    </div>
				    <div class="carousel-item active">
				      <img src="../resources/images/studio_det/${wdStudio.sCode}_2.jpg" class="d-block w-100" alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="../resources/images/studio_det/${wdStudio.sCode}_3.jpg" class="d-block w-100" alt="...">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
			 <!-- -->

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