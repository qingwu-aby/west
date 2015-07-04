//编辑新闻
var updateEpisode=function(url,showUrl,uid){
	var newsId;
	$(document).on('click','.update_episode',function(){
		newsId=$(this).attr('id').substr(15);
		var newsTitle=$('#episode-'+newsId).find('.title-list-link').text();
		var newsSummary=$('#episode-'+newsId).find('.content-list-con').text();
		var newsContent=$('#episode-'+newsId).find('.content-list-content').val();
		var newsLogo=$('#episode-'+newsId).find('.show-list-thum').attr('src');
		var newsAuthor=$('#episode-'+newsId).find('.episode-author').text();

		$('#episode_window_title').text('编辑剧集');
		$('#episode_window').css('display','block');
		$('#episode_title').val(newsTitle);
		$('#episode_summary').val(newsSummary);
		editor3.html(newsContent);
		$('#episode_author').val(newsAuthor);
		$('#episode_logo').attr('src',newsLogo);
		$('#episode_remark').text('');
		$('#episode_add').css('display','none');
		$('#episode_update').css('display','block');
	});
	$(document).on('click','#episode_update',function(){
		var oNewsTitle=$('#episode_title').val();
		var oNewsSummary=$('#episode_summary').val();
		var oNewsContent=editor3.html();
		var onewsLogo=$('#episode_logo').attr('src');
		var onewsAuthor=$('#episode_author').val();

		if(oNewsTitle==''||oNewsSummary==''||oNewsContent==''||onewsAuthor==''){
			$('#episode_remark').text('信息不能为空！');
			$('#episode_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: newsId,title: oNewsTitle, author: onewsAuthor, thumbnail: onewsLogo, summary: oNewsSummary, content: oNewsContent},
				success: function(data){
					$('#episode_remark').text(data.msg+'！');
					$('#episode_remark').css('color','red');
					if(data.code==1){
						showEpisode(showUrl,uid);
						$('#episode_remark').css('color','green');
						setTimeout(function(){$('#episode_window').fadeOut()},500);
					}
				},
				error: function(){
					$('#episode_remark').text('出错！');
					$('#episode_remark').css('color','red');
				}
			});
		}
	});
};

//删除新闻动态
var deleteEpisode=function(url,showUrl,uid){
	$(document).on('click','.delete_episode',function(){
		var episodeId=$(this).attr('id').substr(15);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: episodeId},
				success: function(data){
					if(data.code==1){
						//alert(data.msg+'！');
						showEpisode(showUrl,uid);
					}
				}
			});
		}
	});
};

//推荐
var tuijianEpisode=function(url,showUrl,uid){
	$(document).on('click','.mlgb11_episode',function(){

		var episodeId=$(this).attr('id').substr(15);
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'episode', status: 1, id: episodeId},
				success: function(data){
					if(data.code==1){
						showEpisode(showUrl,uid);
					}
				}
			});
	});
};

//取消推荐
var cancletuijianEpisode=function(url,showUrl,uid){
	$(document).on('click','.mlgb12_episode',function(){

		var episodeId=$(this).attr('id').substr(15);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'episode', status: 0, id: episodeId},
				success: function(data){
					if(data.code==1){
						showEpisode(showUrl,uid);
					}
				}
			});
		//}
	});
};

//置顶
var topEpisode=function(url,showUrl,uid){
	$(document).on('click','.mlgb21_episode',function(){

		var episodeId=$(this).attr('id').substr(15);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'episode', status: 1, id: episodeId},
				success: function(data){
					if(data.code==1){
						showEpisode(showUrl,uid);
					}
				}
			});
		//}
	});
};

//取消置顶
var cancleTopEpisode=function(url,showUrl,uid){
	$(document).on('click','.mlgb22_episode',function(){

		var episodeId=$(this).attr('id').substr(15);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'episode', status: 0, id: episodeId},
				success: function(data){
					if(data.code==1){
						showEpisode(showUrl,uid);
					}
				}
			});
		//}
	});
};

