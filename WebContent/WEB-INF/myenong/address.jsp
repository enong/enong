<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>配送地址</title>
<script type="text/javascript">
$(function(){
	$("#menu_send_address").attr("class","enong-menu-select");
	var crumb = createCrumb('首页','index')+" ﹥ "+createCrumb('我的易侬','myenong')+" ﹥个人设置 ﹥ 配送地址";
	$("#crumb").empty();
	$("#crumb").append(crumb);
});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<span></span>
		</div>
	</div>
</body>
</html>

