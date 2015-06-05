<?php include_once './view/header.html'; ?>
<style type="text/css">
	.film_show ul{
		overflow: hidden;
		width: 680px;
		}
		.film_thum{
			float: left;
			padding-top: 20px;
		}
		
		.film_info{
			line-height: 24px;
			padding-left: 20px;
		}
		
		.film_info img{
			background: #C6EDFD;
			width: 200px;
			height: 250px;
			padding:2px;
			border: 1px solid #C6EDFD;
		}
		.film_info img:hover{
			background: #f8f8f8;
			padding: 2px;
			border: 1px solid #f8f8f8;
		}
		.name{
			text-align: center;
			font-size: 18px;
			font-weight: bold;
			padding-left: 20px;
			height: 30px;
		}
		.name a{
			padding-top: 20px;	
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
		<div class="content-main">
			
			<div class="yMain-left row">
				<div class="film_show">
					<ul id="film_msg">
						
					</ul>
						<!-- <div class="get_more">
							<a href="javascript:;" id="get_more" >>>点击加载更多<<</a>
						</div>  -->
				</div>
				
				
			</div>
			<div class="yMain-right row">
				<ul>
					<li class="company_row">
					<div>
						<span class="company"></span>
						<span class="text" id="company_text">公司简介</span><i class="eng"> COMPANY PROFILE</i>
						<hr/>
					</div>
					<div id="summary_company">					
						<p class="summary">
						 	
						</p>
					</div>
					</li>
					<li>
						<div>
							<span class="contact"></span>
							<span class="text">联系方式</span><i class="eng"> CONTACT WAY</i>
							<hr/>
						</div>
						<div class="linkme">
							<p>联系方式： <span id="mail"></span></p>
							<p>联系电话： <span id="tel"></span></p>
							<div id="wechat">
							<!-- <span id="linkme_images"><img src="./images/qrcode.png" /></span> -->
							</div>
						</div>	
					</li>				
				</ul>	
			</div>
		</div>
	</div>
</div>
	<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="./js/module.js"></script>
	<script type="text/javascript" src="./js/company.js"></script>
	<script type="text/javascript" src="./js/film.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.nav-list').removeClass('on');
			$('#nav-list-3').addClass('on');
			$('title').text('影视作品-陕西省影视产业管理平台系统');    
		});
	</script>
<?php include_once './view/footer.html'; ?>