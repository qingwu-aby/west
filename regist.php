<!DOCTYPE html>
<!--[if IE 8 ]><html lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!--[if lt IE 9]>
     <meta http-equiv="Refresh" content="0; url=./browser.html" /> 
      <![endif]-->
	<title>注册-陕西省影视产业管理平台系统</title>
	<link rel="shortcut icon" type="image/x-icon" href="./images/ico.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link type="text/css" rel="stylesheet" href="./css/reset.css" />
	<link type="text/css" rel="stylesheet" href="./css/regist.css" />
</head>

<body>
	<header>
		<span class="header-title">注册-陕西省影视产业管理平台系统</span>
	</header>
	<div class="main">
		<div class="main-left">
			<div class="regist-title">填写注册信息</div>
			<form class="form">
				<span>公司账号：</span><input id="user" type="text" class="input" placeholder="用户名" /></br>
				<span>输入密码：</span><input id="pass" type="password" class="input" placeholder="密码" /></br>
				<span>确认密码：</span><input id="pass_two" type="password" class="input" placeholder="确认密码" /></br>
				<span>公司名称：</span><input id="name" type="text" class="input" placeholder="公司名称" /></br>
				<span>公司邮箱：</span><input id="email" type="text" class="input" placeholder="公司邮箱" /></br>
				<span>公司电话：</span><input id="phone" type="text" class="input" placeholder="公司电话" /></br>

				<button id="regist" type="button" class="button">注 册</button>
				<div style="color:red; line-height: 30px;" id="callback"></div>
			</form>
		</div>
		<div class="main-right">
			<div id="logo" class="logo">
				<div class="logo-title">陕西省影视产业管理平台</div>
			</div>
			<a href="./login.php">
				<button type="button" class="button-right">已注册账号，直接登录</button>
			</a>
			<div class="remark">
				请务必填写正确信息，我们会对您的信息进行审核，审核通过才能使用该账号。
			</div>
		</div>
	</div>
	<footer>
		<span>Copyright©2015-2015 陕西省影视产业管理平台系统. All rights reserved.</span>
	</footer>

	<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="./js/regist.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#logo').click(function(){
				window.location.href='./index.php';
			});
		});
	</script>
</body>
</html>
