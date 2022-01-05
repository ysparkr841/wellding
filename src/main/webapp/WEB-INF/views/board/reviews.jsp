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

function fn_view(bSeq)
{
	document.bbsForm.bSeq.value = bSeq;
	//searchType, searchValue는 안가져가나요?
	//조회 버튼을 안눌렀다면 굳이 가져갈 필요가 없음
	//조회 버튼을 눌렀다면 히든 타입 bbsForm에는 이미 값이 들어가 있음
	document.bbsForm.action = "/board/fBoardView";
	document.bbsForm.submit();
}

//페이지 이동에 대한 버튼 처리
function fn_list(curPage)
{
	document.bbsForm.bSeq.value = "";
	document.bbsForm.curPage.value = curPage;
	document.bbsForm.action = "/board/fBoard";
	document.bbsForm.submit();
}

</script>

</head>
<body>
    <jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
    </jsp:include>


<!-- ***** About Us Page ***** -->
    <div class="page-heading-rent-venue2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
    </div>

    <div class="shows-events-schedule2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <div class="category2">
                            <!-- h2>wellding Free Board</h2 -->
                            <p>Reviews</p>
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
                                <div class="search-box">
                                    <form id="subscribe" action="" method="get">
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="search-heading">
                                                    <h4> 검색 조건이 있으신가요? </h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <select value="searchType" name="searchTypeR" id="searchTypeR">
                                                            <option value="">조회 항목</option>
                                                            <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>닉네임</option>
                                                            <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>제목</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" name="searchValueR" id="searchValueR" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <fieldset>
                                                        <button type="button" id="btnSearch" class="main-dark-button2">검색</button>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            
	                        <div class="col-lg-12">
								<div class="row">
									<div class="col-lg-6">
										<iframe width="100%" height="315" src="https://www.youtube.com/embed/rzZGx72ogRM" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									</div>
									<div class="col-lg-6">
										<iframe width="100%" height="315" src="https://www.youtube.com/embed/JbD7DfPKFw8" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>									
									</div>
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
                                        <div class="col-lg-1">
                                            <div class="title" style="text-align: center;">                                                
                                                <span>번호</span>
                                            </div>
                                        </div>
                                        <div class="col-lg-5" style="text-align: center;">
                                            <div class="time"><span>내용</span></div>
                                        </div>
                                        <div class="col-lg-2" style="text-align: center;">
                                            <div class="place"><span>작성자</span></div>
                                        </div>
                                        <div class="col-lg-2" style="text-align: center;">
                                            <div class="place"><span>작성시간</span></div>
                                        </div>
                                        <div class="col-lg-2" style="text-align: center;">
                                            <div class="main-dark-button">
                                                <span>조회수</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                
                              <c:forEach var="fboard" items="${list}" varStatus="status">                                
                                <li>
                                	<a href="javascript:void(0)" onclick="fn_view(${fboard.bSeq})">
	                                    <div class="row">
	                                        <div class="col-lg-1">
	                                            <div class="title">
	                                                <span>${fboard.bSeq}</span>
	                                            </div>
	                                        </div>
	                                        
	                                        <div class="col-lg-5" style="text-align: left;">
	                                            <div class="time"><span>${fboard.bTitle}</span></div>
	                                        </div>
	                                        <div class="col-lg-2">
	                                            <div class="place"><span>${fboard.userNickname}</span></div>
	                                        </div>
	                                        <div class="col-lg-2">
	                                            <div class="place"><span>${fboard.regDate}</span></div>
	                                        </div>
	                                        <div class="col-lg-1">
	                                        </div>
	                                        <div class="col-lg-1">
	                                            <div class="place">
	                                                <span>${fboard.bReadCnt}</span>
	                                            </div>
	                                        </div>
	                                    </div>
                                	</a>
                                </li>
                                
                              </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                
                   <div class="tickets-page2">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="search-box2">
                                    <form id="subscribe" action="" method="get">
                                        <div class="row">
                                            <div class="col-lg-5">
                                            </div>
                                            <div class="col-lg-7">
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                    </div>
                                                    <div class="col-lg-6">
                                                    </div>
                                                    <div class="col-lg-3">

                                                        <button type="button" id="btnWrite" class="main-dark-button3">글쓰기</button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                           </div>
                         
                    
                <div class="col-lg-12">
                    <div class="pagination">
                    
                        <ul>
                        	<c:if test="${!empty paging}">
                        		<c:if test="${paging.prevBlockPage gt 0}">
	                            	<li><a href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">Prev</a></li>
	                        	</c:if>
	                        </c:if>
	                        
	                        
	                        <c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
	                        	<c:choose>
	                        		<c:when test="${i ne curPage}">
	                            		<li><a href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
	                            	</c:when>
	                            	<c:otherwise>
	                            		<li class="active"><a href="javascript:void(0)" style="cursor: default;">${i}</a></li>
	                            	</c:otherwise>
                        		</c:choose>
                        	</c:forEach>	

							<c:if test="${paging.nextBlockPage gt 0}">
	                            <li><a href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">Next</a></li>
	                        </c:if>    
                        </ul>
                        
                    </div>
                        <div class="boxing">
                        <br>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <form name="bbsForm" id="bbsForm" method="post">
        <input type="hidden" name="bSeq" value="" /> <!-- 상세페이지 들어갈때 필요하니까 그때만 이 값이 들어가면됨 -->
        <input type="hidden" name="searchType" value="${searchType}" />
        <input type="hidden" name="searchValue" value="${searchValue}" />
        <input type="hidden" name="curPage" value="${curPage}" />
    </form>


<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>