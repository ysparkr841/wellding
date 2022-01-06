<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
      <%@ include file="/WEB-INF/views/include/head.jsp" %>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="../resources/css/regform.css">
<!--===============================================================================================-->
   <script type="text/javascript">
  
   
   $(document).ready(function() {
      
     
	   

   $("#id").focus();
    // 모든 공백 체크 정규식
    var emptCheck = /\s/g;
    // 영문 대소문자, 숫자로만 이루어진 4~12자리 정규식
    var idPwCheck = /^[a-zA-Z0-9]{3,12}$/;

   $("#id").keyup(function(e){

      
  
   if($("#id").val().length  <= 0)
   {
       
       
       $('p').eq(0).text("아이디를 입력해 주세요");
       $('p').eq(0).css('color', 'red');
       $("#id").focus();
       return;
   }
   else if (emptCheck.test($("#id").val())) 
   {
       $('p').eq(0).text("아이디는 공백을 포함할 수 없습니다");
       $('p').eq(0).css('color', 'red');
       $("#id").focus();
       return;
   }
   
   else if (!idPwCheck.test($("#id").val())) 
     {
       $('p').eq(0).text("영문/숫자 4자 이상을 입력해 주세요.");
       $('p').eq(0).css('color', 'red');
       $("#id").focus();
       return;
     }
     else
     {

       $('p').eq(0).text("좋은 아이디 입니다");
       $('p').eq(0).css("color", "green");
       $('p').eq(0).css("font-weight", "700");
       
         return;
     }
     
});

     $("#pwd1").keydown(function(e){

       if($("#pwd1").val().length  <= 0)
   {
       $('p').eq(1).text("비밀번호를 입력해 주세요");
       $('p').eq(1).css('color', 'red');
       $("#pwd1").focus();
       return;

   }

   else if (emptCheck.test($("#pwd1").val())) 
   {
       $('p').eq(1).text("비밀번호는 공백을 포함할 수 없습니다");
       $('p').eq(1).css('color', 'red');
       $("#pwd1").focus();
       return;
   }

   else if (!idPwCheck.test($("#pwd1").val())) 
     {
       $('p').eq(1).text("비밀번호는 영문 대소문자와 숫자로 4~12자리 입니다.");
       $('p').eq(1).css('color', 'red');
       $("#pwd1").focus();
       return;
     }

   
       else 
   {
       $('p').eq(1).text("좋은 비밀번호 입니다");
       $('p').eq(1).css("color", "green");
       $('p').eq(1).css("font-weight", "700");
       
         return;
     }


});

$("#pwd2").keyup(function(){

   var pwd1= $("#pwd1").val();
   var pwd2= $("#pwd2").val();

   if(pwd1 != pwd2)
   {
       $('p').eq(2).text("비밀번호가 일치하지않습니다");
       $('p').eq(2).css('color', 'red');
       $("#pwd2").focus();
       return;
   
   }
   else
   {
       $('p').eq(2).text("비밀번호가 일치합니다");
       $('p').eq(2).css("color", "green");
       $('p').eq(2).css("font-weight", "700");
       
         return;
   }
 
});

$("#name").keyup(function(){

   if($.trim($("#name").val()).length <= 2)
     {
       $('p').eq(3).text("이름을 입력해주세요.");
       $('p').eq(3).css('color', 'red');
        $("#name").focus();
        return;
     }
     else 
     {
         $('p').eq(3).hide();
         return;
     }
   
  
});



   $("#id").keyup(function(){
      
   
      $("#pwd1").val($("#pwd2").val());
      
      $.ajax({
         
         type: "POST",
         url : "/user/idCheck",
         data : {
            userId :$("#id").val()
         },
         datatype : "JSON",
         beforeSend : function(xhr)
         {
             xhr.setRequestHeader("AJAX", "true");
         },
         
         success: function(response)
         {
            if(response.code == 0)
               {
               fn_userReg(); //성공
               }
            else if(response.code == 100)
               {
                $('p').eq(0).text("중복된 아이디입니다.");
                 $('p').eq(0).css('color', 'red');
               }
         
         },
          complete:function(data)
           {
              icia.common.log(data);
           },
           error:function(xhr,status,error)
           {
              icia.common.error(error);
           }
           
      });
   });
   $("#btnReg").on("click",function(){
      
      
       $.ajax({
            type: "POST",
            url: "/user/regProc",
            data:{
               id: $("#id").val(),
               pwd1: $("#pwd1").val(),
               name: $("#name").val(),
               number : $("#number").val(),
               year : $("#year").val(),
               month : $("#month").val(),
               day : $("#day").val(),
               gender : $("#gender").val(),
               nickname : $("#nickname").val(),
               email : $("#email").val()
            },
            datatype: "JSON",
            beforeSend: function(xhr){
               xhr.setRequestHeader("AJAX", "true");
            },
            success: function(response){
               if(response.code == 0)
               {
                  alert("회원가입이 완료되었습니다.");
                  location.href = "/board/login";
               } 
               else if(response.code == 400)
               {
                  alert("회원가입 중 오류가 발생했습니다..");
                  location.href = "/board/regform";
               }
               else if(response.code == 500)
               {
                  alert("회원가입 중 오류가 발생했습니다.");
                  location.href = "/board/regform";
               }
               else
               {
                  alert("오류가 발생했습니다.");
                  $("#id").focus();
               }
            },
            complete: function(data)
            {
               icia.common.log(data);
            },
            error: function(xhr, status, error)
            {
               icia.common.error(error);
            }
       
         });
   

      });
   
   $("#btnCC").on("click", function(){
		 
		 alert("회원가입이 취소되었습니다.");
		 location.href = "/";
		
	   	}); 
   });
   
  
   
