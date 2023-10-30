<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
 <div class="slider">
    <div class="slide">
        <img src="/img/banner/gadiantasle_banner.jpg" alt="이미지 1">
    </div>
    <div class="slide">
        <img src="/img/banner/LineageW_banner.jpg" alt="이미지 2">
    </div>
    <div class="slide">
        <img src="/img/banner/sintop_banner.jpg" alt="이미지 3">
    </div>
    <div class="slide">
        <img src="/img/banner/ares_banner.jpg" alt="이미지 3">
    </div>
    <div class="slide">
        <img src="/img/banner/nike_banner.jpg" alt="이미지 3">
    </div>
 </div>
 <div class="login">
 	<ul>
 	<sec:authorize access = "isAnonymous()">
	<li class="login-item">
	 <div  class="login-title">
	 	<a href="/login">Sign in</a>
	 </div>
	</li>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<li class="logout-item">
		 <div class="logout-title"><img alt="" src="/img/profile-30-w.png"></div>
		 	<ol class="logoutsub-menu">
				<li class="logoutsub-menu-item">
				 <div class="logout-name">
				 	<a href="#"><sec:authentication property="name"/>님!</a>
				 </div>
				 <hr>
				</li>
		 		<li class="logout-sub"><a href="/logout">로그아웃</a></li>
		 	</ol>
		</li>
	</sec:authorize>
 	</ul>
 </div>
<script src="/js/main.js"></script>
</body>
</html>