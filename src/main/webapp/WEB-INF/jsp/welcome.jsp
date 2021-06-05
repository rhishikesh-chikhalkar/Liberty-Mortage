<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<h2>Welcome</h2>


<table border="1px">
	<tr>
		<th>Id</th>
		<th>first_name</th>
		<th>last_name</th>
		<th>email</th>
		<th>mobile_number</th>
		<th>password</th>
		<th>bank_account_number</th>
		<th>pan_number</th>
		<th>address</th>
		<th>Action</th>
	</tr>
	
<c:forEach var="e" items="${list}">	
	<tr>
		<td>${e.id}</td>
		<td>${e.first_name}</td>
		<td>${e.last_name}</td>
		<td>${e.email}</td>
		<td>${e.mobile_number}</td>
		<td>${e.password}</td>
		<td>${e.bank_account_number}</td>
		<td>${e.pan_number}</td>
		<td>${e.address}</td>
		<td>
			<a href="">Edit</a>
			<a href="deleteemp/${e.id}">Delete</a>
		</td>
	</tr>
</c:forEach>	
</table>