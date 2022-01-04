<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	<c:choose>
		<c:when test="${empty wdMakeup}">
			alert("조회하신 상품이 존재하지 않습니다.");
			document.bbsForm.action = "/hsdm/makeUp";
			document.bbsForm.submit();
		</c:when>
	</c:choose>
});

function fn_view(mCode)
{
	document.bbsForm.mCode.value = mCode;
	document.bbsForm.searchType.value = $("#_searchType").val();
	document.bbsForm.searchValue.value = $("#_searchValue").val();
	document.bbsForm.action = "/hsdm/makeupView";
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
<c:if test="${!empty wdMakeup}">
<div class="big_title">
</div>

    <div class="ticket-details-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-image">
                        <img src="../resources/images/makeup/${wdMakeup.mImgName}" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="com_detail9">
                        <div class="right-content2">
                            <h4><c:out value="${wdMakeup.mName}" /></h4>
                            <span><c:out value="${wdMakeup.mContent}" /></span>
                            <ul  class="loc_li">
			                    <li><i class="fa fa-map-marker"></i> <c:out value="${wdMakeup.mLocation}" /></li>
			                    <li><p style="margin-right:7px">Tel.</p><p style="font-weight:700"><c:out value="${wdMakeup.mNumber}" /></p></li>
			                </ul>
                            <div class="det_price9">
	                            <ul>
	                                <li class="dis_price">
	                            		<div class="discount"><c:out value="${wdMakeup.mDiscount}" />%</div>
		                                <div class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${wdMakeup.mPrice}" /></div>
	                                </li>
	                            </ul>
	                            <div class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdMakeup.mPrice * (1-wdMakeup.mDiscount*0.01)}" />원</div>
                            </div>
                            <div class="banner3">
                                <img src="../resources/images/vip.png" width="100%">
                            </div>
                           <!---- 추가인원계산할때 쓸거-->
                            <div class="quantity-content">
                                <div class="left-content">
                                    <h6>메이크업 추가인원 (1인당)</h6>
                                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${wdMakeup.mPlus}" />원</p>
                                </div>
                                <div class="right-content">
                                    <div class="quantity buttons_added">
                                        <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                                    </div>
                                </div>
                            </div>
                            <!-- 추가인원 ---->
                            <div class="main-dark-button2"><a href="#">이 메이크업샵 담기</a></div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-12">
                	<div class="det_navi">
                		<ul>
                			<li><a href="">웰딩 추천 메이크업샵</a></li>
                			<li><a href="">이용 후기</a></li>
                		</ul>
                	</div>
                </div>
                

            </div>
        </div>
    </div>
</c:if>

<form name="bbsForm" id="bbsForm" method="post">
   <input type="hidden" name="mCode" value="${mCode}" />
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