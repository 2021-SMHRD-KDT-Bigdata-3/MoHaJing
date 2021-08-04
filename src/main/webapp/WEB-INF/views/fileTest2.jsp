<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>여기는 아이디랑 이미지 띄우는 테스트 웹페이지 공간</div>
<div>로그인한 아이디 : ${vo.id}</div>
<div>업로드한 이미지 : <img src="${cpath}/resources/deepImg/${vo.img}">  </div>
</body>
</html>