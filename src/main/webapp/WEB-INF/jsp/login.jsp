<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>Login</title>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
    	<div class="col-md-6" style="border:2px solid;margin-top:50px;">
    	   <h1>EMPLOYEE LOGIN</h1><br>
    	   <form action="<%= request.getContextPath() %>/employ/login" method="post" >
    			<label class="form-label" for="userid">Enter Your User Name </label>
    				<input name="userid" type="text" class="form-control mb-3" required>
    			<label class="form-label" for="password">Enter Your Password</label>
    				<input name="password" type="password" class="form-control mb-3" required>
    			<button class="btn btn-primary mb-4" type="submit">Login</button>
    			<button class="btn btn-danger mb-4" type="reset">Cancel</button>
    		</form>
    		<p>New User?<a href="/employ/addemp">Sign up</a></p>
    	</div>
    </div>
   </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</body>
</html>