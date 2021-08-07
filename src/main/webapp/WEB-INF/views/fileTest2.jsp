<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="${cpath}/check.do" method = "post">
<input type="hidden" name="id" value="test"> 
<input type="checkbox" name="" value="">질문1<br/>
<input type="checkbox" name="" value="">질문2<br/>
<input type="checkbox" name="" value="">질문3<br/>
<input type="checkbox" name="" value="">질문4<br/>
<input type="checkbox" name="" value="">질문5<br/>
<input type="checkbox" name="" value="">질문6<br/>
<input type="checkbox" name="" value="">질문7<br/>
<input type="checkbox" name="" value="">질문8<br/>
<input type="checkbox" name="" value="">질문9<br/>
<input type="checkbox" name="" value="">질문10<br/>
<input type="submit">
</form>




</body>
</html>