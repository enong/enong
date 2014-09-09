<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
</head>
<body>
	<div id="carousel-promotion" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-promotion" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-promotion" data-slide-to="1"></li>
			<li data-target="#carousel-promotion" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${ctx}/static/images/a.png" alt="...">
				<div class="carousel-caption">...</div>
			</div>
			<div class="item">
				<img src="${ctx}/static/images/a.png" alt="...">
				<div class="carousel-caption">...</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-promotion" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span></a> 
		<a class="right carousel-control" href="#carousel-promotion" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span></a>
	</div>

</body>
</html>