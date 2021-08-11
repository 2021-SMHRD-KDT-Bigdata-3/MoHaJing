<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="${cpath}/resources/img/favicon.png"
	type="image/png">
<title>毛어떄</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${cpath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${cpath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/animate-css/animate.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/jquery-ui/jquery-ui.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/popup/magnific-popup.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/swiper/css/swiper.min.css">
<link rel="stylesheet"
	href="${cpath}/resources/vendors/scroll/jquery.mCustomScrollbar.css">
<!-- main css -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css?after">
<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet"/>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
</head>
<body>
	<input type="text" id="message" />
	<input type="button" id="sendBtn" value="submit"/>
	<div id="messageArea"></div>
</body>
<script type="text/javascript">
	$("#sendBtn").click(function() {
		sendMessage();
		$('#message').val('')
	});

	let sock = new SockJS("https://localhost:8443/mo/echo/");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	// 메시지 전송
	function sendMessage() {
		sock.send($("#message").val());
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		$("#messageArea").append(data + "<br/>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");

	}
</script>
</html>