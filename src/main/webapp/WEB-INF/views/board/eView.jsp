<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
 	<%@ include file="/WEB-INF/views/include/head.jsp" %>
 	
<script>

</script> 	
</head>
<body>
	  <%@ include file="/WEB-INF/views/include/navigation.jsp" %>

<section class="top">
	<div class="back"></div>
</section>

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Event</h2>
                    <!-- span>Check out upcoming and past shows & events and grab your ticket right now.</span -->
                </div>
            </div>
        </div>
    </div>   

	<div class="tickets-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="search-box" id="search-box">
                        <form id="subscribe" action="" method="get">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="search-heading">
                                        <h4>이벤트를 검색합니다</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <select value="searchType" name="_searchType" id="_searchType">
                                            	<option value="">조회 항목</option>
                                                <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>제목</option>
                                                <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>내용</option>
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
                        <h2><!-- Event --></h2>
                    </div>
                </div>

		   <!-- Product section-->
        <section class="py-5">
        <c:forEach var="eboard" items="${eBoard}" varStatus="status">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><a href="javascript:void(0)" onclick="fn_view(${eboard.eBSeq})"><</a>
                    <img class="card-img-top mb-5 mb-md-0"  src="/resources/board/${eboard.eBImgName}" />
                    </div>
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder">${eboard.eBTitle}</h1>
                        <p class="lead">${eboard.eBContent}</p>
                    </div>
                </div>
            </div>
      	</c:forEach>
        </section>
        
        <form name="eBoardForm" id="eBoardForm" method="post">
			<input type="hidden" name="eBSeq" value="${eBSeq}" />
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>
    </div>

	  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>