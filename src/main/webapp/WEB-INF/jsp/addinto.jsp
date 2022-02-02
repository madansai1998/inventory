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
 <h1 style="background-color: #e54826; color: #fff; text-align: center;"><span style="color: #ffffff;"><a style="color: #ffffff;" href="/home">HOME</a></span></h1>
<p>&nbsp;</p>
  <h1>Vendor Register Form</h1>
  <form action="<%= request.getContextPath() %>/vendor/add" method="post">
   <table style="with: 80%">
    <tr>
    
    <tr>
     <td>NAME</td>
     <td><input type="text" name="vname" /></td>
    </tr>
    <tr>
     <td>VENDOR TYPE</td>
     <td><input type="text" name="vtype" /></td>
    </tr>
    <tr>
     <td>VENDOR EMAIL</td>
     <td><input type="text" name="vemail" /></td>
    </tr>
    <tr>
     <td>ADDRESS</td>
     <td><input type="text" name="address" /></td>
    </tr>
    
   </table>
   <input type="submit" value="SUBMIT" />
  </form>
 </div>
</body>
</html>