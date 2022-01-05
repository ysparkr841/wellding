<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(".modal-content").load("/specialist");
</script>
</head>
<body>

<div id="modal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog"> 
		<div class="modal-content">내용여기있을거임</div> 
	</div> 
</div>



<div class="card align-middle"> 
	<div class="card-title"> 
		<h2 class="card-title text-center">Login</h2>
	</div> 
	<div class="card-body">
		<form method="post"> 
			<h5 class="form-signin-heading">Sign in</h5>
			<label class="sr-only">Your ID</label>
			<input type="text" id="uid" class="form-control" placeholder="ID" required autofocus><BR>
			<label class="sr-only">Password</label>
			<input type="password" class="form-control" placeholder="Password" required><br>
			<div class="checkbox"> 
				<label>
					<input type="checkbox" value="remember-me"> remember me 
				</label>
			</div> 
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sing in</button>
		</form> 
	</div>
</div>

</body>
</html>