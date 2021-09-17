<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>File upload</title>
</head>
<body>
<h1>
	/webapp/WEB-INF/view/form.jsp
</h1>

	<form action="fileupload?id=${student.id}" method="post" enctype="multipart/form-data">
		<input type="text" name="firstName" value="${student.firstName}">
		<input type="file" name="uploadfile">
		<input type="submit" value="SEND">	
	</form>

</body>
</html>
