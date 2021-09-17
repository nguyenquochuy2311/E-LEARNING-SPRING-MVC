<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Receipt</title>
<style type="text/css">
	table { border: 0; }
	table td { padding: 5px; }
</style>
	<meta name="description" content="Receipt After Confirm Payment">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
	
</head>
<body>
<div align="center">
	<h1>Payment Done. Thank you for purchasing our products</h1>
	<br/>
	<h2>Receipt Details:</h2>
	<table>
		<tr>
			<td><b>Payer:</b></td>
			<td>${payer.firstName} ${payer.lastName}</td>		
		</tr>
		<tr>
			<td><b>Description:</b></td>
			<td>${transaction.description}</td>
		</tr>	
		<tr>
			<td><b>Subtotal:</b></td>
			<td>${transaction.amount.details.subtotal} USD</td>
		</tr>
		<tr>
			<td><b>Tax:</b></td>
			<td>${transaction.amount.details.tax} USD</td>
		</tr>
		<tr>
			<td><b>Total:</b></td>
			<td>${transaction.amount.total} USD</td>
		</tr>						
	</table>
	
	<a href="${url_back }" class="btn btn-default">Go back page</a><br>
</div>
</body>
</html>