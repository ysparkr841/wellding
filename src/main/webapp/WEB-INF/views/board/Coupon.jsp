<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>

<script>
$(document).ready(function(){
	$("#btnSearch").on("click", function(){
		//새로 조회버튼을 누를 때에는 신규로 넣은 값을 가져가야 함.
		document.bbsForm.bSeq.value = "";
		document.bbsForm.searchType.value = $("#searchTypeR").val();
		document.bbsForm.searchValue.value = $("#searchValueR").val();
		//조회를 했을 때 무조건 1페이지로 가야 함. 결색 결과가 몇페이지까지 나올지 모르니깐
		document.bbsForm.curPage.value = 1;
		document.bbsForm.action = "/board/fBoard";
		document.bbsForm.submit();
	});
	
	$("#btnWrite").on("click",function(){
		document.bbsForm.bSeq.value = "";
		document.bbsForm.action = "/board/fBoardWrite";
		document.bbsForm.submit();
	});

});

</script>

</head>
<body>


<!-- ***** About Us Page ***** -->


    <div class="shows-events-schedule2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <div class="category2">
                            <!-- h2>wellding Free Board</h2 -->
                            <p>내 쿠폰</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>        

                <div class="tickets-page2">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="search-box" id="subscribe">
                                </div>
                            </div>                            
                            
                        </div>
                    </div>
                </div>

                <div class="shows-events-schedule2">
                    <div class="container">
                        <div class="row">
						
                        <div class="col-lg-12">
                            <ul >

                                <li>
                                    <div class="row">

                                        <div class="col-lg-3" style="text-align: center;">
                                            <div class="time"><span>쿠폰 명</span></div>
                                        </div>
                                        <div class="col-lg-4" style="text-align: center;">
                                            <div class="place"><span>쿠폰 내용</span></div>
                                        </div>
                                        <div class="col-lg-3" style="text-align: center;">
                                            <div class="place"><span>할인가</span></div>
                                        </div>
                                        <div class="col-lg-2" style="text-align: center;">
                                                <div class="status" ><span>사용여부</span></div>
                                        </div>
                                    </div>
                                </li>
                                
                              <c:forEach var="coupon" items="${list}" varStatus="status">                                
                                <li>
	                                    <div class="row">
	                                        <div class="col-lg-3">
	                                            <div class="time"><span>${coupon.cName}</span></div>
	                                        </div>
	                                        <div class="col-lg-4">
	                                            <div class="place"><span>${coupon.cContent}</span></div>
	                                        </div>
	                                        <div class="col-lg-3">
	                                            <div class="place"><span>${coupon.cPrice}</span></div>
	                                        </div>
	                                        <div class="col-lg-2">
	                                        <c:if test="${coupon.cStatus eq 'Y'}">
	                                            <div class="place">
	                                                <span>사용 완료</span>
	                                            </div>
	                                        </c:if>
	                                        <c:if test="${coupon.cStatus eq 'N'}">
	                                            <div class="place">
	                                                <span>사용 가능</span>
	                                            </div>
	                                        </c:if>
	                                        </div>
                                </li>
                                
                              </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tickets-page2" id="leezxc">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="search-box2">

                                </div>
                            </div>
                            
                           </div>
                           <button type="button" id="closebtn" class="btn btn-secondary" onclick="self.close();">닫기</button>
                   <div class="tickets-page2">
                    <div class="container">                         
                    
                <div class="col-lg-12">

                        <div class="boxing">
                        <br>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>