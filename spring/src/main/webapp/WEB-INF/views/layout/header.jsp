<!DOCTYPE html>
<html lang="ko">
<head>
<title>SPRING WEB</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- style sheet -->
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&family=Song+Myung&display=swap" rel="stylesheet">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- security -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!-- script -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="/js/main.js" defer></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<body>

	<nav class="navbar">
		<div class="nav_logo">
			<a href="/">
				<h1>I ♥ SPRING</h1>
			</a>
		</div>

		<ul class="nav_menu">
			<c:choose>
				<c:when test="${empty principal}">
					<li><a href="/auth/loginForm">로그인</a></li>
					<li><a href="/auth/joinForm">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/board">게시판</a></li>
					<li><a href="/user/member">마이페이지</a></li>
<!-- 					<li><a href="/logout">로그아웃</a></li> -->
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>

	<!-- toggle button -->
	<button class="toggle_btn">
		<i class="fa fa-navicon"></i>
	</button>