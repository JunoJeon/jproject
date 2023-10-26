<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>겜피셜</title>
<link rel="stylesheet" href="css/project.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
<script type="text/javascript">

function resize() {
	let iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
}

window.onload = function() {
	
	setInterval(resize, 100);
	
}
</script>
</head>
<body>
<nav class = "nav">
<ul class="menu">
		<li class="menu-logo">
			<div class = "logo-img">
				<a target="content" href="mainhome.jsp">
					<img alt="" src="/img/gs.png">
				</a>
			</div>
			<div id="Gp">
				겜피셜
			</div>
		</li>
		<li class="menu-item">
		<div class="menu-title">게임뉴스</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/pcn.jsp">PC</a></li>
			<li class="sub-menu-item"><a target="content" href="/mobilen.jsp">Mobile</a></li>
			<li class="sub-menu-item"><a target="content" href="/videon.jsp">Video</a></li>
			<li class="sub-menu-item"><a target="content" href="/vrn.jsp">VR</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">PC</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/cube.jsp">게임DB</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/fill">공략</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">스크린샷</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">동영상</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">모바일</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/cube.jsp">게임DB</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/fill">공략</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">스크린샷</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">동영상</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">비디오</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/cube.jsp">게임DB</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/fill">공략</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">스크린샷</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">동영상</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">VR</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/cube.jsp">게임DB</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/fill">공략</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">스크린샷</a></li>
			<li class="sub-menu-item"><a target="content" href="jquery_attr.jsp">동영상</a></li>
		</ol>
	</li>
	<sec:authorize access = "isAnonymous()">
	<li class="menu-item">
	 <div  class="menu-title">
	 	<a href="/login">로그인</a>
	 </div>
	</li>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
	<li class="menu-item">
	 <div class="menu-title"><img alt="" src="/img/profile-30-w.png"></div>
	 	<ol class="sub-menu">
			<li class="sub-menu-item">
			 <div class="login-name">
			 	<a href="#"><sec:authentication property="name"/>님!</a>
			 </div>
			 <hr>
			</li>
	 		<li class="logout-sub"><a href="/logout">로그아웃</a></li>
	 	</ol>
	</li>
	</sec:authorize>
</ul>
</nav>

<iframe src="home.jsp" 
		name="content"
		width="100%"
		scrolling ="no"
		frameborder='0'
		sendbox="allow-same-origin"
		onload="resize()">
iframe 태그를 지원하지 않는 브라우저는 이 글이 보입니다.
</iframe>
</body>
</html>