//显示新闻
var showEpisode=function(url,uid){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {uid: uid, p: 1},
		success: function(data){
			if(data.code==1){
				$('#episode_number').text(' ('+data.data.length+')');
				$('#content-episode-list').html('');

				$('#page-episode-war').html('');
				var episodeLen=parseInt(data.data.length/5);
				if(data.data.length%5!=0){
					episodeLen+=1;
				}
				if(episodeLen){
					for(var i=0;i<episodeLen;i++){
						$('#page-episode-war').append('<div id="episodePage-'+(i+1)+'" class="page-list pageEpisode-list">'+(i+1)+'</div>');
					}
				}

				for(var episodeNumber in data.data){

					var mlgb11=data.data[episodeNumber].recommend==1?'none':'block';
					var mlgb12=data.data[episodeNumber].recommend==0?'none':'block';
					var mlgb21=data.data[episodeNumber].top==1?'none':'block';
					var mlgb22=data.data[episodeNumber].top==0?'none':'block';

					if(episodeNumber<5){
						$('#content-episode-list').append('<div id="episode-'+data.data[episodeNumber].id+'" style="display: block;" class="show-main-list show-episode-con show-episode-con'+episodeNumber+'">'+
							'<img src="'+data.data[episodeNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
								'<h1><span class="title-list-link">'+data.data[episodeNumber].title+'</span></h1>'+
								'<h2><div class="content-list-con">'+data.data[episodeNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[episodeNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[episodeNumber].views+'</span>&nbsp;&nbsp;&nbsp;&nbsp;作者：<span class="episode-author">'+data.data[episodeNumber].author+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="episode-update-'+data.data[episodeNumber].id+'" class="update_episode control_news"> 编辑 </span>'+
									'<span id="episode-delete-'+data.data[episodeNumber].id+'" class="delete_episode control_news"> 删除 </span>'+
									'<span id="episode-mlgb11-'+data.data[episodeNumber].id+'" class="mlgb11_episode control_news" style="display: '+mlgb11+'"> 推荐 </span>'+
									'<span id="episode-mlgb12-'+data.data[episodeNumber].id+'" class="mlgb12_episode control_news" style="display: '+mlgb12+'"> 取消推荐 </span>'+
									'<span id="episode-mlgb21-'+data.data[episodeNumber].id+'" class="mlgb21_episode control_news" style="display: '+mlgb21+'"> 置顶 </span>'+
									'<span id="episode-mlgb22-'+data.data[episodeNumber].id+'" class="mlgb22_episode control_news" style="display: '+mlgb22+'"> 取消置顶 </span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}else{
						$('#content-episode-list').append('<div id="episode-'+data.data[episodeNumber].id+'" style="display: none;" class="show-main-list show-episode-con show-episode-con'+episodeNumber+'">'+
							'<img src="'+data.data[episodeNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
								'<h1><span class="title-list-link">'+data.data[episodeNumber].title+'</span></h1>'+
								'<h2><div class="content-list-con">'+data.data[episodeNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[episodeNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[episodeNumber].views+'</span>&nbsp;&nbsp;&nbsp;&nbsp;作者：<span class="episode-author">'+data.data[episodeNumber].author+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="episode-update-'+data.data[episodeNumber].id+'" class="update_episode control_news"> 编辑 </span>'+
									'<span id="episode-delete-'+data.data[episodeNumber].id+'" class="delete_episode control_news"> 删除 </span>'+
									'<span id="episode-mlgb11-'+data.data[episodeNumber].id+'" class="mlgb11_episode control_news" style="display: '+mlgb11+'"> 推荐 </span>'+
									'<span id="episode-mlgb12-'+data.data[episodeNumber].id+'" class="mlgb12_episode control_news" style="display: '+mlgb12+'"> 取消推荐 </span>'+
									'<span id="episode-mlgb21-'+data.data[episodeNumber].id+'" class="mlgb21_episode control_news" style="display: '+mlgb21+'"> 置顶 </span>'+
									'<span id="episode-mlgb22-'+data.data[episodeNumber].id+'" class="mlgb22_episode control_news" style="display: '+mlgb22+'"> 取消置顶 </span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}
				}
			}else{
				$('#content-episode-list').html('<span class="con-remark">还未添加新闻！</span>');
				$('#home_episode').html('<span class="con-remark">没有动态</span>');
				$('#episode_number').text('');
			}
		},
		error: function(){
			$('#content-episode-list').html('<span class="con-remark">显示出错！</span>');
		}
	});
$(document).on('click','.pageEpisode-list',function(){
		var pageNumber=$(this).attr('id').substr(12);
		//alert(pageNumber);
		$('.show-episode-con').css('display','none');
		for(var j=0; j<5; j++){
			var index=(pageNumber-1)*5+1*j;
			//alert(index);
			$('.show-episode-con'+index).css('display','block');
		}
	});
};

//添加新闻
var addEpisode=function(url,showUrl,uid,uploadUrl){
	$(document).on('change','#episodeUp_logo',function(){

		$.ajaxFileUpload({
			url: uploadUrl,
			secureuri: true, //是否需要安全协议，一般设置为false
            fileElementId: 'episodeUp_logo', //文件上传域的ID
			dataType: 'json',
			data: {filename: 'filename'},
			success: function(data){
				//var result=JSON.parse(data.replace(/<pre style=\"word-wrap: break-word; white-space: pre-wrap;\">|<\/pre>/ig,''));
				var result=data;
				if(result.code==1){
					var image_url=result.data.img_url.substr(3);
					$('#episode_logo').attr('src','../server'+image_url);
				}else{
					alert('上传失败！');
				}
			},
			error: function(data){
				alert('上传错误！');
			}
		});
	});

	$(document).on('click','#episode_add',function(){

		var oNewsTitle=$('#episode_title').val();
		var oNewsSummary=$('#episode_summary').val();
		var oNewsContent=editor3.html();
		var onewsLogo=$('#episode_logo').attr('src');
		var onewsAuthor=$('#episode_author').val();

		if(oNewsTitle==''||oNewsSummary==''||oNewsContent==''||onewsAuthor==''){
			$('#episode_remark').text('信息不能为空！');
			$('#episode_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {title: oNewsTitle, author: onewsAuthor, thumbnail: onewsLogo, summary: oNewsSummary, content: oNewsContent},
				success: function(data){
					$('#episode_remark').text(data.msg+'！');
					$('#episode_remark').css('color','red');

					if(data.code==1){
						showEpisode(showUrl,uid);
						$('#episode_remark').css('color','green');
						$('#episode_title').val('');
						$('#episode_summary').val('');
						$('#episode_content').val('');
						editor.html('');
						$('#episode_author').val('');
						setTimeout(function(){$('#episode_window').fadeOut()},600);
						$('.episode-list').css({'background-color':'','color':'#666'});
						$('#all_episode').css({'background-color':'#ccc','color':'#000'});
					}
				},
				error: function(){
					$('#episode_remark').text('出错！');
					$('#episode_remark').css('color','red');
				}
			});
		}
	});
};

//新闻动态页菜单切换
var episodeNavClick=function(){
	$('#all_episode').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','#episode_cancal',function(){
		$('#episode_window').fadeOut();
		$('.episode-list').css({'background-color':'','color':'#666'});
		$('#all_episode').css({'background-color':'#ccc','color':'#000'});
	});
	$(document).on('click','.episode-list',function(){
		$('.episode-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_episode'){
			$('#episode_window').css('display','none');
		}
		if($(this).attr('id')==='add_episode'){
			$('#episode_window').css('display','block');
			$('#episode_title').val('');
			$('#episode_summary').val('');
			$('#episode_content').val('');
			$('#episode_logo').attr('src','');
			editor3.html('');
			$('#episode_author').val('');
			$('#episode_add').css('display','block');
			$('#episode_update').css('display','none');
			$('#episode_remark').text('');
			$('#episode_type').css('display','block');
		}
	});
};