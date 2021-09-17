<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<style type="text/css">
	table { border: 0; }
	table td { padding: 5px; }
</style>

	<meta name="description" content="Review After PayPal">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
	
</head>
<body>
<div align="center">
	<h1>Please Review Before Paying</h1>
	<form action="execute_payment" method="post">
	<table>
		<tr>
			<td colspan="2"><b>Transaction Details:</b></td>
			<td>
				<input type="hidden" name="paymentId" value="${param.paymentId}" />
				<input type="hidden" name="PayerID" value="${param.PayerID}" />
			</td>
		</tr>
		<tr>
			<td>Description:</td>
			<td>${transaction.description}</td>
		</tr>
		<tr>
			<td>Product price:</td>
			<td>${transaction.amount.details.subtotal} USD</td>
		</tr>
		<tr>
			<td>Tax:</td>
			<td>${transaction.amount.details.tax} USD</td>
		</tr>
		<tr>
			<td>Amount:</td>
			<td>${transaction.amount.total} USD</td>
		</tr>	
		<tr><td><br/></td></tr>
		<tr>
			<td colspan="2"><b>Payer Information:</b></td>
		</tr>
		<tr>
			<td>First Name:</td>
			<td>${payer.firstName}</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td>${payer.lastName}</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td>${payer.email}</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" class="btn btn-default" value="Pay Now" />
			</td>
		</tr>		
	</table>
	</form>
</div>
</body>
</html>