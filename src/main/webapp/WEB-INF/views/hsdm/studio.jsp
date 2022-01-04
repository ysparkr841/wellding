<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	//조회버튼클릭. 조회항목,조회값,현재커런트페이지에 대한 정보 가져가기
	$("#btnSearch").on("click", function(){
		document.bbsForm.sCode.value = "";
		document.bbsForm.searchType.value = $("#_searchType").val();
		document.bbsForm.searchValue.value = $("#_searchValue").val();
		document.bbsForm.curPage.value = 1;
		document.bbsForm.action = "/hsdm/studio";
		document.bbsForm.submit();
	});
	
});

function fn_view(sCode)
{
	document.bbsForm.sCode.value = sCode; //실행하면 bbsForm 안에 <input type="hidden" name="hiBbsSeq" value="" />의 value에 값이 들어가게됨
	document.bbsForm.action = "/hsdm/studioView";	//서치타입과 서치밸유는 이미 들어가있으니까(위에서 설정) 넣을 필요없음
	document.bbsForm.submit();
}     

function fn_list(curPage)
{
   document.bbsForm.sCode.value = "";
   document.bbsForm.curPage.value = curPage;
   document.bbsForm.action = "/hsdm/studio";
   document.bbsForm.submit();
}

$('.post-wrapper').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
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
                                            <select value="searchType" name="_searchType" id="_searchType">
                                            	<option value="">조회 항목</option>
                                                <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>스튜디오명</option>
                                                <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>지역</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="button" id="btnSearch" class="main-dark-button">Submit</button>
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
                        <h2><!-- Studio --></h2>
                    </div>
                </div>
<c:if test="${!empty list}">        
	<c:forEach var="wdStudio" items="${list}" varStatus="status">
                <div class="col-lg-4">
                    <div class="ticket-item">
                        <div class="thumb">
                            <img src="../resources/images/studio/${wdStudio.sImgname}" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title"><c:out value="${wdStudio.sName}" /></div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i><c:out value="${wdStudio.sLocation}" /></li>
                            </ul>
                                <div class="sd_detail"><c:out value="${wdStudio.sContent}" /></div>
                            <ul>    
                                <li class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${wdStudio.sPrice}" />원</li>
                                <li class="dis_price2"><span class="discount2"><c:out value="${wdStudio.sDiscount}" />%</span> <span class="dis-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${wdStudio.sPrice * (1-wdStudio.sDiscount*0.01)}" />원</span></li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="javascript:void(0)" onclick="fn_view('${wdStudio.sCode}')">스튜디오 예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>       
	</c:forEach>
</c:if>             
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
				<c:if test="${!empty paging}">
					<c:if test="${paging.prevBlockPage gt 0}">                         
                            <li><a  class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">Prev</a></li>
					</c:if>
				    <c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
				    	<c:choose>
				    		<c:when test="${i ne curPage}">
    		         		<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
							</c:when>
							<c:otherwise>
											<li class="page-item active"><a class="page-link" href="javascript:void(0)" style="cursor:default;">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				 	<c:if test="${paging.nextBlockPage gt 0}">        
         					<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">Next</a></li>
					</c:if>
				</c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
		<form name="bbsForm" id="bbsForm" method="post">
			<input type="hidden" name="sCode" value="" /> <!-- 상세페이지 들어갈때 필요하니까 그때만 이 값이 들어가면됨 -->
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>

    </div>
    
<!-- ############################ 여기까지 내용 끝 ############################ -->
	<!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>