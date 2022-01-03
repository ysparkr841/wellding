<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	$("#btnList").on("click", function(){
		document.bbsForm.action = "/board/nBoard";
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
    <br /><h2 style="text-align:center">공지사항</h2><br />

<div class="container">
   <div class="row" style="margin-right:0; margin-left:0;">
      <table class="table">
         <thead>
            <tr class="table-active">
               <th scope="col" style="width:60%">
                  <c:out value="${nBoard.bTitle}"/>&nbsp;&nbsp;
               </th>
               <th scope="col" style="width:40%" class="text-right">
                                         조회 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${nBoard.bReadCnt}" />
               </th>
            </tr>
               <th scope="col" style="width:60%">
               <c:out value="${nBoard.adminId}"/>&nbsp;&nbsp;&nbsp;
               </th>
               <th scope="col" style="width:40%" class="text-right">
                  <div>${nBoard.regDate}</div>
               </th>
         </thead>
         <tbody>
            <tr>
               <td colspan="2"><pre><c:out value="${nBoard.bContent}" /></pre></td>
            </tr>
         </tbody>
         <tfoot>
         <tr>
               <td colspan="2"><button type="button" id="btnList" class="btn btn-outline-secondary" style="float: right">리스트</button></td>
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