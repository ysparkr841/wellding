<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	<c:choose>
	   <c:when test="${empty wdFBoard}">
	   alert("해당게시물이 존재하지 않습니다.");
	   location.href = "/board/fBoard";
	   </c:when>

	   <c:otherwise>
	   //게시물이 존재하면
	   $("#bTitle").focus();
	   
	   $("#btnUpdate").on("click", function(){
	      $("#btnUpdate").prop("disabled", true); //수정버튼 비활성화
	      
	      if($.trim($("#bTitle").val()).length <= 0)
	      {
	         //0이라는 말임
	         alert("제목을 입력하세요.");
	         $("#bTitle").val("");
	         $("#bTitle").focus();
	         $("#btnUpdate").prop("disabled",false);
	         return;
	      }
	      
	      /*
	      if( $.trim($("#bTitle").val()) == $.trim($("#oldTitle").val()) )
	      {
	    	  alert("제목을 변경해주세요.");
	         $("#bTitle").val("");
	         $("#bTitle").focus();
	         $("#btnUpdate").prop("disabled",false);
	         return;
	      }
	      */
	      
	      if($.trim($("#bContent").val()).length <= 0)
	      {
	         alert("내용을 입력하세요");
	         $("#bContent").val("");
	         $("#bContent").focus();
	         $("#btnUpdate").prop("disabled",false);
	         return;
	      }
	      
	      /*
	      if( $.trim($("#bContent").val()) == $.trim($("#oldContent").val()) )
	      {
	    	  alert("내용을 변경해주세요.");
	         $("#bTitle").val("");
	         $("#bTitle").focus();
	         $("#btnUpdate").prop("disabled",false);
	         return;
	      }
	      */
	      
	      var form = $("#updateForm")[0];
	      var formData = new FormData(form);
	      
	      $.ajax({
	         type: "POST",
	         enctype: 'multipart/form-data',
	         url: "/board/updateProc",
	         data: formData, //폼으로 보내겠단 말임
	         processData: false,    //formData를 String으로 변환하지 않음
	         contentType: false,    //content-type헤더가 multipart/form-data로 전송
	         cache: false,
	         timeout: 600000,
	         beforeSend: function(xhr)
	         {
	            xhr.setRequestHeader("AJAX", "true");
	         },
	         success: function(response)
	         {
	            if(response.code == 0)
	            {
	               alert("게시물이 수정되었습니다.");
	               document.bbsForm.action = "/board/fBoard";
	               document.bbsForm.submit();
	            }
	            else if(response.code == 400)
	            {
	               alert("파라미터값이 잘못되었습니다.");
	               $("#btnUpdate").prop("disabled", false); //수정버튼 활성화
	            }
	            else if(response.code == 401)
	            {
	               //내 게시물이 아니야
	               alert("해당 사용자의 게시물이 아닙니다.");
	               location.href = "/board/fBoard";
	            }
	            else if(response.code == 404)
	            {
	               //수정해야되는데 게시물이 없어
	               alert("게시물을 찾을 수 없습니다.");
	               location.href = "/board/fBoard";
	            }
	            else
	            {
	               //500번 여기야 여기
	               alert("게시물 수정 중 오류가 발생했습니다.");
	               $("#btnUpdate").prop("disabled", false); //수정버튼 활성화
	            }
	         },
	         error: function(error)
	         {
	            icia.common.error(error);
	            alert("게시물 수정 중 오류가 발생하였습니다.");
	            $("#btnUpdate").prop("disabled", false); //수정버튼 활성화
	         }
	      });
	   });
	   
	   //파일만 삭제
	   $("#btnFileDelete").on("click", function(){
	      $("#btnFileDelete").prop("disabled", true); //수정버튼 비활성화
	      
	      $.ajax({
	         type: "POST",
	         url: "/board/deleteFileProc",
	         data: {
	            bSeq: <c:out value="${wdFBoard.bSeq}"/>
	         },
	         datatype: "JSON",
	         beforeSend: function(xhr)
	         {
	            xhr.setRequestHeader("AJAX", "true");
	         },
	         success: function(response)
	         {
	            if(response.code == 0)
	            {
	               alert("첨부파일이 삭제되었습니다.");
	               $("#fileNameSpan").text("");
	            }
	            else if(response.code == 400)
	            {
	               alert("파라미터 값이 잘못되었습니다.");
	               $("#btnFileDelete").prop("disabled", false); //수정버튼 활성화
	            }
	            else if(response.code == 401)
	            {
	               //내 게시물이 아니야
	               alert("해당 사용자의 첨부파일이 아닙니다.");
	               location.href = "/board/list";
	            }
	            else if(response.code == 404)
	            {
	               //수정해야되는데 게시물이 없어
	               alert("게시물을 찾을 수 없습니다.");
	               location.href = "/board/list";
	            }
	            else
	            {
	               //500번 여기야 여기
	               alert("첨부파일 삭제 중 오류가 발생했습니다.");
	               $("#btnFileDelete").prop("disabled", false); //수정버튼 활성화
	            }
	         },
	         error: function(error)
	         {
	            icia.common.error(error);
	            alert("첨부파일 삭제 중 오류가 발생하였습니다.");
	            $("#btnFileDelete").prop("disabled", false); //수정버튼 활성화
	         }
	      });
	   });   
	   
		   
	   </c:otherwise>
	</c:choose>
	   });


