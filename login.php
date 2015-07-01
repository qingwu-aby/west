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
	<title>登录-陕西省影视产业管理平台系统</title>
	<link rel="shortcut icon" type="image/x-icon" href="./images/ico.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link type="text/css" rel="stylesheet" href="./css/reset.css" />
	<link type="text/css" rel="stylesheet" href="./css/login.css" />
</head>

<body>
	<header>
		<span class="header-title">登录-陕西省影视产业管理平台系统</span>
	</header>
	<div class="main">
		<div class="main-left">

		</div>
		<div class="main-right">
			<div id="logo" class="logo">
				<div class="logo-title">陕西省影视产业管理平台</div>
			</div>
			<form class="form">
				<span>账&ensp;&ensp;号：</span><input id="user" type="text" class="input user" placeholder="请输入用户名" /></br>

				<span>密&ensp;&ensp;码：</span><input id="pass" type="password" class="input pass" placeholder="请输入密码" /></br>
				<img id="codeNumber" class="codeNumber" src="./server/index.php?m=User&c=Api&a=verify" />
				<span style="position: relative;">验证码：</span><input id="code" type="text" class="input code" placeholder="输入验证码" /></br>

				<div class="link lose"><a href="javascript:;">忘记密码？</a><a style="float: right;" href="./regist.php">注册</a></div>
				<button id="login" type="button" class="enter">登 录</button></br>
				<div style="color:red; line-height: 30px;" id="callback"></div>
			</form>
		</div>
	</div>
	<footer>
		<span>Copyright©2015-2015 陕西省影视产业管理平台系统. All rights reserved.</span>
	</footer>

	<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="./js/login.js"></script>

	<script type="text/javascript">
	$(document).ready(function(){
		$('#logo').click(function(){
			window.location.href='./index.php';
		});
	});
	</script>
</body>
</html>
