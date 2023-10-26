<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style type="text/css">

 { box-sizing: border-box; }

body div{ 
	text-align: center;
}

.slider {
    width: 100%;                                 
    overflow: hidden;
    position: relative;
}
.slide {
    float: left;
    width: 100%;
    position: relative;
}
img {
    width:50%;
    height: 200px; 
                                                           
}
     
</style>
</head>
<body>
 <div class="slider">
     <div class="slide">
         <img src="/img/gadiantasle_banner.jpg" alt="이미지 1">
     </div>
     <div class="slide">
         <img src="/img/LineageW_banner.jpg" alt="이미지 2">
     </div>
     <div class="slide">
         <img src="/img/sintop_banner.jpg" alt="이미지 3">
     </div>
   </div>
<script src="/js/home.js"></script>
</body>
</html>