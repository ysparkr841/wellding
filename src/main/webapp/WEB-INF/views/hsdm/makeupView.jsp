<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	//증감버튼
	var count = 0;
		
	if(count < 0)
	{
		$(".minus").prop("disabled", true);
	}
	else
	{
		$(".minus").prop("disabled", false);
		
		$(".minus").on("click", function(){
			count --;
			$("#quantity").val(count);
		});
		$(".plus").on("click", function(){
			count ++;
			$("#quantity").val(count);
		});
	}
});
function fn_view_st(sCode)
{
	document.bbsForm_studio.sCode.value = sCode;
	document.bbsForm_studio.action = "/hsdm/studioView";
	document.bbsForm_studio.submit();
} 

function fn_view(dNo)
{
	document.bbsForm_dress.dNo.value = dNo;
	document.bbsForm_dress.searchType.value = $("#_searchType").val();
	document.bbsForm_dress.searchValue.value = $("#_searchValue").val();
	document.bbsForm_dress.action = "/hsdm/dressView";
	document.bbsForm_dress.submit();
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
                                        <div class="quantity buttons_added">
		                                    <input type="button" value="-" class="minus"><input type="number" step="1" min="0" max="" name="quantity" id="quantity" value="0" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
		                                </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 추가인원 ---->
                            <div class="main-dark-button2"><a href="#">이 메이크업샵 담기</a></div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-12">
                	<div class="det_navi3">
                		<ul>
                			<li><a href="">스튜디오 추천받기</a></li>
                		</ul>
                	</div>
                </div>
                
                <!-- 랜덤 스튜디오 추가 -->
<c:if test="${!empty studioRandom}">        
	<c:forEach var="wdStudio" items="${studioRandom}" varStatus="status">
               	<div class="col-lg-4">
                    <div class="ticket-item2" onclick="fn_view_st('${wdStudio.sCode}')" style="cursor:pointer">
                        <div class="thumb_ss">
                            <img src="../resources/images/studio/${wdStudio.sImgname}" alt="">
                        </div>
                        <div class="down-content dtbox">
                        	<div class="sd_title_ss"><c:out value="${wdStudio.sName}" /></div>
                            <ul>
                                <li class="dis_price2"><span class="discount2"><c:out value="${wdStudio.sDiscount}" />%</span> <span class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdStudio.sPrice * (1-wdStudio.sDiscount*0.01)}" />원</span></li>
                            </ul>
                        </div>
                    </div>
               	</div>    
     </c:forEach>
</c:if>
                <!-- 랜덤스튜디오 추가 끝 -->
				<div class="col-lg-12">
                	<div class="det_navi3">
                		<ul>
                			<li><a href="">드레스 추천받기</a></li>
                		</ul>
                	</div>
                </div>
                <!-- 랜덤 드레스 추가 -->
<c:if test="${!empty dressRandom}">        
	<c:forEach var="wdDress" items="${dressRandom}" varStatus="status">
               	<div class="col-lg-3">
                    <div class="ticket-item2" onclick="fn_view('${wdDress.dNo}')" style="cursor:pointer">
                        <div class="thumb1">
                            <img src="../resources/images/dress/${wdDress.dImgname}" alt="">
                        </div>
                        <div class="down-content dtbox">
                        	<div class="sd_title3">[<c:out value="${wdDress.dcName}" />] <c:out value="${wdDress.dName}" /></div>
                            <ul>
                                <li class="dis_price2"><span class="discount2"><c:out value="${wdDress.dDiscount}" />%</span> <span class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdDress.dPrice * (1-wdDress.dDiscount*0.01)}" />원</span></li>
                            </ul>
                        </div>
                    </div>
               	</div>    
     </c:forEach>
</c:if>
                <!-- 랜덤드레스 추가 끝 -->            

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

<form name="bbsForm_studio" id="bbsForm_studio" method="post">
   <input type="hidden" name="sCode" value="${sCode}" />
   <input type="hidden" name="searchType" value="${searchType}" />
   <input type="hidden" name="searchValue" value="${searchValue}" />
   <input type="hidden" name="curPage" value="${curPage}" />
</form>

<form name="bbsForm_dress" id="bbsForm_dress" method="post">
   <input type="hidden" name="dNo" value="${dNo}" />
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