<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${cpath}/joinTry.do" method="post">
	<input type="text" name="id">
	<input type="text" name="pw">
	<input type="text" name="name">
	<input type="text" name="gender">
	<input type="text" name="age">
	<input type="text" name="checknum">
	<input type="submit">
</form>
</body>
</html>