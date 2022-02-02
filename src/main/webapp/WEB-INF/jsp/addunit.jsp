<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<h2>Unit Form</h2>
	</div>
    <form action="<%= request.getContextPath() %>/unit/add" method="post">
        <div class="row">
               
               
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="name" class="control-label">Unit Name</label>
                        <input type="text" class="form-control" name="name" placeholder=" name">
                    </div>
                </div>
        </div>
        
        <div class="row">
             <div class="col-xs-3">
                    <button type="submit" >Submit</button>
                </div>
        </div>
    </form>



</div>

</body>
</html>