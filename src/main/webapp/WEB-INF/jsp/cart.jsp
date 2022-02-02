<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">






<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

<Style >

@media print {
     body {font: 12pt georgia,serif;}
     h1 {font-size: 18pt;}
     h2 {font-size: 15pt; color: #000;}
}
</Style>






<script>

function getDateTime() {
        var now     = new Date(); 
        var year    = now.getFullYear();
        var month   = now.getMonth()+1; 
        var day     = now.getDate();
        var hour    = now.getHours();
        var minute  = now.getMinutes();
        var second  = now.getSeconds(); 
        if(month.toString().length == 1) {
             month = '0'+month;
        }
        if(day.toString().length == 1) {
             day = '0'+day;
        }   
        if(hour.toString().length == 1) {
             hour = '0'+hour;
        }
        if(minute.toString().length == 1) {
             minute = '0'+minute;
        }
        if(second.toString().length == 1) {
             second = '0'+second;
        }   
        var dateTime = year+'/'+month+'/'+day+' '+hour+':'+minute+':'+second;   
         return dateTime;
    }

    // example usage: realtime clock
    setInterval(function(){
        currentTime = getDateTime();
        document.getElementById("digital-clock").innerHTML = currentTime;
    }, 1000);

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
      
      <li class="nav-item  ">
        <a class="nav-link" href="/product/pro">Product List</a>
      </li>
      
      <li class="nav-item active ">
        <a class="nav-link" href="/cart/data">Cart</a>
      </li>
      
    </ul>
  </div>
</nav>

 
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">Cart Form</h1>
	<table id="myTable"
		style="border-collapse: collapse; width: 100%; text-align: center;"
		border="1">


		<thead>
			<tr
				style="background-color: #e54826; color: #fff; text-align: center;">
				<th style="width: 20%;">ID</th>
				<th style="width: 20%;">PRODUCT ID</th>
				<th style="width: 20%;">PRODUCT NAME</th>
				<th style="width: 20%;">PRICE</th>
				<th style="width: 20%;">QUANTITY</th>
		
			
				<th style="width: 20%;">TOTAL PRICE</th>
			</tr>
		</thead>
		<tbody>



			<c:forEach var="cartItem" items="${CartItems}">
				<tr style="color: #e54826; text-align: center;">
					<td style="width: 20%;">${cartItem.cid}</td>
					<td style="width: 20%;">${cartItem.pid}</td>
					<td style="width: 20%;">${cartItem.pname}</td>
					<td style="width: 20%;">${cartItem.pprice}</td>
					<td style="width: 20%;">${cartItem.quantity}</td>
					<td  style="width: 20%;">${cartItem.total_price}</td>
					
					
					
      <td><form action="<%= request.getContextPath() %>/cart/getprice" method="post" >
    
    
    
    
     <input type="hidden" name="id" value="${cartItem.cid}">
     

  
   <input type="submit" value="Get Total Price" />
  </form>
					
					</td>
					
					


				</tr>
			</c:forEach>
		</tbody>

	</table>
	<h1 style=" text-align: right;"> <span id="val"></span></right></h1>
	
	 <script>
            
            var table = document.getElementById("myTable"), sumVal = 0;
            
            for(var i = 1; i < table.rows.length; i++)
            {
                sumVal = sumVal + parseInt(table.rows[i].cells[5].innerHTML);
            }
            
            document.getElementById("val").innerHTML = "Total bill amount = " + sumVal;
            console.log(sumVal);
            
        </script>

        
     
	

<h4 style=" text-align: right;"><a title="Print Screen" alt="Print Screen" onclick="window.print();"    target="_blank" style="cursor:pointer;"> <button>TAKE BILL</button></a></h4>

<div id="digital-clock"></div>
	<script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>