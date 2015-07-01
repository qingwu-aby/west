<?php include_once './view/header.html'; ?>
<style type="text/css">
	.detail_content{
		overflow: hidden;
		color: #000;
	}
	.detail_content span{
		font-size: 16px;
		display: inline;
		line-height: 24px;
	}
	.detail_content h4{
		font-size: 24px;
		font-weight: bold;
	}
	.detail_pic_left{
		width: 320px;
		height: 240px;
		float: left;
		margin-right: 20px;
	}
	.detail_pic_right{
		overflow: hidden;	
	}
	.detail_pic_left img{
		height: 240px;
		width: 320px;

	}
	.code{
		font-size: 12px;
		color: #666;
		font-weight: bold;
	}
	.href{
		width: 660px;
		height: 60px;
		background: #eee;
		border:1px solid #e7e7e7;
		border-radius: 5px;
		
	}
	.link_info{
		line-height: 50px;
		
	}
	.link_href{
		text-decoration: underline;
	}
	iframe{
		width: 660px;
		height: 440px;
	}
</style>
<div id="content" class="content">
	<div class="war">
		<div class="content-nav">
			
		</div>
		<div class="content-main">
			
			<div class="yMain-left row">
				<div class="detail_content" id="detail_content">
					<div class="introduce" id="introduce">
						
					</div>
					<!-- <div class="href">
						<p class="link_info">链接：<span class="link_href"><a href="#frame">http://player.youku.com/player.php/sid/XOTA4ODc2Nzg0/v.swf</a></span></p>		
					</div> -->
					
				</div>
				
				
			</div>
			<div class="yMain-right row">
				<ul>
					<li class="company_row">
					<div>
						<span class="company"></span>
						<span class="text" id="company_text">公司简介</span><i class="eng"> COMPANY PROFILE</i>
						<hr/>
					<!-- </div> -->
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
	<script type="text/javascript" src="./js/index.js"></script>
	<script type="text/javascript" src="./js/company.js"></script>
	<script type="text/javascript" src="./js/detail.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.nav-list').removeClass('on');
			$('#nav-list-2').addClass('on');
			$('title').text('影视作品-陕西省影视产业管理平台系统');
 		// 	var asideClick=function(){
			// 	$(document).on('click','.detail_content',function(){
					
			// 		var oId=$(this).attr('id');
			// 		if(oId==='detail_content'){
			// 			$('.detail_content').css({'display':'none'});
			// 			$('#frame').css({'display':'block'});
			// 		}
					
			// 	});
			// };
           
		});
	</script>
<?php include_once './view/footer.html'; ?>