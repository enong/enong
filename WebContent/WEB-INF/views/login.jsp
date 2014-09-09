<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<title>注册</title>
		<script type="text/javascript">
			function myReload() {
				document.getElementById("CreateCheckCode").src = "${ctx}/servlet/PictureCheckCode?"
						+ Math.random();
			}
		</script>
	</head>

	<body>

		<div class="col-md-4">
			<form id="loginForm" action="${ctx}/login" method="post" class="form-horizontal" role="form">
				<div class="form-group">
					<label for="email">
						手机/邮箱
					</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="手机/邮箱" check-type="mail required" required-message="请输入登录邮箱">
				</div>


				<div class="form-group">
					<label for="password">
						密码
					</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="密码" check-type="required" required-message="请输入登录密码">
				</div>

				<div class="form-group">
					<div class="col-sm-8 col-sm-offset-2">
						<button onclick="login()" class="btn btn-primary btn-block" type="button">
							登录
						</button>
					</div>
				</div>
			</form>
		</div>
<div class="col-md-4 Line"></div>
	</body>
</html>
