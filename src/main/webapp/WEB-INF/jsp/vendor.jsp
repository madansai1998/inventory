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
     <form action="<%= request.getContextPath() %>/vendor/search" method="post" >
  
    <input type="search" placeholder="Enter keyword " name="keyword" />
   
   <input type="submit" value="Submit" />
  </form>
  </div>
  
  
  <h1> </h1>
  
  
  
   <form name="frm" action="<%= request.getContextPath() %>/vendor/searchid" method="post" onSubmit="return validateForm()" >
  
    
    <input type="search" type="number" placeholder="Enter id " name="id" />
   <input type="submit" value="Submit" />
  </form>
  <h1> </h1>
  
  
  <button onclick="location.href = '/vendor/addinto';" id="myButton" class="submit-button" >ADD VENDOR</button> 
  
   
  
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">VENDOR</h1>
   <table style="border-collapse: collapse; width: 100%; text-align: center;" border="1">
    
    
  <thead>
    <tr style="background-color: #e54826; color: #fff; text-align: center; ">
<th style="width: 10%;">ID</th>
<th style="width: 18%;">NAME</th>
<th style="width: 18%;">TYPE</th>
<th style="width: 18%;">EMAIL ID</th>
<th style="width: 18%;">ADDRESS</th>
<th style="width: 18%;">DELETE</th>
</tr>
</thead>
<tbody>


    
    <c:forEach var="Vendor" items="${Vendors}">
     <tr style="color: #e54826;text-align: center;">
      <td style="width: 10%;">${Vendor.vid} </td>
      <td style="width: 18%;">${Vendor.vname}
      
      
      <form action="<%= request.getContextPath() %>/vendor/editname" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${Vendor.vid}">
     <input type="text" name="name">

  
   <input type="submit" value="Update" />
  </form>
      
      </td>
      
      
      
      
      
      <td style="width: 18%;">${Vendor.vtype}
      <form action="<%= request.getContextPath() %>/vendor/edittype" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${Vendor.vid}">
     <input type="text" name="type">

  
   <input type="submit" value="Update" />
   </form>
    </td>
    
    
    
    
      <td style="width: 18%;">${Vendor.vemail}
      <form action="<%= request.getContextPath() %>/vendor/editemail" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${Vendor.vid}">
     <input type="text" name="email">

  
   <input type="submit" value="Update" />
  </form>
  </td>
  
  
      <td style="width: 18%;">${Vendor.address}
      <form action="<%= request.getContextPath() %>/vendor/editaddress" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${Vendor.vid}">
     <input type="text" name="address">

  
   <input type="submit" value="Update" />
  </form></td>
     
      <td style="width: 18%;"> 
      <form action="<%= request.getContextPath() %>/vendor/delete" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${Vendor.vid}">

  
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