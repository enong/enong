<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<script type="text/javascript">
	function myReload(obj) {
		document.getElementById("CreateCheckCode").src = "${ctx}/servlet/PictureCheckCode?"
				+ Math.random();
	}

	function register() {
		var arg1 = $("#email").val();
		var arg2 = $("#phone").val();
		var arg3 = $("#password").val();
		var arg4 = $("#confirmPassword").val();
		var arg5 = $("#checkCode").val();

		if (arg1 == "" || arg1 == null) {
			alert("请输入邮箱");
			return;
		}

		if (arg2 == "" || arg2 == null) {
			alert("请输入手机号码");
			return;
		}

		if (arg3 == "" || arg3 == null) {
			alert("请输入密码");
			return;
		}

		if (arg4 == "" || arg4 == null) {
			alert("请输入确认密码");
			return;
		}

		if (arg5 == "" || arg5 == null) {
			alert("请输入验证码");
			return;
		}

		if (arg3 != arg4) {
			alert("登录密码和确认密码不相同，请重新输入");
			return false;
		}

		var args = {
			"email" : arg1,
			"phone" : arg2,
			"password" : arg3,
			"checkCode" : arg5
		};

		$.post("${ctx}/user/register", args, function(result) {
			var data = eval("(" + result + ")");
			if (data.code == 0) {
				alert(data.message);
				return false;
			} else {
				window.location.href = "${ctx}/index";
			}
		});

	}
</script>
</head>

<body>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${ctx}/index">首页</a></li>
			<li class="active">注册</li>
		</ol>
		<hr/>
		<form id="registerForm" method="post" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="col-sm-2 control-label"> 邮箱： </label>
				<div class="col-sm-4">
					<input type="email" class="form-control" id="email" name="email" placeholder="邮箱" check-type="mail required" required-message="请输入登录邮箱">
					<span class="help-block">此邮箱可用于登录和订阅特惠信息</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> 手机： </label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="phone" name="phone" placeholder="手机" check-type="phone required">
					<span class="help-block">请正确填写您的手机号码，以便及时确认信息</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> 密码： </label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="password" name="password" placeholder="密码" check-type="required" required-message="登录密码不能为空">
					<span class="help-block">6至20位字符或数字组成，不能含有&%;()<>+等字符</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> 确认密码： </label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="确认密码" check-type="required">
					<span class="help-block">请再次输入密码</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> 验证码： </label>
				<div class="col-sm-4">
					<input name="checkCode" type="text" class="form-control" id="checkCode" placeholder="验证码" />
					<span class="help-block">请输入验证码</span>
				</div>

			</div>

			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<img src="${ctx}/servlet/PictureCheckCode" id="CreateCheckCode"> <a href="javascript:myReload()">&nbsp;&nbsp;&nbsp;&nbsp;看不清，换一个</a>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button onclick="register()" class="btn btn-success btn-block" type="button">同意条款并注册</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>
