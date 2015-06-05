<?php include_once './view/header.html'; ?>
<style type="text/css">
	.about_us{
	
	}
	.about_us li{
		font-size: 18px;
		text-align: left;
		line-height: 40px;
		font-weight: bold;
	}
	.about_text{
		text-align: left;
		border-top: 1px dashed #ccc;
		padding: 20px 0 0 20px;
	}
	.logo_about img{
		width: 360px;
		height: 80px;
	}
</style>
<div id="content" class="content">
	<div class="war">
		<div class="content-nav">
			<span>热门标签：</span>
			<a class="content-nav-href" href="javascript:;">人人都能写电影</a>
			<a class="content-nav-href" href="javascript:;">全网影视</a>
			<a class="content-nav-href" href="javascript:;">风中奇缘</a>
			<a class="content-nav-href" href="javascript:;">《甜蜜蜜》</a>
			<a class="content-nav-href" href="javascript:;">2015央视羊年春晚</a>
			<a class="content-nav-href" href="javascript:;">唐嫣</a>
			<a class="content-nav-href" href="javascript:;">谦谦君子钟汉良</a>
			<a class="content-nav-href" href="javascript:;">风中奇缘</a>
			<a class="content-nav-href" href="javascript:;">好莱坞大片</a>
		</div>

		<div class="about_us" id="about_us">
			
		</div>
	</div>
</div>
	<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="./js/module.js"></script>
	<script type="text/javascript" src="./js/about.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.nav-list').removeClass('on');
			$('#nav-list-7').addClass('on');
			$('title').text('关于我们-陕西省影视产业管理平台系统');	
			
		});
	</script>
<?php include_once './view/footer.html'; ?>
