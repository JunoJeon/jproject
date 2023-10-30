<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<style type="text/css">
@font-face {
    font-family: 'Giants-Inline';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/Giants-Inline.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

section {
	width: 100%;
	justify-content: center;
}

fieldset {
	border-width : 0 0 0 0;
}

input {
	padding : 0.5em;
	margin:auto;
}

.error {
	font-weight: bold;
  	color: red;
  	text-align: center;
  	font-size: 1em;
}
.input {
	position: relative;
	margin: 10px 45%;
	width: 700px;
}

h1 {
	text-align: center;
	font-family: 'Giants-Inline';
}
legend {
	text-align: center;
}

.loginbox {
	position: relative;
	margin: 0 48%;
	
}

#loginbox {
	color : white;
	background: black;
	opacity: 0.5;
}
#id, #pw {
	border-width : 0 0 1px 0;
	outline:none 
}
</style>
</head>
<body>
<section>
	<h1>겜피셜</h1>
	<c:if test="${param.error == ''}">
		<div class="error">사용자 Id 또는 Password를 확인해 주세요</div>
	</c:if>
	<form action="/login" method = "post">
		<fieldset>
			<div class = "input">
				<input id="id" name="username" placeholder="아이디"/>
			</div>
		</fieldset>
		<fieldset>
			<div class = "input">
			<input id="pw" placeholder="비밀번호" type="password" name="password"/>
			</div>
		</fieldset>
		<fieldset>
			<div class = "input loginbox">
			<input type="submit" value="Sign in" id="loginbox">
			</div>
		</fieldset>
	</form>
</section>
</body>
</html>