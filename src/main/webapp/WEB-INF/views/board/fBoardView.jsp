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
	
	
	<c:if test="${boardMe eq 'Y'}">
	$("#btnUpdate").on("click", function(){
		document.bbsForm.action = "/board/fUpdateForm";
		document.bbsForm.submit();
	});
	
	$("#btnDelete").on("click", function(){
		if(confirm("정말 삭제 하시겠습니까?") == true)
		{
			//정말 삭제하겠다고 했을 때, ajax 통신
			$.ajax({
				type:"POST",
				url:"/board/delete",
				data:
				{
					bSeq: <c:out value="${wdFBoard.bSeq}" />
				},
				datatype:"JSON",
				beforeSend:function(xhr){
					xhr.setRequestHeader("AJAX", "true");
				},
				success:function(response){
					if(response.code == 0)
					{
						alert("게시물이 삭제되었습니다.");
						location.href = "/board/fBoard";
					}
					else if(response.code == 400)
					{
						alert("파라미터 값이 올바르지 않습니다.");
						//이동할 필요 없음
					}
					else if(response.code == 404)
					{
						alert("게시물을 찾을 수 없습니다.");
						location.href = "/board/fBoard";
					}
					else if(response.code == 405)
					{
						alert("사용자의 게시물이 아닙니다.");
						location.href = "/board/fBoard";
					}
					else
					{
						alert("게시물 삭제 중 오류가 발생했습니다.");
					}
				},
				complete:function(data){
					icia.common.log(data);
				},
				error:function(xhr, status, error)
				{
					icia.common.error(error);
				}
			});
			
		}
	});	
	</c:if>
	
	
    $("#btnComment").on("click",function(){
  	  
  	  $("#btnComment").prop("disabled", true);// 수정 버튼 비활성화 
  	  
  	  if($.trim($("#wdFBoardComment").val()).length <= 0){
  		  alert("댓글내용을 입력하세요.");
  		  $("#wdFBoardComment").val("");
  		  $("#wdFBoardComment").focus();
  		  $("#btnComment").prop("disabled", false);
  		  return;
  	  }
  	  
  	  var form = $("#commentForm")[0];
   	  var formData = new FormData(form);
   	 
  	  $.ajax({
	            type:"POST",
	            url:"/board/CommentProc",
	            data:formData,
	            processData:false,
	  			contentType:false,
	  		    cache:false,
	  		    timeout:600000,
	            beforeSend:function(xhr){
	               xhr.setRequestHeader("AJAX", "true");
	            },
	            success:function(response){
	               if(response.code == 0)
	               {
	                  alert("댓글이 등록 되었습니다.");
	                  document.bbsForm.action = "/board/fBoardView";
	                  document.bbsForm.submit();
	                  $("#btnComment").prop("disabled", false);
	               }
	               else if(response.code == 400)
	               {
	                  alert("파라미터 값이 올바르지 않습니다.");
	                  $("#btnComment").prop("disabled", false);
	               }
	               else if(response.code == 404)
	               {
	                  alert("게시물을 찾을수 없습니다.");
	                  location.href = "/board/fBoard";
	               }
	               else
	               {
	                  alert("댓글 등록 중 오류가 발생했습니다.");
	                  $("#btnComment").prop("disabled", false);
	               }
	            },
	            complete:function(data){
	               icia.common.log(data);
	            },
	            error:function(xhr, status, error){
	               icia.common.error(error);
	            }
	         });
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
   	  <div class="col-lg-12">
      <table class="table" style="width: 100%;">
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
                  <div>${wdFBoard.regDate}</div>
               </td>
               

         </thead>
         <tbody>
             <tr>
             <!-- 첨부파일은 있을 때만 보여주면 됨 -->
				<c:if test="${!empty wdFBoard.wdBoardFile}">
                <!-- GET방식으로 넘어감 -->
                  &nbsp;&nbsp;&nbsp;<a href="/board/download?bSeq=${wdFBoard.wdBoardFile.bSeq}" style="color:#000;">[첨부파일]${wdFBoard.wdBoardFile.fileOrgName}</a>
                </c:if>
            </tr>
            <tr>
               <td colspan="2" style="text-align:center">
               <div style="padding:10px"><pre><c:out value="${wdFBoard.bContent}" /></pre></div></td>
            </tr>
            <div>
            </div>
         </tbody>
         <form name="commentForm" id="commentForm" method="post">
         <tbody>
            <tr>
               <td colspan="2">
               <textarea class="form-control" rows="3" name="wdFBoardComment" id="wdFBoardComment" style="ime-mode:active;resize: none;" placeholder="댓글을 입력해주세요" required></textarea><br>
               <button type="button" id="btnComment" class="btn btn-secondary">댓글등록</button></td>
            </tr>
			<!-- 댓글 내용이 들어갈 곳 -->
			<c:if test="${!empty commentList}">
            <c:forEach items="${commentList}" var="comment" >
            <tr>
            <td>${comment.wdFBoardComment }</td><td>작성자 : ${comment.uNickName } <br>${comment.regDate }</td>
            </tr>
            </c:forEach>
            </c:if>
         </tbody>
         <input type="hidden" name="bSeq" value="${bSeq}" />
         <input type="hidden" name="searchType" value="${searchType}" />
         <input type="hidden" name="searchValue" value="${searchValue}" />
         <input type="hidden" name="curPage" value="${curPage}" />
         </form>
         <tfoot>
         <tr>
         <td colspan="2">
         
         </td>
         </tr>
         <tr>
               	<td colspan="2">
         <c:if test="${boardMe eq 'Y'}">
               		<button type="button" id="btnDelete" class="w-btn w-btn-red">삭제</button>
         </c:if>
               		<button type="button" id="btnList" class="w-btn w-btn-green2" style="float: right">리스트</button>
         <c:if test="${boardMe eq 'Y'}">
               		<button type="button" id="btnUpdate" class="w-btn w-btn-green" style="margin-right: 10px;">수정</button>
         </c:if>      	
               	</td>
         </tr>
         </tfoot>
      </table>
      </div>
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