function fn_validateEmail(value)
{
  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
  
  return emailReg.test(value);
}
</script>
  
   
</head>
<body>
   
   <div class="join_header">
                  <h1 class="logo"><img src="../resources/images/icons/logo1.png" width="100px" height="90px"/></h1>
                 
   </div>
   <div class="join_form">

      <dl class="join_write">

         <dt>아이디</dt>
         <dd>
            <div class="input">
               <input type="text" id="id" name="id" placeholder="아이디를 입력해 주세요" value=""></div>
               <p class="msg">영문/숫자 4자 이상을 입력해 주세요.</p>
               </dd>
            
               <dt>비밀번호</dt>
               <dd>
                  <div class="input">
               <input type="password" id="pwd1" name="pwd1" placeholder="비밀번호를 입력해 주세요" maxlength="20">

                  </div>
                  <p class="msg">4~16자의 영문 대/소문자, 숫자를 사용하세요.</p>
                  
               </dd>
               <dt>비밀번호 확인</dt>
               <dd>
                  <div class="input">
                     <input type="password" id="pwd2" name="pwd2" placeholder="비밀번호를 다시 한번 입력해 주세요" maxlength="20">
                  </div>
                     <p class="msg">비밀번호를 다시 입력해주세요</p>      
               </dd>
               <dt>이름</dt>
               <dd>
                  <div class="input">
                     <input type="text" id="name" name="name" placeholder="이름을 입력해주세요">
                <p class="msg"></p>
      
                  </div>
                 
               </dd>
            <dt>전화번호</dt>
               <dd>
                  <div class="input">
                     <input type="text" id="number" name="number" placeholder="전화번호를 입력해주세요">
      
                  </div>
                  <p class="msg"></p>
               </dd>
              
               <dt>결혼예정일</dt>
               <dd class="date">
                  <select id="year" class="year">
                     <option>년도</option>
                     <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  
                  
               </select>
               <select id="month" class="month">
                  <option>월</option>
                  <option value="01">1</option>
               <option value="02">2</option>
               <option value="03">3</option>
               <option value="04">4</option>
               <option value="05">5</option>
               <option value="06">6</option>
               <option value="07">7</option>
               <option value="08">8</option>
               <option value="09">9</option>
               <option value="10">10</option>
               <option value="11">11</option>
               <option value="12">12</option>
               </select>
               <select id="day" class="day">
                  <option>일</option>
                  <option value="01">1</option>
               <option value="02">2</option>
               <option value="03">3</option>
               <option value="04">4</option>
               <option value="05">5</option>
               <option value="06">6</option>
               <option value="07">7</option>
               <option value="08">8</option>
               <option value="09">9</option>
               <option value="10">10</option>
               <option value="11">11</option>
               <option value="12">12</option>
               <option value="13">13</option>
               <option value="14">14</option>
               <option value="15">15</option>
               <option value="16">16</option>
               <option value="17">17</option>
               <option value="18">18</option>
               <option value="19">19</option>
               <option value="20">20</option>
               <option value="21">21</option>
               <option value="22">22</option>
               <option value="23">23</option>
               <option value="24">24</option>
               <option value="25">25</option>
               <option value="26">26</option>
               <option value="27">27</option>
               <option value="28">28</option>
               <option value="29">29</option>
               <option value="30">30</option>
               <option value="31">31</option>
               </select>
            </dd>
            
            <dt>성별</dt>
            <dd class="two_selector">
               <label class="selector"><input type="radio" name="gender" id="gender" value="M"><span>남자</span></label>
               <label class="selector"><input type="radio" name="gender" id="gender"  value="F"><span>여자</span></label>
            </dd>
         <dt>닉네임</dt>
         <dd>
            <div class="input">
              <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력해주세요">
            </div>
            <p class="msg"></p>
           
         </dd>
            <dt>이메일</dt>
            <dd>
               <div class="input"><input id="email" name="email" data-bind="email" type="text" placeholder="이메일을 입력해주세요" value=""></div>
<<<<<<< HEAD
               <p class="msg"></p>
=======
               <p class="msg"></p>     
>>>>>>> 99752df3767c7b645b0e21af459eab9b6c6eb488
                 
         <div class="button_area">
      <button class="btn_type" id="btnReg">가입 완료하기</button>
      <button class="btn_type" id="btnCC">취소</button>
      <input type="hidden" id="pwd" name="pwd" value="" />

   
      
         </div>
                     </div>
                  </div>
               </dd>
            </div>
      </dl>
   </div>

   <div class="footer">
      <div class="copyright">COPYRIGHT. WELLDING INC. ALL RIGHTS RESERVED</div>
   </div>

  
   
   

   

</body>
</html>