</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
</jsp:include>


<div class="page-heading-rent-venuefW">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
</div>
<div class="shows-events-scheduleW">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <div class="category2">
                            <h2>Sharing your experiences</h2>
                            <p>Update</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="row" id="divB">

	<div class="col-lg-1">
	</div>
	<div class="col-lg-10">
	
		<div class="containerfW">
		   <h2></h2>
		   <form name="updateForm" id="updateForm" method="post" enctype="multipart/form-data">
		      <div class="row">
		      	<div class="col-lg-6">
			      <input type="text" name="userName" id="userName" maxlength="20" value="${wdUser.userNickname}" style="ime-mode:active;" class="form-control mb-2 nickInput" placeholder="" readonly />		      	
		      	</div>
		      	<div class="col-lg-6">
			      <input type="text" name="userEmail" id="userEmail" maxlength="30" value="${wdUser.userEmail}" style="ime-mode:inactive;" class="form-control mb-2 emailInput" placeholder="" readonly />		      	
		      	</div>
		      </div>
		      
		      
		      <input type="text" name="bTitle" id="bTitle" maxlength="100" style="ime-mode:active;" class="form-control mb-2" placeholder="제목을 입력해주세요." required value="${wdFBoard.bTitle}" /> 
		      <div class="form-group">
		         <textarea class="form-control" rows="10" name="bContent" id="bContent" style="ime-mode:active;" placeholder="내용을 입력해주세요" required>${wdFBoard.bContent}</textarea>
		      </div>
		      <input type="file" name="hiBbsFile" id="hiBbsFile" class="form-control mb-2" placeholder="파일을 선택하세요." required />
		      	<c:if test="${!empty wdFBoard.wdBoardFile}">
			      <div style="margin-bottom:0.3em;">[첨부파일 : <span id="fileNameSpan">${wdFBoard.wdBoardFile.fileOrgName}</span>]&nbsp;
			      
			      <button type="button" id="btnFileDelete" class="w-btn w-btn-red">삭제</button>
			      
			      </div>
				</c:if>
		      <div class="form-group row">
		         <div class="col-sm-12">
		            <button type="button" id="btnList" class="w-btn w-btn-green2" title="리스트">리스트</button>
		            <button type="button" id="btnUpdate" class="w-btn w-btn-green" title="저장">저장</button>
		         </div>
		      </div>
		      
		      <!-- div class="row">
			      <div class="col-lg-6">
			      	<div class="fileButton">
			      	  <!-- class="form-control mb-2" >
			      	  <label class="w-btn-outline w-btn-skin" for="hiBbsFile">
			      	  	파일을 선택해주세요
			      	  </label>
				      <input type="file" id="hiBbsFile" name="hiBbsFile" class="form-control mb-2"  placeholder="파일을 선택하세요." required style="/*display: none;*/"/>		      
			      	</div>
			      </div>
			      <div class="col-lg-6">
			      </div>		      
		      </div-->
		      <br>
			<input type="hidden" name="bSeq" value="${wdFBoard.bSeq}" />
		    <input type="hidden" name="searchType" value="${searchType}" />
		    <input type="hidden" name="searchValue" value="${searchValue}" />
		    <input type="hidden" name="curPage" value="${curPage}" />
		      
		    <input type="hidden" name="oldTitle" id="oldTitle" value="${wdFBoard.bTitle}">
		    <input type="hidden" name="oldContent" id="oldContent" value="${wdFBoard.bContent}">
			

		   </form>

			<form name="bbsForm" id="bbsForm" method="post">
			   <input type="hidden" name="bSeq" value="${wdFBoard.bSeq}" />
			   <input type="hidden" name="searchType" value="${searchType}" />
			   <input type="hidden" name="searchValue" value="${searchValue}" />
			   <input type="hidden" name="curPage" value="${curPage}" />
			</form>

		</div>
			
	</div>
	<div class="col-lg-1">
	</div>
</div>


<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>