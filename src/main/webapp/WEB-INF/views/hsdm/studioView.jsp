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
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2><span>[드레스]</span> <c:out value="${wdStudio.sName}" /></h2>
            </div>
            <div class="col-lg-8 _detail">
                <span><c:out value="${wdStudio.sContent}" /></span>
            </div>
            <div class="col-lg-4">
                <ul  class="loc_li">
                    <li><i class="fa fa-map-marker"></i> <c:out value="${wdStudio.sLocation}" /></li>
                    <li><c:out value="${wdStudio.sNumber}" /></li>
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
                        <img src="../resources/images/studio/${wdStudio.sImgname}" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="com_detail">
                        <div class="right-content">
                            <h4><c:out value="${wdStudio.sName}" /></h4>
                            <span><c:out value="${wdStudio.sContent}" /></span>
                            <div class="det_price">
	                            <ul>
	                                <li class="dis_price">
	                            		<div class="discount"></div>
		                                <div class="price"></div>
	                                </li>
	                            </ul>
	                            <div class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${wdStudio.sPrice}" /></div>
	                           
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
                
              <!-- 같은 샵 다른상품 보기 시작 -->
               	<!-- 드레스 3짜리로*4개 만들거임 -->
               	<!-- 01 -->
               	<div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb1">
                            <img src="../resources/images/studio_det/${wdStudio.sCode}_01.jpg" alt="">
                        </div>
                        <div class="down-content dtbox">
                        	<div class="sd_title3">[<c:out value="${wdStudio.sName}" />] <c:out value="${wdStudio.sName}" /></div>
                            <ul>
                                <li class="dis_price2"><span class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdStudio.sPrice}" />원</span></li>
                            </ul>
                        </div>
                    </div>
               	</div>    
			<!-- 같은 샵 다른상품 보기 끝 -->
            </div>
        </div>
    </div>
</c:if>

<form name="bbsForm" id="bbsForm" method="post">
   <input type="hidden" name="sCode" value="${sCode}" />
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