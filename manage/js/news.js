//时间转换
var curTime=function(time){ 
    
    var year = time.getFullYear();
    var month = (time.getMonth()+1)>10?time.getMonth()+1:'0'+(time.getMonth()+1);
    var day = time.getDate()>9?time.getDate():'0'+time.getDate();
    // var hour = time.getHours()>9?time.getHours():'0'+time.getHours();
    // var minute = time.getMinutes()>9?time.getMinutes():'0'+time.getMinutes();
    // var second = time.getSeconds()>9?time.getSeconds():'0'+time.getSeconds();

    return year+'年'+month+'月'+day+'日';
};

//修改新闻
var updateNews=function(url,showUrl,uid){
	var newsId;
	// $(document).on('click','#news_logo',function(){
	// 	$('#upload-img').fadeIn();
	// });
	// $(document).on('click','#img-news',function(){
	// 	var newsImgSrc=$('#show .img-link:last-child').text();
	// 	$('#news_logo').attr('src','./uploads'+newsImgSrc);
	// 	$('#upload-img').fadeOut();
	// });
	$(document).on('click','.update_news',function(){
		newsId=$(this).attr('id').substr(12);
		var newsTitle=$('#news-'+newsId).find('.title-list-link').text();
		var newsSummary=$('#news-'+newsId).find('.content-list-con').text();
		var newsContent=$('#news-'+newsId).find('.content-list-content').val();
		var newsLogo=$('#news-'+newsId).find('.show-list-thum').attr('src');
		var newsAuthor=$('#news-'+newsId).find('.news-author').text();

		$('#news_window_title').text('修改新闻动态');
		$('#news_window').css('display','block');
		$('#news_title').val(newsTitle);
		$('#news_summary').val(newsSummary);
		//$('#news_content').val(newsContent);
		editor.html(newsContent);
		$('#news_author').val(newsAuthor);
		$('#news_logo').attr('src',newsLogo);
		$('#news_remark').text('');
		$('#news_add').css('display','none');
		$('#news_update').css('display','block');
	});
	$(document).on('click','#news_update',function(){
		var oNewsTitle=$('#news_title').val();
		var oNewsSummary=$('#news_summary').val();
		var oNewsContent=editor.html();
		var onewsLogo=$('#news_logo').attr('src');
		var onewsAuthor=$('#news_author').val();

		if(oNewsTitle==''||oNewsSummary==''||oNewsContent==''||onewsAuthor==''){
			$('#news_remark').text('信息不能为空！');
			$('#news_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: newsId,title: oNewsTitle, big_img: onewsLogo, author: onewsAuthor, thumbnail: onewsLogo, summary: oNewsSummary, content: oNewsContent},
				success: function(data){
					$('#news_remark').text(data.msg+'！');
					$('#news_remark').css('color','red');
					
					if(data.code==1){
						showNews(showUrl,uid);
						$('#news_remark').css('color','green');
						setTimeout(function(){$('#news_window').fadeOut()},500);
					}
				},
				error: function(){
					$('#news_remark').text('出错！');
					$('#news_remark').css('color','red');
				}
			});
		}
	});
};

//删除新闻动态
var deleteNews=function(url,showUrl,uid){
	$(document).on('click','.delete_news',function(){
		var newsId=$(this).attr('id').substr(12);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: newsId},
				success: function(data){
					if(data.code==1){
						//alert(data.msg+'！');
						showNews(showUrl,uid);
						
					}
				}
			});
		}
	});
};

