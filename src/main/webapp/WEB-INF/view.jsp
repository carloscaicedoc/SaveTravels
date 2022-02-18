<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Expense</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="container">

<div>
<h1 class="text-primary mt-5">Expense Details</h1>
</div>

<p>Expense Name: <c:out value="${ expense.expenseName }"></c:out></p>
<p>Expense Description: <c:out value="${ expense.description }"></c:out></p>
<p>Vendor: $<c:out value="${ expense.vendor }"></c:out></p>
<p>Amount Spent: <c:out value="${ expense.amount }"></c:out>}</p>

</body>
</html>