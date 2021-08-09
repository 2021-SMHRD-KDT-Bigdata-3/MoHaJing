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
<h1>여기는 체크박스 제대로 출력되는지 확인하는 곳</h1>
${result.no1}<br/>
${result.no2}<br/>
${result.no3}<br/>
${result.no4}<br/>
${result.no5}<br/>
${result.no6}<br/>
${result.no7}<br/>
${result.no8}<br/>
${result.no9}<br/>
${result.no10}<br/>

<form action="${cpath}/checkUpdate.do" method = "post">
<!-- <input type="hidden" name="id" value="test"> -->

	
	



<c:set var="no1" value="${result.no1}"/>
<input type="checkbox" name="no1" <c:if test="${no1 eq '1'}">checked</c:if> >

<input type="checkbox" name="no2" value="1" checked="${result.no2}">질문2<br/>
<input type="checkbox" name="no3" value="1" checked="${result.no3}">질문3<br/>
<input type="checkbox" name="no4" value="1" checked="${result.no4}">질문4<br/>
<input type="checkbox" name="no5" value="1" checked="${result.no5}">질문5<br/>
<input type="checkbox" name="no6" value="1" checked="${result.no6}">질문6<br/>
<input type="checkbox" name="no7" value="1" checked="${result.no7}">질문7<br/>
<input type="checkbox" name="no8" value="1" checked="${result.no8}">질문8<br/>
<input type="checkbox" name="no9" value="1" checked="${result.no9}">질문9<br/>
<input type="checkbox" name="no10" value="1" checked="${result.no10}">질문10<br/>
<input type="hidden" name="no" value="${result.no}">
<input type="submit">
</form>

</body>
</html>