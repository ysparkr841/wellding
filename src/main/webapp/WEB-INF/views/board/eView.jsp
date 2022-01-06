<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
 	<%@ include file="/WEB-INF/views/include/head.jsp" %>
 	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
#boardImg{width:100%;}
</style>
<script>
$(document).ready(function(){
	$("#btnList").on("click", function(){
		document.eBoardForm.action = "/board/eBoard";
		document.eBoardForm.submit();
	});
});
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
    
<div class="container">
   <div class="row" style="margin-right:0; margin-left:0;">
      <table class="table">
         <thead>
            <tr class="table-active dongdong2">
               <td scope="col" style="width:60%">
                  <c:out value="${eBoard.eBTitle}"/>
               </td>
               
               <td scope="col" style="width:40%" class="text-right">
                                         조회 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${eBoard.eBReadCnt}" />
               </td>
            </tr>
               <td scope="col" style="width:60%">
               	작성자 : <c:out value="${eBoard.adminId}"/>
               </td>
               <td scope="col" style="width:40%" class="text-right">
                  <div>${eBoard.regDate}</div>
               </td>
         </thead>
         <tbody>
            <tr>
               <td colspan="2" style="text-align:center">
               <div style="padding:10px"><pre><img src="/resources/board/${eBoard.eBImgName}" id="boardImg"><br /><br /><c:out value="${eBoard.eBContent}" /></pre></div></td>
            </tr>
         </tbody>
         <tfoot>
         <tr>
               <td colspan="2"><button type="button" id="btnList" class="w-btn w-btn-green2" style="float: right">리스트</button></td>
         </tr>
         </tfoot>
      </table>
   </div>
</div>

<form name="eBoardForm" id="eBoardForm" method="post">
			<input type="hidden" name="eBSeq" value="" />
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>