<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Check Out</title>
	<style type="text/css">
		table { border: 0; }
		table td { padding: 10px; }
	</style>
	
	<meta name="description" content="Test">
    <meta name="author" content="Quoc Huy">
    <meta name="keywords" content="">
    
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
</head>
<body>
<div align="center">
	<h1>Check Out</h1>
	<br/>
	<form action="${pageContext.request.contextPath }/authorize_payment" method="post">
	<table>
		<input type="hidden" name="product_id" value="1" />
		<tr>
			<td>Product name:</td>
			<td><input type="text" name="product_name" value="course 1" /></td>
		</tr>
		<tr>
			<td>Invoice no:</td>
			<td><input type="text" name="invoice_no" value="123456789" /></td>
		</tr>
		<tr>
			<td>Sub Total:</td>
			<td><input type="text" name="product_price" value="50" /></td>
		</tr>
		<tr>
			<td>Shipping:</td>
			<td><input type="text" name="shipping" value="10" /></td>
		</tr>	
		<tr>
			<td>Tax:</td>
			<td><input type="text" name="tax" value="10" /></td>
		</tr>		
		<tr>
			<td>Total Amount:</td>
			<td><input type="text" name="amount" value="70" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="Checkout" />
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>