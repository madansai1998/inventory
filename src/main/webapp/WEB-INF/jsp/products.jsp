<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

 
<jsp:setProperty name="item" property="*" />

<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

<script type="text/javascript">

</script>

</head>
<body>

  
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">IMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/index">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item  active">
        <a class="nav-link" href="/product/pro">Product List</a>
      </li>
      
      <li class="nav-item  ">
        <a class="nav-link" href="/product/addpro">Add Products</a>
      </li>
      
       <li class="nav-item  ">
        <a class="nav-link" href="/cart/data">Cart</a>
      </li>
      
    </ul>
  </div>
</nav>



  
  
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">Product List</h1>
   <table style="border-collapse: collapse; width: 100%; text-align: center;" border="1">
    
    
  <thead>
    <tr style="background-color: #e54826; color: #fff; text-align: center;">
<th style="width: 20%;">ID</th>
<th style="width: 20%;">NAME</th>
<th style="width: 20%;">Desc</th>
<th style="width: 10%;">Quantity</th>
<th style="width: 20%;">Price</th>

<th style="width: 20%;">Add To Cart</th>
</tr>
</thead>


    
    <tbody>

    <c:forEach var="product" items="${product}">
     <tr style="color: #e54826;text-align: center;">
      <td style="width: 20%;">${product.pid}</td>
      <td style="width: 20%;">${product.pname}</td>
      <td style="width: 20%;">${product.pdesc}</td>
      <td style="width: 20%;">${product.qpro}</td>
      <td style="width: 20%;">${product.pprice}</td>
    
         <td style="width: 20%;">
     <!--    <a href="#" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Add To Cart</a>
   -->
 <form action="<%= request.getContextPath() %>/cart/add" method="post" >
      <input type="hidden" name="pid" value="${product.pid}">
     <input type="hidden" name="pname" value="${product.pname}">
     <input type="hidden" name="pprice" value="${product.pprice}">
     
   
     <input type="number" name="quantity" placeholder="quantity">
     
     
     
     
    
   <input type="submit" value="addtocart" />
     </form>
    </td>
    
    

     </tr>
    </c:forEach>
    </tbody>
   </table>



 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>