//显示新闻
var showNews=function(url,uid){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {uid: uid, p: 1},
		success: function(data){
			if(data.code==1){
				$('#home_news').html('');
				$('#news_number').text(' ('+data.data.length+')');
				$('#content-news-list').html('');

				$('#page-news-war').html('');
				var newsLen=parseInt(data.data.length/5);
				if(data.data.length%5!=0){
					newsLen+=1;
				}
				if(newsLen){
					for(var i=0;i<newsLen;i++){
						$('#page-news-war').append('<div id="newsPage-'+(i+1)+'" class="page-list pageNews-list">'+(i+1)+'</div>');
					}
				}

				for(var newsNumber in data.data){
					if(newsNumber<8){
						var sContent=null;
						if(data.data[newsNumber].title.length>=35){
							sContent=data.data[newsNumber].title.substr(0,35)+'...';
						}else{
							sContent=data.data[newsNumber].title;
						}
						$('#home_news').append('<div class="home-news-col">'+
						'<img src="'+data.data[newsNumber].thumbnail+'" style="width: 200px; height: 140px;" />'+
						'<div style="line-height: 20px; margin-top: 10px;">'+sContent+'</div>'+
						'</div>');
					}

					if(newsNumber<5){
						$('#content-news-list').append('<div id="news-'+data.data[newsNumber].id+'" style="display: block;" class="show-main-list show-news-con show-news-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
								'<h1><span class="title-list-link">'+data.data[newsNumber].title+'</span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>&nbsp;&nbsp;&nbsp;&nbsp;作者：<span class="news-author">'+data.data[newsNumber].author+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="news-update-'+data.data[newsNumber].id+'" class="update_news">修改</span> | <span id="news-delete-'+data.data[newsNumber].id+'" class="delete_news">删除</span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}else{
						$('#content-news-list').append('<div id="news-'+data.data[newsNumber].id+'" class="show-main-list show-news-con show-news-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
								'<h1><span class="title-list-link">'+data.data[newsNumber].title+'</span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>&nbsp;&nbsp;&nbsp;&nbsp;作者：<span class="news-author">'+data.data[newsNumber].author+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="news-update-'+data.data[newsNumber].id+'" class="update_news">修改</span> | <span id="news-delete-'+data.data[newsNumber].id+'" class="delete_news">删除</span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}
				}
			}else{
				$('#content-news-list').html('<span class="con-remark">还未添加新闻！</span>');
				$('#home_news').html('<span class="con-remark">没有动态</span>');
				$('#news_number').text('');
			}
		},
		error: function(){
			$('#content-news-list').html('<span class="con-remark">显示出错！</span>');
		}
	});
$(document).on('click','.pageNews-list',function(){
		var pageNumber=$(this).attr('id').substr(9);
		//alert(pageNumber);
		$('.show-news-con').css('display','none');
		for(var j=0; j<5; j++){
			var index=(pageNumber-1)*5+1*j;
			//alert(index);
			$('.show-news-con'+index).css('display','block');
		}
	});
};

//添加新闻
var addNews=function(url,showUrl,uid,uploadUrl){

		// $(document).on('click','#news_logo',function(){
		// 	$('#upload-img').fadeIn();
		// });
		// $(document).on('click','#img-news',function(){
		// 	var newsImgSrc=$('#show .img-link:last-child').text();
		// 	$('#news_logo').attr('src','./uploads'+newsImgSrc);
		// 	$('#upload-img').fadeOut();
		// });
	$(document).on('click','#newsUp_button',function(){

		$.ajaxFileUpload({
			url: uploadUrl,
			secureuri: true, //是否需要安全协议，一般设置为false
            fileElementId: 'newsUp_logo', //文件上传域的ID
			dataType: 'content',
			data: {filename: 'filename'},
			success: function(data){
				var result=JSON.parse(data.replace(/<pre style=\"word-wrap: break-word; white-space: pre-wrap;\">|<\/pre>/ig,''));
				if(result.code==1){
					var image_url=result.data.img_url.substr(3);
					$('#news_logo').attr('src','../server'+image_url);
				}else{
					alert('上传失败！');
				}
				//$('#div_message').text(result.data.img_url);
			},
			error: function(data){
				alert('上传失败！');
			}
		});
	});
	$(document).on('click','#news_add',function(){
		var oNewsTitle=$('#news_title').val();
		var oNewsSummary=$('#news_summary').val();
		var oNewsContent=editor.html();
		var onewsLogo=$('#news_logo').attr('src');
		var onewsAuthor=$('#news_author').val();

		if(oNewsTitle==''||oNewsSummary==''||oNewsContent==''||onewsAuthor==''){
			$('#news_remark').text('信息不能为空！');
			$('#news_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {title: oNewsTitle, big_img: onewsLogo, author: onewsAuthor, thumbnail: onewsLogo, summary: oNewsSummary, content: oNewsContent},
				success: function(data){
					$('#news_remark').text(data.msg+'！');
					$('#news_remark').css('color','red');
					
					if(data.code==1){
						showNews(showUrl,uid);
						$('#news_remark').css('color','green');
						$('#news_title').val('');
						$('#news_summary').val('');
						$('#news_content').val('');
						editor.html('');
						$('#news_author').val('');
						setTimeout(function(){$('#news_window').fadeOut()},600);
						$('.news-list').css({'background-color':'','color':'#666'});
						$('#all_news').css({'background-color':'#ccc','color':'#000'});
					}
				},
				error: function(){
					$('#news_remark').text('出错！');
					$('#news_remark').css('color','red');
				}
			});
		}
	});
};

//新闻动态页菜单切换
var newsNavClick=function(){
	$('#all_news').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','#news_cancal',function(){
		$('#news_window').fadeOut();
		$('.news-list').css({'background-color':'','color':'#666'});
		$('#all_news').css({'background-color':'#ccc','color':'#000'});
	});
	$(document).on('click','.news-list',function(){
		$('.news-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_news'){
			$('#news_window').css('display','none');
		}
		if($(this).attr('id')==='add_news'){
			$('#news_window').css('display','block');
			$('#news_title').val('');
			$('#news_summary').val('');
			$('#news_content').val('');
			$('#news_logo').attr('src','');
			editor.html('');
			$('#news_author').val('');
			$('#news_add').css('display','block');
			$('#news_update').css('display','none');
			$('#news_remark').text('');
		}
	});
};