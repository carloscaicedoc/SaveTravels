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



<div class="col-5 offset-2 pt-5">
<h2 class="text-primary">Edit Expense</h2>
<form:form action="/expenses/edit/${expense.id}" method="put" modelAttribute="expense">
  <div class="mb-2">
    <form:label path="expenseName" class="form-label">Expense Name</form:label>
    <form:errors path="expenseName" class="alert alert-danger"/>
    <form:input path="expenseName" type="text" class="form-control"/>
  </div>
  <div class="mb-2">
    <form:label path="vendor" class="form-label">Vendor</form:label>
    <form:errors path="vendor" class="alert alert-danger"/>
    <form:input path="vendor" type="text" class="form-control"/>
  </div>
  <div class="mb-2">
    <form:label path="amount" class="form-label">Amount</form:label>
    <form:errors path="amount" class="alert alert-danger"/>
    <form:input path="amount" type="number" step="0.01" class="form-control"/>
  </div>
  <div class="mb-3">
    <form:label path="description" class="form-label">Description</form:label>
    <form:errors path="description" class="alert alert-danger"/>
    <form:textarea path="description" class="form-control"/>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
</body>
</html>

