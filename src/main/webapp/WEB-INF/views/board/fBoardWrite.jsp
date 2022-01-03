<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	
	//우선 페이지 로딩되었을 때 해당 란에 커서가 가게 해야 함.
	$("#hiBbsTitle").focus();
	
	$("#btnList").on("click",function(){
		document.bbsForm.action = "/board/fBoard";
		document.bbsForm.submit();			
	});
	
	$("#btnWrite").on("click",function(){
		$("#btnWrite").prop("disabled", true);
		//클릭 후 비활성화하기
		//똑같은걸 두번 눌러서 서버에 두 개 들어가는 것을 방지하기 위함.
		//버튼을 빠르게 눌러서 데이터가 db에 두번 들어가는 것을 막음.
		//대신 밑에서 입력값이 올바르지 않은 경우 반드시 버튼을 다시 돌려놔야 함.
		
		if($.trim($("#hiBbsTitle").val()).length <=0 )
		{
			//값이 없음
			alert("제목을 입력하세요.");
			$("#hiBbsTitle").val("");
			$("#hiBbsTitle").focus();
			
			$("#btnWrite").prop("disabled", false);
			return;
		}
		
		if($.trim($("#hiBbsContent").val()).length <=0)
		{
			alert("내용을 입력하세요");
			$("#hiBbsContent").val("");
			$("#hiBbsContent").focus();
			
			$("#btnWrite").prop("disabled", false);
			return;
		}
		
		//ajax 통신으로 갈 것!
		//기존에는 키와 속성을 쌍으로 보냈음. 근데 이제는 form객체를 통으로 보낼 것
		//id가 writeForm이라고 하는 애의 0번째 값 여러개의 writeForm이 있을 수 있으니깐
		var form = $("#writeForm")[0];
		//폼 자체의 타입으로 보내기 위한 객체 생성.
		var formData = new FormData(form);
		
		$.ajax({
			type:"POST",
			enctype:'multipart/form-data',
			url:"/board/writeProc",
			data:formData,
			processData:false,		//formData를 String으로 변환하지 않음
			contentType:false,		//content-type 헤더가 multipart/form-data로 전송한다는 것
			cache:false,
			timeout:600000,
			beforeSend:function(xhr)
			{
				xhr.setRequestHeader("AJAX", "true");
			},
			success:function(response)
			{
				if(response.code == 0)
				{
					alert("게시물이 등록되었습니다.");
					//리스트 페이지로 돌아갈 때는 가져온 값을 가져가야 하지만,
					//글쓰기를 눌렀을 때는, 가져온 값을 가져가면 내가 쓴 글이 안보임
					//그래서 넣어줘서 보내지 않음
					location.href = "/board/fBoard";
				}
				else if(response.code == 400)
				{
					alert("파라미터값이 올바르지 않습니다.");
					//버튼 활성화 처리
					$("#btnWrite").prop("disabled", false);
				}
				else
				{
					alert("게시물 등록 중 오류가 발생했습니다.");
					$("#btnWrite").prop("disabled", false);
				}
			},
			error:function(error)
			{
				icia.common.error(error);
				alert("게시물 등록 중 오류가 발생했습니다. Ajax");
				$("#btnWrite").prop("disabled", false);
			}
		});
		//ajax 통신 끝
	});
	
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
                        <div class="category">
                            <h2>Sharing your experiences</h2>
                            <p>WRITING</p>
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
		   <form name="writeForm" id="writeForm" method="post" enctype="multipart/form-data">
		      <div class="row">
		      	<div class="col-lg-6">
			      <input type="text" name="userName" id="userName" maxlength="20" value="${wdUser.userNickname}" style="ime-mode:active;" class="form-control mb-2" placeholder="" readonly />		      	
		      	</div>
		      	<div class="col-lg-6">
			      <input type="text" name="userEmail" id="userEmail" maxlength="30" value="${wdUser.userEmail}" style="ime-mode:inactive;" class="form-control mb-2" placeholder="" readonly />		      	
		      	</div>
		      </div>
		      
		      
		      <input type="text" name="hiBbsTitle" id="hiBbsTitle" maxlength="100" style="ime-mode:active;" class="form-control mb-2" placeholder="제목을 입력해주세요." required />
		      <div class="form-group">
		         <textarea class="form-control" rows="10" name="hiBbsContent" id="hiBbsContent" style="ime-mode:active;" placeholder="내용을 입력해주세요" required></textarea>
		      </div>
		      <input type="file" id="hiBbsFile" name="hiBbsFile" class="form-control mb-2"  placeholder="파일을 선택하세요." required style="/*display: none;*/"/>		      
		      
		      <div class="form-group row">
		         <div class="col-sm-12">
		            <button type="button" id="btnList" class="w-btn w-btn-green2" title="리스트">리스트</button>
		            <button type="button" id="btnWrite" class="w-btn w-btn-green" title="저장">저장</button>
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

		   </form>
		   <form name="bbsForm" id="bbsForm" method="post">
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