<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/admin/add" method="post">
   <table style="with: 80%">
    <tr>
    
    <tr>
     <td>NAME</td>
     <td><input type="text" name="name" /></td>
    </tr>
    <tr>
     <td>ROLE</td>
     <td><input type="text" name="email" /></td>
    </tr>
    <tr>
     <td>EMAIL</td>
     <td><input type="text" name="userid" /></td>
    </tr>
    <tr>
     <td>ADDRESS</td>
     <td><input type="text" name="password" /></td>
    </tr>
  
    
   </table>
   <input type="submit" value="SUBMIT" />
  </form>

</body>
</html>