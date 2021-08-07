<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8000/mo/result.do" method="post" enctype="multipart/form-data">
	<input type="file" name="img" value="${deep1.img}">
	<input type="submit" value="확인"/>
</body>
</html>