<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flask Test</title>
</head>

<body>
<h1>hello</h1>
<form action="http://localhost:8000/mo/result.do" method="post" enctype="multipart/form-data">
	<input type="file" name="img"/>
	<input type="hidden" name="id" value="${id}">
	<input type="submit" value="확인"/>
</form>
</body>
</html>