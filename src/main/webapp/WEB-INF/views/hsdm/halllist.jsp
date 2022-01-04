<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
	
	<script>
	//리스트에서 리스트 다시 조회하지?
	 $(document).ready(function(){
	   $("#form-submit").on("click", function(){
	      //조회버튼 눌렀을때: 조회항목, 조회값, 현재 커런트페이지에대한 정보를 가져가야함
	      document.hallForm.WHCode.value = "";
	      document.hallForm.HCode.value = "";
	      document.hallForm.searchType.value = $("#_searchType").val();
	      document.hallForm.searchValue.value = $("#_searchValue").val();
	      document.hallForm.curPage.value = 1;   //현재 내가 3페이지였는데 조회를 하면 페이지수는 가져가지 않아. 페이지는 어떻게될지 모르자나 그래서 조회했다 싶으면 무조건1로 넣는거야. 페이지가 몇개일지 모르자나
	      document.hallForm.action = "/hsdm/halllist";
	      document.hallForm.submit();
	      
	   });
	   

	});

	
   function fn_view(whCode, hCode)
   {
      document.hallForm.WHCode.value = whCode;
      document.hallForm.HCode.value = hCode;
      document.hallForm.action = "/hsdm/HallView";  
      document.hallForm.submit();
   }   
	   
	function fn_list(curPage)
	{
       document.hallForm.WHCode.value = "";
       document.hallForm.HCode.value = "";
	   document.hallForm.curPage.value = curPage;
	   document.hallForm.action = "/hsdm/halllist";
	   document.hallForm.submit();
	}
	</script>
</head>   
<body>
	<!-- 메뉴바 시작 -->
    	<jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    	<jsp:param name="userName" value="${wdUser.userNickname }" />
    	</jsp:include>
	<!-- 메뉴바 종료 -->
<!-- ############################ 여기부터 내용 시작 ############################ -->

<section class="top">
	<div class="back"></div>
</section>

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>WEDDING HALL</h2>
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
                                        <h4> 웨딩홀 이름 또는 홀 이름으로 검색해 보세요.</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
									         <select name="_searchType" id="_searchType">
									            <option value="">조회 항목</option>
									            <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>웨딩홀 이름</option>
									            <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>홀 이름</option>
									         </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="button" id="form-submit" class="main-dark-button">Submit</button>
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
                        <h2>Wedding Hall</h2>
                    </div>
                </div>
                
<c:if test="${!empty list }">
	<c:forEach var="wdHall" items="${list}" varStatus="status">          
                <div class="col-lg-4" onclick="fn_view('${wdHall.WHCode}', '${wdHall.HCode}')">
                    <div class="ticket-item">
                        <div class="thumb3">
                            <img src="../resources/images/hallrepimage/${wdHall.HImgName }" alt="">
                        </div>
                        <div class="down-content">
                        	<div class="sd_title">${wdHall.HName}</div>
                            <ul>
                                <li class="sd_adress"><i class="fa fa-map-marker"></i>${wdHall.WHLocation }</li>
                            </ul>
                                <div class="sd_detail_hall">${wdHall.HContent}</div>
                            <ul>    
                                <!-- <li class="price">550,000원</li> -->
                                <li class="dis_price"><span class="discount"></span> <span class="dis-price">${wdHall.HPrice}원</span></li>
                            </ul>
                            <div class="main-dark-button">
                                <a href="javascript:void(0)" onclick="fn_view('${wdHall.WHCode}', '${wdHall.HCode}')">홀 자세히보기</a>
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
							   <c:if test="${paging.prevBlockPage gt 0}"> <!-- 페이징의 프리뷰블럭이 0보다 크냐 -->
							         <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">Prev</a></li>
							   </c:if>
							    <c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
							       <c:choose>
							          <c:when test="${i ne curPage}"> <!-- eq:같다 en:다르다 -->
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
    </div>
   <form name="hallForm" id="hallForm" method="post">
      <input type="hidden" name="WHCode" value="" /> 
      <input type="hidden" name="HCode" value="" /> 
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