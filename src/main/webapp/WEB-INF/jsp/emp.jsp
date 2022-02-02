<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

<script>
function validateForm()
{
    if(document.frm.id.value=="")
    {
    	document.frm.id.value=0;
      
      return document.frm.id.value=0;
    }
 
}
</script>

<style>

th, td {
  padding-top: 10px;
  padding-bottom: 20px;

}
</style>



</head>
<body>

<h1 style="background-color: #e54826; color: #fff; text-align: center;"><span style="color: #ffffff;"><a style="color: #ffffff;" href="/home">HOME</a></span></h1>
<p>&nbsp;</p>
 
   
   <div class="col-xs-6 form-group">
     <form action="<%= request.getContextPath() %>/employ/search" method="post" >
  
    <input type="search" placeholder="Enter keyword " name="keyword" />
   
   <input type="submit" value="Submit" />
  </form>
  </div>
  
  
  <h1> </h1>
  
  
  
   <form name="frm" action="<%= request.getContextPath() %>/employ/searchid" method="post" onSubmit="return validateForm()" >
  
    
    <input type="search" type="number" placeholder="Enter id " name="id" />
   <input type="submit" value="Submit" />
  </form>
  <h1> </h1>
  
  
  <button onclick="location.href = '/employ/addemp';" id="myButton" class="submit-button" >ADD EMPLOYEE</button> 
  
   
  
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">EMPLOYEE</h1>
   <table style="border-collapse: collapse; width: 100%; text-align: center;" border="1">
    
    
  <thead>
    <tr style="background-color: #e54826; color: #fff; text-align: center; ">
<th style="width: 12.5%;">ID</th>
<th style="width: 12.5%;">NAME</th>
<th style="width: 12.5%;">ROLE</th>
<th style="width: 12.5%;">EMAIL ID</th>
<th style="width: 12.5%;">ADDRESS</th>
<th style="width: 12.5%;">USER ID</th>
<th style="width: 12.5%;">PASSWORD</th>
<th style="width: 12.5%;">DELETE</th>
</tr>
</thead>
<tbody>


    
    <c:forEach var="employee" items="${employees}">
     <tr style="color: #e54826;text-align: center;">
      <td style="width: 10%;">${employee.eid} </td>
      <td style="width: 18%;">${employee.ename}
      
      
      <form action="<%= request.getContextPath() %>/employ/editname" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="name">

  
   <input type="submit" value="Update" />
  </form>
      
      </td>
      
      
      
      
      
      <td style="width: 18%;">${employee.erole}
      <form action="<%= request.getContextPath() %>/employ/editrole" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="role">

  
   <input type="submit" value="Update" />
   </form>
    </td>
    
    
    
    
      <td style="width: 18%;">${employee.eemail}
      <form action="<%= request.getContextPath() %>/employ/editemail" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="email">

  
   <input type="submit" value="Update" />
  </form>
  </td>
  
  
      <td style="width: 18%;">${employee.eaddress}
      <form action="<%= request.getContextPath() %>/employ/editaddress" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="address">

  
   <input type="submit" value="Update" />
  </form></td>
     
      <td style="width: 18%;">${employee.euserid}
      <form action="<%= request.getContextPath() %>/employ/edituserid" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="userid">

  
   <input type="submit" value="Update" />
  </form></td>
  
      <td style="width: 18%;">${employee.epass}
      <form action="<%= request.getContextPath() %>/employ/editpass" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">
     <input type="text" name="pass">

  
   <input type="submit" value="Update" />
  </form></td>
      <td style="width: 18%;"> 
      <form action="<%= request.getContextPath() %>/employ/delete" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${employee.eid}">

  
   <input type="submit" value="delete"  />
  </form><td>
  
           </tr>
    </c:forEach>
    </tbody>
    
   </table>
   
   
 


<script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>

</html>