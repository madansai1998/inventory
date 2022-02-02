<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>




<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

  <button onclick="location.href = '/unit/addunit';" id="myButton" class="submit-button" >ADD UNIT</button> 
 
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">Unit Form</h1>
	<table
		style="border-collapse: collapse; width: 100%; text-align: center;"
		border="1">


		<thead>
			<tr
				style="background-color: #e54826; color: #fff; text-align: center;">
				<th style="width: 20%;">ID</th>
				<th style="width: 20%;">UNIT NAME</th>
				
			
			</tr>
		</thead>
		<tbody>



			<c:forEach var="unit" items="${units}">
				<tr style="color: #e54826; text-align: center;">
					<td style="width: 20%;">${unit.u_id}</td>
					<td style="width: 20%;">${unit.unit_name}</td>
					
							
							
							

				</tr>
			</c:forEach>
		</tbody>

	</table>
	




	<script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>