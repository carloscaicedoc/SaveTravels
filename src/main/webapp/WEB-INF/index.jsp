<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Safe Travels</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="container bg-light">
<div class="col-7 offset-2 mt-3 ms-5">
	<h1 class="text-primary mb-3 ps-2">SAVE TRAVELS</h1>
	<table class="table table-striped border border-rounded border-3 rounded border-secondary mb-5">
    	<thead class="bg-warning text-dark">
        	<tr>
            	<th>Expense</th>
            	<th>Vendor</th>
            	<th>Amount</th>           		
            	<th colspan="2">Actions</th>           		
        	</tr>
    	</thead>
    	<tbody class="bg-light">
    		<c:forEach var="expense" items="${ expenses }">
    			<tr>	
    				<td><a href="/expenses/${expense.id}"><c:out value="${ expense.expenseName }"></c:out></a></td>
    				<td><c:out value="${ expense.vendor }"></c:out></td>
    				<td>$<c:out value="${ expense.amount }"></c:out></td>   			
    				<td><a href="/expenses/edit/${ expense.id }">Edit</a></td>
    				<td>
    					<form action="/expenses/delete/${expense.id}" method="post">
							<input type="hidden" name="_method" value="delete" />
							<input class="btn btn-danger btn-sm" type="submit" value="Delete">
						</form>
    				
    				</td>   			
    			</tr>
    			
    		</c:forEach>
    	</tbody> 
    </table>      
</div>
<div class="col-5 offset-2">
	<h2 class="text-primary">Add Expense</h2>
	<form:form action="/expenses/new" method="POST" modelAttribute="expense">
  		<div class="mb-2">
    		<form:label path="expenseName" class="form-label">Expense Name</form:label>
    		<form:errors path="expenseName"/>
    		<form:input path="expenseName" type="text" class="form-control"/>
  		</div>
  		<div class="mb-2">
    		<form:label path="vendor" class="form-label">Vendor</form:label>
    		<form:errors path="vendor"/>
   			<form:input path="vendor" type="text" class="form-control"/>
  		</div>
  		<div class="mb-2">
    		<form:label path="amount" class="form-label">Amount</form:label>
    		<form:errors path="amount"/>
    		<form:input path="amount" type="number" step="any" class="form-control"/>
  		</div>
  		<div class="mb-3">
    		<form:label path="description" class="form-label">Description</form:label>
    		<form:errors path="description"/>
    		<form:textarea path="description" class="form-control"/>
  		</div>
  		<button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
</body>
</html>

