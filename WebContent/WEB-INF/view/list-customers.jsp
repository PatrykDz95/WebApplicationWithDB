<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>

<html>
<head>
<title>List Customers</title>

	<!-- reference our style sheet -->
	
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"/>
		
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM-Customer relationship manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<table>
				<tr>
					<th>FirstName</th>
					<th>Lastname</th>
					<th>Email</th>
					
					<c:forEach var="tempCustomer" items="${customers}">
					
					<tr>
						<td> ${tempCustomer.firstName}</td>
						<td> ${tempCustomer.lastName}</td>
						<td> ${tempCustomer.email}</td>
						
					</tr>		
					
					</c:forEach>
				</tr>
			</table>
		
		</div>
	</div>

</body>
</HTML>