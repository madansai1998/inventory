<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
 
 <h1 style="background-color: #e54826; color: #fff; text-align: center;"><span style="color: #ffffff;"><a style="color: #ffffff;" href="/index">HOME</a></span></h1>
<p>&nbsp;</p>
  <h1>Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/employ/add" method="post">
   <table style="with: 80%">
    <tr>
    
    <tr>
     <td>NAME</td>
     <td><input type="text" name="ename" /></td>
    </tr>
    <tr>
     <td>ROLE</td>
     <td><input type="text" name="erole" /></td>
    </tr>
    <tr>
     <td>EMAIL</td>
     <td><input type="text" name="eemail" /></td>
    </tr>
    <tr>
     <td>ADDRESS</td>
     <td><input type="text" name="eaddress" /></td>
    </tr>
    <tr>
     <td>USER ID</td>
     <td><input type="text" name="euserid" /></td>
    </tr>
    <tr>
     <td>PASSWORD</td>
     <td><input type="text" name="epass" /></td>
    </tr>
    
   </table>
   <input type="submit" value="SUBMIT" />
  </form>
 </div>
</body>
</html>