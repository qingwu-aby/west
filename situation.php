<?php include_once './view/header.html'; ?>
<div id="content" class="content">
	<div class="war">
		<div class="content-nav">
			
		</div>

		<div class="content-main">
			
			<div class="yMain-left row">
				<div>
					<span class="news"></span>
					<span class="text">最新动态 <i class="eng">UPDATE SITUATION</i></span>
					<hr />
				</div>
				
				
				<ul class="list"id="list">					
				</ul>
				<!-- <div class="get_more">
				    <a href="javascript:void(0);" id="get_more" style="color:#333;">>>查看更多<<</a>
				</div> -->		
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
							<span class="film"></span>
							<span class="text">影视作品</span><i class="eng"> FILM AND TELEVISION</i>
							<hr/>
						</div>
						<div class="thumbnail">
							<ul id="thum_list">
								
							</ul>
						</div>
					</li>
					<li>
						<div>
							<span class="episode"></span>
							<span class="text">剧集</span><i class="eng"> EPISODE</i>
							<hr/>
						</div>
						<div class="thumbnail">
							<ul id="episode_list">
								
							</ul>
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
	<script type="text/javascript" src="./js/sitution.js"></script>
	<script type="text/javascript" src="./js/company.js"></script>
	<script type="text/javascript" src="./js/video.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.nav-list').removeClass('on');
			$('#nav-list-2').addClass('on');
			$('title').text('最新动态-陕西省影视产业管理平台系统');
			//限制可显示字数为83个汉字
			$(".article").each(function(){
		        var maxwidth=83;
		        if($(this).text().length>maxwidth){
		            $(this).text($(this).text().substring(0,maxwidth));
		            $(this).html($(this).html()+'...');
		        }
		    });
		});
	</script>
<?php include_once './view/footer.html'; ?>
