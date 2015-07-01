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
