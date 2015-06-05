<?php
	$uid=$_GET['uid'];
	$username=$_GET['username'];

	if($uid&&$username){
?>
<!DOCTYPE html>
<!--[if IE 8 ]><html lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>陕西省影视产业管理平台</title>
	<link rel="shortcut icon" type="image/x-icon" href="./images/ico.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link type="text/css" rel="stylesheet" href="./css/reset.css" />
	<link type="text/css" rel="stylesheet" href="./css/common.css" />
	<link rel="stylesheet" type="text/css" href="./css/admin.css" />

	<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</head>

<body>

	<!-- aside -->
	<aside>
		<ul id="aside-ul" class="aside-ul">
			<a href="#home">
				<li id="aside-list-1" class="aside-list">
					<div class="aside-list-icon myfont">&#336</div>
					<div class="aside-list-title">首页</div>
				</li>
			</a>
			<a href="#films">
				<li id="aside-list-2" class="aside-list">
					<div class="aside-list-icon myfont">&#391</div>
					<div class="aside-list-title">作品管理</div>
				</li>
			</a>
			<a href="#links">
				<li id="aside-list-4" class="aside-list">
					<div class="aside-list-icon myfont">&#340</div>
					<div class="aside-list-title">链接管理</div>
				</li>
			</a>
			<a href="#news">
				<li id="aside-list-3" class="aside-list">
					<div class="aside-list-icon myfont">&#445</div>
					<div class="aside-list-title">新闻管理</div>
				</li>
			</a>
			<a href="#company">
				<li id="aside-list-5" class="aside-list">
					<div class="aside-list-icon myfont">&#444</div>
					<div class="aside-list-title">用户管理</div>
				</li>
			</a>
		</ul>
	</aside>

	<!-- header -->
	<header>
		<div class="header-title">陕西省影视产业管理平台——系统管理员</div>
		<a href="../"><button type="button" class="header-show">退出</button></a>
	</header>

	<!-- home -->
	<div id="content-1" class="content-1 content">
		<div class="content-right content-sty">
			<div class="content-son-sty">
				<div class="content-son-title">
					<span>最新作品</span>
					<a id="see_more_films" href="#films" class="see_more">查看更多</a>
				</div>
				<div id="home_films" class="content-son-con">
					<span class="con-remark">还未有用户上传作品</span>
				</div>
			</div>
		</div>
		<div class="content-left content-sty">
			<div class="content-son-sty">
				<div class="content-son-title">
					<span>新用户</span>
					<a id="see_more_company" href="#company" class="see_more">查看更多</a>
				</div>
				<div id="home-user-list" class="content-son-con">
					<span class="con-remark">没有新用户</span>
				</div>
			</div>

			<div class="content-son-sty">
				<div class="content-son-title">
					<span>最新动态</span>
					<a id="see_more_news" href="#news" class="see_more">查看更多</a>
				</div>
				<div id="home_news" class="content-son-con">
					<span class="con-remark">还未有用户发布新闻</span>
				</div>
			</div>
		</div>
	</div>

	<!-- films -->
	<div id="content-2" class="content-2 content">
		<div class="content-films">
			<div id="films-window" class="mess-window">
				<div id="closeFilms-window" class="close-window">关闭</div>
				<div class="films-message-con">
					<div>作品名称：</div>
					<div>公司ID：</div>
					<div>用户ID：</div>
					<div>作品链接：</div>
				</div>
			</div>
			<div id="content-films-1" class="content-main-sty content-films-click">
				<div class="content-main-title">影视作品管理<span id="films_number" style="float: right;"></span></div>
				<div id="content-films-list" class="content-main-con" style="overflow:hidden;">
					<span class="con-remark">还未上传作品</span>
				</div>
				<div id="page-films-war" class="page-war"></div>
			</div>
		</div>
	</div>

	<!-- news -->
	<div id="content-3" class="content-2 content">
		<div class="content-news">
			<div class="content-main-title">新闻动态管理<span id="news_number" style="float: right;"></span></div>
			<div id="content-news-list" class="content-main-con">
				<span class="con-remark">没有新闻动态</span>
			</div>
			<div id="page-news-war" class="page-war"></div>
		</div>
	</div>

	<!-- links -->
	<div id="content-4" class="content-2 content">
		<div class="content-links">
			<div id="links-window" class="mess-window">
				<div id="closeLinks-window" class="close-window">关闭</div>
			</div>
			<div class="content-main-title">所有友情链接<span id="links_number" style="float: right;"></span></div>
			<div id="content-links-list" class="content-main-con">
				<span class="con-remark">还未添加链接</span>
			</div>
		</div>
	</div>

	<!-- company -->
	<div id="content-5" class="content-2 content">
		<div class="content-nav">
			<div class="content-nav-son">
				<div class="content-nav-son-title">
					<span>用户管理</span>
					<div class="information">管理本系统所有公司</div>
				</div>
				<ul class="content-nav-son-ul">
					<li>
						<a id="all_user" href="javascript: window.scrollTo(0,0);" class="list user-list">
							<span class="myfont">&#271</span>
							<span>所有用户</span>
							<span id="all_user_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="enabled_user" href="javascript: window.scrollTo(0,0);" class="list user-list">
							<span class="myfont">&#243</span>
							<span>已启用用户</span>
							<span id="ena_user_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="disable_user" href="javascript: window.scrollTo(0,0);" class="list user-list">
							<span class="myfont">&#245</span>
							<span>已禁用用户</span>
							<span id="dis_user_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="check_user" href="javascript: window.scrollTo(0,0);" class="list user-list">
							<span class="myfont">&#244</span>
							<span>待审核用户</span>
							<span id="che_user_number" style="float: right;"></span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-main">
			<div id="content-user-1" class="content-main-sty content-user-click">
				<div class="content-main-title">所有用户</div>
				<div id="user-all-list" class="content-main-con">
					<span class="con-remark">没有用户</span>
				</div>
			</div>
			<div id="content-user-4" class="content-main-sty content-user-click">
				<div class="content-main-title">已启用用户</div>
				<div id="user-ena-list" class="content-main-con">
					<span class="con-remark">没有启用用户</span>
				</div>
			</div>
			<div id="content-user-2" class="content-main-sty content-user-click">
				<div class="content-main-title">已禁用用户</div>
				<div id="user-dis-list" class="content-main-con">
					<span class="con-remark">没有被禁用用户</span>
				</div>
			</div>
			<div id="content-user-3" class="content-main-sty content-user-click">
				<div class="content-main-title">待审核用户</div>
				<div id="user-new-list" class="content-main-con">
					<span class="con-remark">没有待审核用户</span>
				</div>
			</div>
		</div>
	</div>

	<!-- control -->
	<div id="content-6" class="content-2 content">
		<div class="content-nav">
			<div class="content-nav-son">
				<div class="content-nav-son-title">
					<span>账户设置</span>
					<div class="information">管理员账号设置</div>
				</div>
				<ul class="content-nav-son-ul">
					<li>
						<a id="update_pass" href="javascript: window.scrollTo(0,0);" class="list control-list">
							<span class="myfont">&#397</span>
							<span>修改密码</span>
						</a>
					</li>
					<li>
						<a id="delete_user" href="javascript: window.scrollTo(0,0);" class="list control-list">
							<span class="myfont">&#224</span>
							<span>注销账户</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-main">
			<div id="content-control-1" class="content-main-sty content-control-click">
				<div class="content-main-title">修改密码</div>
				<div class="content-son-form">
					<span class="form">
						<span class="pass">原密码：</span><input type="password" class="update-input" placeholder="输入原密码" /></br>
						<span class="pass">新密码：</span><input type="password" class="update-input" placeholder="输入新密码" /></br>
						<span class="pass">新密码：</span><input type="password" class="update-input" placeholder="再次输入新密码" /></br>
						<button type="button" class="update-button">修改密码</button>
					</span>
				</div>
			</div>
			<div id="content-control-2" class="content-main-sty content-control-click">
				<div class="content-main-title">注销账号</div>
				<div class="content-son-con" style="text-align: left;">
					<span class="con-remark" style="color: red;">管理员账户不能注销。</span>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="./js/admin.js"></script>
</body>
</html>

<?php
	}else{
?>
	<script type="text/javascript">
		window.location.href='../show/index.php';
	</script>
<?php
	}
?>