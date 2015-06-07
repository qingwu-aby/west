<?php
	$uid=$_GET['uid'];
	$username=$_GET['username'];

	if($uid&&$username){
		include_once './header.html';
?>

	<link rel="stylesheet" type="text/css" href="./css/index.css" />
	<link rel="stylesheet" href="./js/kindeditor/themes/default/default.css" />
	<script charset="utf-8" src="./js/kindeditor/kindeditor-min.js"></script>
	<script charset="utf-8" src="./js/kindeditor/lang/zh_CN.js"></script>
	<script>
		var editor;
		KindEditor.ready(function(K) {
			editor = K.create('textarea[name="newsContent"]', {
					allowFileManager : true,
					autoHeightMode : true,
					afterCreate : function() {
						this.loadPlugin('autoheight');
					}
				});
		});
	</script>
	<!-- header -->
	<header id="header_uid" class="<?php echo $uid; ?>">
		<!-- <img class="company_logo" src="" /> -->
		<div id="header-title" class="header-title">陕西省影视产业管理平台——<?php echo $username; ?></div>
		<a href="../login.php"><button type="button" id="header-login" class="header-login">登录</button></a>
		<a href="../"><button type="button" class="header-show">退出</button></a>
	</header>

	<!-- home -->
	<div id="content-1" class="content-1 content">
		<div class="content-right content-sty">

			<div class="content-son-sty">
				<div class="content-son-title">
					<span>作品</span>
					<a id="see_more_films" href="#films" class="see_more">查看更多</a>
				</div>
				<div id="home_films" class="content-son-con">
					<span class="con-remark">还未上传作品</span>
				</div>
			</div>
		</div>
		<div class="content-left content-sty">
			<div class="content-son-sty">
				<div class="content-son-title">
					<span>友情链接</span>
					<a id="see_more_links" href="#links" class="see_more">查看更多</a>
				</div>
				<div id="home_link" class="content-son-con">
					<span class="con-remark">还未添加链接</span>
				</div>
			</div>
			<div class="content-son-sty">
				<div class="content-son-title">
					<span>新闻动态</span>
					<a id="see_more_news" href="#news" class="see_more">查看更多</a>
				</div>
				<div id="home_news" class="content-son-con">
					<span class="con-remark">没有动态</span>
				</div>
			</div>
		</div>
	</div>

	<!-- films -->
	<div id="content-2" class="content-2 content">
		<div class="content-nav">
			<div class="content-nav-son">
				<div class="content-nav-son-title">
					<span>影视作品</span>
					<div class="information">公司所有影视作品按上传日期显示</div>
				</div>
				<ul class="content-nav-son-ul">
					<li>
						<a id="all_films" href="javascript: window.scrollTo(0,0);" class="list films-list">
							<span class="myfont">&#271</span>
							<span>所有影视作品</span>
							<span id="films_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="add_films" href="javascript: window.scrollTo(0,0);" class="list films-list">
							<span class="myfont">&#244</span>
							<span>添加影视信息</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-main">
			<div id="content-films-1" class="content-main-sty content-films-click">
				<div id="films_window" class="link_window">
					<span id="films_cancal" class="link_cancal">取消</span>
					<div id="films_window_title" class="link_window_title">添加影视作品</div>
					<span class="form">
						<span class="link">作品标题：</span><input id="films_title" type="text" class="update-input update-input-sty" placeholder="输入作品标题" /></br>
						<span class="link"><div style="text-align: left;">作品图标：</div></span>

							<img id="films_logo" src="" style="margin-left: 70px;height: 150px; width: 120px;" />

						<span style="color: red; line-height:24px;">图片大小：160px * 200px，其他尺寸可能会显示不正常。</span></br>

						<div style="overflow:hidden; margin-left:70px;">
							<input id="filmsUp_logo" class="file_upload" type="file" name="filename" />
							<!-- <button id="filmsUp_button" class="button_upload">上传</button> -->
							<!-- <input style="float: left" type="file" onchange="previewImage(this,'films_logo')" /> -->
						</div>

						<span class="link">作品链接：</span><input id="films_link" type="text" class="update-input update-input-sty" placeholder="输入作品链接" /></br>
						<button id="films_add" type="button" class="update-button link_button">确认添加</button>
						<button id="films_update" type="button" class="update-button link_button">确认修改</button>
						<div id="films_remark" style="text-align: center; color: red; padding: 10px 0;"></div>
					</span>
				</div>
				<div id="content-films-title" class="content-main-title">影视作品</div>
				<div id="content-films-list" class="content-main-con content-films-con">

				</div>
			</div>
		</div>
	</div>

	<!-- news -->
	<div id="content-3" class="content-2 content">
		<div class="content-nav">
			<div class="content-nav-son">
				<div class="content-nav-son-title">
					<span>新闻动态</span>
					<div class="information">公司所有新闻动态按上传日期显示</div>
				</div>
				<ul class="content-nav-son-ul">
					<li>
						<a id="all_news" href="javascript: window.scrollTo(0,0);" class="list news-list">
							<span class="myfont">&#271</span>
							<span>所有新闻动态</span>
							<span id="news_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="add_news" href="javascript: window.scrollTo(0,0);" class="list news-list">
							<span class="myfont">&#244</span>
							<span>添加新闻动态</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-main">
			<div id="content-news-1" class="content-main-sty content-news-click">
				<div id="news_window" class="link_window" style="position: absolute; text-align: left;">
					<span id="news_cancal" class="link_cancal">取消</span>
					<div id="news_window_title" class="link_window_title">添加新闻动态</div>
					<span class="form" style=" padding-left: 25px;">
						<span class="link">新闻标题：</span><input id="news_title" type="text" class="update-input update-input-sty" placeholder="输入新闻标题" /></br>
						<span class="link">新闻摘要：</span><input id="news_summary" type="text" class="update-input update-input-sty" placeholder="输入新闻摘要" /></br>
						<span class="link"><div style="text-algin: left;">新闻图片：</div><img id="news_logo" src="" style=" margin-left: 70px; height: 98px; width: 140px;" />
						<span style="color: red; line-height:24px; margin-left: 70px;">图片大小：700px * 490px，其他尺寸可能会显示不正常。</span></br>
						<div style="overflow:hidden; margin-left:70px; margin-bottom: 10px;">
							<input id="newsUp_logo" class="file_upload" type="file" name="filename" />
							<!-- <button id="newsUp_button" class="button_upload">上传</button> -->
						</div>
						<div style="margin-bottom: 20px; text-align：left;"><span class="link">新闻内容：</span><textarea id="news_content" style="width: 400px; height: 400px;" name="newsContent" class="update-textarea" placeholder="输入新闻内容"></textarea></div>
						<span class="link">编辑作者：</span><input id="news_author" type="text" class="update-input update-input-sty" placeholder="作者" /></br>
						<button id="news_add" type="button" class="update-button link_button">确认添加</button>
						<button id="news_update" type="button" class="update-button link_button">确认修改</button>
						<div id="news_remark" style="text-align: center; color: red; padding: 10px 0;"></div>
					</span>
				</div>
				<div id="content-news-title" class="content-main-title">新闻动态</div>
				<div id="content-news-list" class="content-main-con"></div>
				<div id="page-news-war" class="page-war"></div>
			</div>
		</div>
	</div>

	<!-- links -->
	<div id="content-4" class="content-2 content">
		<div class="content-nav">
			<div class="content-nav-son">
				<div class="content-nav-son-title">
					<span>友情链接</span>
					<div class="information">公司所有快捷友情链接</div>
				</div>
				<ul class="content-nav-son-ul">
					<li>
						<a id="all_links" href="javascript: window.scrollTo(0,0);" class="list links-list">
							<span class="myfont">&#271</span>
							<span>所有友情链接</span>
							<span id="links_number" style="float: right;"></span>
						</a>
					</li>
					<li>
						<a id="add_links" href="javascript: window.scrollTo(0,0);" class="list links-list">
							<span class="myfont">&#244</span>
							<span>添加友情链接</span>
						</a>
					</li>
					<li>
						<a id="update_links" href="javascript: window.scrollTo(0,0);" class="list links-list">
							<span class="myfont">&#243</span>
							<span>修改友情链接</span>
						</a>
					</li>
					<li>
						<a id="delete_links" href="javascript: window.scrollTo(0,0);" class="list links-list">
							<span class="myfont">&#245</span>
							<span>删除友情链接</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-main">
			<div id="content-links-1" class="content-main-sty content-links-click">
				<div id="link_window" style="position: absolute;" class="link_window">
					<span id="link_cancal" class="link_cancal">取消</span>
					<div id="link_window_title" class="link_window_title">添加友情链接</div>
					<span class="form">
						<span class="link">链接名称：</span><input id="link_name" type="text" class="update-input update-input-sty" placeholder="输入链接名称" /></br>
						<span class="link"><div style="text-align: left;">链接图标：</div></span><img id="links_logo" src="" style="margin-left: 70px;height: 60px; width: 200px;" />
						<span style="color: red; line-height:24px;">图片大小：200px * 60px，其他尺寸可能会显示不正常。</span></br>
						<div style="overflow:hidden; margin-left:70px;">
							<input id="linkUp_logo" class="file_upload" type="file" name="filename" />
							<!-- <button id="linkUp_button" class="button_upload">上传</button> -->
						</div>
						<span class="link">链接地址：</span><input id="link_mess" type="text" class="update-input update-input-sty" placeholder="输入链接说明" /></br>
						<button id="link_add" type="button" class="update-button link_button">确认添加</button>
						<button id="link_update" type="button" class="update-button link_button">确认修改</button>
						<div id="link_remark" style="text-align: center; color: red; padding: 10px 0;"></div>
					</span>
				</div>
				<div id="content-link-title" class="content-main-title">友情链接</div>
				<div class="content-main-con">
					<table id="table_show" class="table"></table>
				</div>
			</div>
		</div>
	</div>


	<!-- company -->
	<div id="content-5" class="content-1 content">
		<div class="content-company content-sty">
			<div class="content-son-sty">
				<div class="content-son-title">
					<span>公司信息</span>
					<span id="update_company" class="update_company">修改</span>
				</div>
				<div class="content-son-con content-company-sty">
					<div class="p">
						<div class="z_title">公司LOGO</div>
						<img id="company_logo" class="z_img" src="" />
						<span class="upload-remark" style="color: red; line-height: 30px;">图片尺寸：360px * 80px，其他尺寸可能会显示不正常。</span>
						<div class="file_war">
							<input id="file_logo" class="file_upload" type="file" name="filename" />
							<!-- <button id="button_logo" class="button_upload buttonUp">上传</button> -->
						</div>
					</div>
					<div class="p">
						<div class="z_title">微信二维码</div>
						<img id="company_wechat" class="z_img" src="" />
						<span class="upload-remark" style="color: red; line-height: 30px;">图片尺寸：200px * 200px，其他尺寸可能会显示不正常。</span>
						<div class="file_war">
							<input id="file_wechat" class="file_upload" type="file" name="filename" />
							<!-- <button id="button_wechat" class="button_upload buttonUp">上传</button> -->
						</div>
					</div>
					<div class="p">
						<div class="p_left p_main">
							<div class="z_title">公司名称</div>
							<input id="company_name" type="text" class="z_message" disabled="disabled" value="" />
						</div>
						<div class="p_right p_main">
							<div class="z_title">用户名</div>
							<input id="company_username" type="text" class="z_message" disabled="disabled" value="<?php echo $username; ?>" />
						</div>
					</div>

					<div class="p">
						<div class="p_left p_main">
							<div class="z_title">公司电话</div>
							<input id="company_tel" type="text" class="z_message z_change z_bg" readonly="readonly" value="" />
						</div>
						<div class="p_right p_main">
							<div class="z_title">公司邮箱</div>
							<input id="company_mail" type="text" class="z_message z_change z_bg" readonly="readonly" value="" />
						</div>
					</div>
					<div class="p">
						<div class="z_title">公司简介</div>
						<div id="div_message" class="div_message z_bg" style="width: 780px;" contenteditable="false"></div>
					</div>

					<button type="button" id="z_enter" class="z_button">确认修改</button>
					<div id="company_remark" style="text-align: center;"></div>
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
					<div class="information">公司账号信息的管理,可对账号进行修改与注销操作</div>
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
						<span class="pass">原密码：</span><input id="oldPass" type="password" class="update-input" placeholder="输入原密码" /></br>
						<span class="pass">新密码：</span><input id="newPass" type="password" class="update-input" placeholder="输入新密码" /></br>
						<span class="pass">新密码：</span><input id="newPass_2" type="password" class="update-input" placeholder="再次输入新密码" /></br>
						<button id="editPass" type="button" class="update-button">修改密码</button>
						<div id="edit_remark" style="text-align: center; color: red; padding: 10px 0;"></div>
					</span>
				</div>
			</div>
			<div id="content-control-2" class="content-main-sty content-control-click">
				<div class="content-main-title">注销账号</div>
				<div class="content-son-con" style="text-align: left;">
					<span class="con-remark" style="color: red;">账户属于重要信息，如要注销账户，需由公司负责人联系账户管理部门进行注销。</span>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./js/ajaxfileupload.js"></script>
	<!-- <script type="text/javascript" src="./js/jquery.upload.v2"></script> -->
	<!-- <script type="text/javascript" src="./js/js-upload-preview.js"></script> -->
	<script type="text/javascript" src="./js/links.js"></script>
	<script type="text/javascript" src="./js/films.js"></script>
	<script type="text/javascript" src="./js/news.js"></script>
	<script type="text/javascript" src="./js/companys.js"></script>
	<script type="text/javascript" src="./js/index.js"></script>
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
