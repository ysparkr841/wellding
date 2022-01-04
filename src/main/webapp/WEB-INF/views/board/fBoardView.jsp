<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
.Wtitle{
font-family: 'Gamja Flower', cursive;
font-size: 64px;
text-align: center;
}
</style>
<script>
$(document).ready(function(){
	$("#btnList").on("click", function(){
		document.bbsForm.action = "/board/fBoard";
		document.bbsForm.submit();
	});
});
</script>
</head>
<body>
   	<jsp:include page="/WEB-INF/views/include/navigation.jsp" >
       <jsp:param name="userName" value="${wdUser.userNickname}" />
       </jsp:include>
       
    <div class="page-heading-rent-venue">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
    <br />
    <h2 class="Wtitle">Know-How</h2>
    <p style="text-align:center">여러분들의 노하우를 공유해보세요</p>
    <br />
<div class="container">
   <div class="row" style="margin-right:0; margin-left:0;">
      <table class="table">
         <thead>
            <tr class="table-active dongdong">
               <td scope="col" style="width:60%">
                  <c:out value="${wdFBoard.bTitle}"/>
               </td>
               <td scope="col" style="width:40%" class="text-right">
                                         조회 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${wdFBoard.bReadCnt}" />
               </td>
            </tr>
               <td scope="col" style="width:60%">
               	작성자 : <c:out value="${wdFBoard.userNickname}"/>
               </td>
               <td scope="col" style="width:40%" class="text-right">
                  <div>${fBoard.regDate}</div>
               </td>
         </thead>
         <tbody>
            <tr>
               <td colspan="2" style="text-align:center">
               <div style="padding:10px"><pre><c:out value="${wdFBoard.bContent}" /></pre></div></td>
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

<form name="bbsForm" id="bbsForm" method="post">
   <input type="hidden" name="bSeq" value="${bSeq}" />
   <input type="hidden" name="searchType" value="${searchType}" />
   <input type="hidden" name="searchValue" value="${searchValue}" />
   <input type="hidden" name="curPage" value="${curPage}" />
</form>

 <!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>