$(document).ready(function(){
	$('#aside-list-1').addClass('on');

	var api='../server/';
	var userUrl=api+'index.php?m=Admin&c=views&a=getUser&p=1';
	var controlUrl=api+'index.php?m=Admin&c=manage&a=dealUser';

	var filmsUrl=api+'index.php?m=Admin&c=views&a=getVideos';
	var delFilmsUrl=api+'index.php?m=Admin&c=manage&a=dealVideos';

	var newsUrl=api+'index.php?m=Admin&c=views&a=getNews';
	var delNewsUrl=api+'index.php?m=Admin&c=manage&a=dealNews';

	var linksUrl=api+'index.php?m=Admin&c=views&a=getLinks';
	var delLinksUrl=api+'index.php?m=Admin&c=manage&a=dealLinks';

	var episodeUrl=api+'index.php?m=Home&c=views&a=getEpisodesAll';
	var delEpisodeUrl=api+'index.php?m=user&c=episodes&a=del';

	asideClick();
	setPage();
	seeMoreClick();
	filmsNavClick();
	linksNavClick();
	controlNavClick();
	userClick();

	showAllUser(userUrl);
	showNewUser(userUrl);
	showEnaUser(userUrl);
	showDisUser(userUrl);
	delUser(controlUrl,userUrl);

	showFilms(filmsUrl);
	delFilms(delFilmsUrl,filmsUrl);

	showNews(newsUrl);
	deleteNews(delNewsUrl,newsUrl);

	showEpisode(episodeUrl);
	deleteEpisode(delEpisodeUrl,episodeUrl);

	showLinks(linksUrl);
	deleteLinks(delLinksUrl,linksUrl);

	// closeLinksWinodw();
	// showLinksWindow();
	// closeFilmsWinodw(filmsUrl);
	// showFilmsWindow();

});
//关闭影视作品详情
var closeFilmsWinodw=function(){
	$(document).on('click','#closeFilms-window',function(){
		$('#films-window').fadeOut();
	});
};
//显示影视作品详情
var showFilmsWindow=function(url){
	$(document).on('click','.show_films',function(){
		if(event.preventDefault){
			event.preventDefault();
		}
		else{
			window.event.returnValue=false;
		}
		$('#films-window').fadeIn();
		var filmsId=$(this).attr('id').substr(11);
		$.ajax({
			type: 'get',
			url: url,
			dataType: 'json',
			data: {p: 1},
			success: function(data){

			}
		});
	});
};

//关闭友情链接详情
var closeLinksWinodw=function(){
	$(document).on('click','#closeLinks-window',function(){
		$('#links-window').fadeOut();
	});
};

//显示友情链接详情
var showLinksWindow=function(){
	$(document).on('click','.showLinks-window',function(){
		if(event.preventDefault){
			event.preventDefault();
		}
		else{
			window.event.returnValue=false;
		}
		$('#links-window').fadeIn();
		var linksId=$(this).attr('id').substr(11);
	});
};

//删除友情链接
var deleteLinks=function(url,showUrl){
	$(document).on('click','.delete_links',function(){

		var linksId=$(this).attr('id').substr(13);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: linksId, action: 'del'},
				success: function(data){
					if(data.code==1){
						//alert(data.msg+'！');
						showLinks(showUrl);

					}
				}
			});
		}
	});
};

//显示友情链接
var showLinks=function(url){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {p: 1},
		success: function(data){
			if(data.code==1){
				//$('#home_links').html('');
				$('#links_number').text(' ('+data.data.length+')');
				$('#content-links-list').html('');


				for(var linksNumber in data.data){

					$('#content-links-list').append('<div class="show-main-links">'+
														'<a href="'+data.data[linksNumber].info+'" target="_blank"><img class="links-img" src="'+data.data[linksNumber].logo+'" /></a>'+
														'<div id="links-delete-'+data.data[linksNumber].id+'" class="delete_links">删除</div>'+
														'<div id="links-show-'+data.data[linksNumber].id+'" class="showLinks-window">公司：'+data.data[linksNumber].company_name+'</div>'+
													'</div>');
				}
			}else{
				$('#content-links-list').html('<span class="con-remark">还未添加链接</span>');
				//$('#home_links').html('<span class="con-remark">还未添加链接</span>');
				$('#links_number').text('');
			}
		},
		error: function(){
			$('#content-links-list').html('<span class="con-remark">显示出错！</span>');
		}
	});
};

//删除新闻动态
var deleteNews=function(url,showUrl){
	$(document).on('click','.delete_news',function(){
		var newsId=$(this).attr('id').substr(12);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: newsId, action: 'del'},
				success: function(data){
					if(data.code==1){
						//alert(data.msg+'！');
						showNews(showUrl);

					}
				}
			});
		}
	});
};

var deleteEpisode=function(url,showUrl){
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
						showEpisode(showUrl);
					}
				}
			});
		}
	});
};

//剧集显示
var showEpisode=function(url){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {p: 1},
		success: function(data){
			if(data.code==1){
				$('#episode_number').text(' ('+data.data.length+')');
				$('#content-episode-list').html('');
				$('#page-episode-war').html('');
				var newsLen=parseInt(data.data.length/5);
				if(data.data.length%5!=0){
					newsLen+=1;
				}
				if(newsLen){
					for(var i=0;i<newsLen;i++){
						$('#page-episode-war').append('<div id="episodePage-'+(i+1)+'" class="page-list pageEpisode-list">'+(i+1)+'</div>');
					}
				}

				for(var newsNumber in data.data){

					var sty=null;
					if(data.data[newsNumber].recommend==1)
						sty="#fff url('./images/jian.png') top right no-repeat;";
					else{
						sty="#fff;";
					}

					if(newsNumber<5){
						$('#content-episode-list').append('<div id="episode-'+data.data[newsNumber].id+'" style="display: block; background:'+sty+'" class="show-main-list show-episode-con show-episode-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
							'<h1><span class="title-list-link"><a class="link_title" target="_blank" href="../episode.php?uid='+data.data[newsNumber].uid+'&id='+data.data[newsNumber].id+'">'+data.data[newsNumber].title+'</a></span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;作者：<span>'+data.data[newsNumber].author+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;用户ID：<span>'+data.data[newsNumber].uid+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="episode-delete-'+data.data[newsNumber].id+'" class="delete_episode">删除</span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}else{
						$('#content-episode-list').append('<div id="episode-'+data.data[newsNumber].id+'" style="display: none; background:'+sty+'" class="show-main-list show-episode-con show-episode-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
							'<h1><span class="title-list-link"><a class="link_title" target="_blank" href="../episode.php?uid='+data.data[newsNumber].uid+'&id='+data.data[newsNumber].id+'">'+data.data[newsNumber].title+'</a></span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;作者：<span>'+data.data[newsNumber].author+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;公司：<span>'+data.data[newsNumber].uid+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="episode-delete-'+data.data[newsNumber].id+'" class="delete_episode">删除</span>'+
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

//显示新闻
var showNews=function(url){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {p: 1},
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
					var sty=null;
					if(data.data[newsNumber].recommend==1)
						sty="#fff url('./images/jian.png') top right no-repeat;";
					else{
						sty="#fff;";
					}

					if(newsNumber<5){
						$('#content-news-list').append('<div id="news-'+data.data[newsNumber].id+'" style="display: block; background:'+sty+'" class="show-main-list show-news-con show-news-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
							'<h1><span class="title-list-link"><a class="link_title" target="_blank" href="../detail.php?uid='+data.data[newsNumber].uid+'&id='+data.data[newsNumber].id+'">'+data.data[newsNumber].title+'</a></span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;作者：<span>'+data.data[newsNumber].author+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;用户ID：<span>'+data.data[newsNumber].uid+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="news-delete-'+data.data[newsNumber].id+'" class="delete_news">删除</span>'+
								'</div>'+
							'</div>'+
						'</div>');
					}else{
						$('#content-news-list').append('<div id="news-'+data.data[newsNumber].id+'" style="background:'+sty+'" class="show-main-list show-news-con show-news-con'+newsNumber+'">'+
							'<img src="'+data.data[newsNumber].thumbnail+'" class="show-list show-list-thum" />'+
							'<div class="show-list show-list-right">'+
							'<h1><span class="title-list-link"><a class="link_title" target="_blank" href="../detail.php?uid='+data.data[newsNumber].uid+'&id='+data.data[newsNumber].id+'">'+data.data[newsNumber].title+'</a></span></h1>'+
								'<h2><div class="content-list-con">'+data.data[newsNumber].summary+'</div></h2>'+
								'<input type="hidden" class="content-list-content" value="'+data.data[newsNumber].content+'" />'+
								'<div class="content-list-mess">'+
									'<div class="content-mess-con">访问次数：<span>'+data.data[newsNumber].views+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;作者：<span>'+data.data[newsNumber].author+'</span>'+
									'&nbsp;&nbsp;&nbsp;&nbsp;公司：<span>'+data.data[newsNumber].uid+'</span></div>'+
								'</div>'+
								'<div class="delete-update">'+
									'<span id="news-delete-'+data.data[newsNumber].id+'" class="delete_news">删除</span>'+
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

//影视作品删除
var delFilms=function(url,showUrl){
	$(document).on('click','.delete_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: filmsId, action: 'del'},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl);
					}
				}
			});
		}
	});
};

//影视作品显示
var showFilms=function(url){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {p: 1},
		success: function(data){
			if(data.code==1){
				$('#home_films').html('');
				$('#films_number').text(' ('+data.data.length+')');
				$('#content-films-list').html('');
				$('#page-films-war').html('');
				var filmsLen=parseInt(data.data.length/5);
				if(data.data.length%5!=0){
					filmsLen+=1;
				}
				if(filmsLen){
					for(var i=0;i<filmsLen;i++){
						$('#page-films-war').append('<div id="filmsPage-'+(i+1)+'" class="page-list pageFilms-list">'+(i+1)+'</div>');
					}
				}


				for(var filmsNumber in data.data){
					var sContent=null;
					if(data.data[filmsNumber].title.length>=8){
						sContent=data.data[filmsNumber].title.substr(0,8)+'...';
					}else{
						sContent=data.data[filmsNumber].title;
					}
					if(filmsNumber<6){
						$('#home_films').append('<div href="'+data.data[filmsNumber].url+'" style="background: #eee; float: left;" class="content-films-list">'+
								'<a href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
								'<div class="films-title-sty">'+sContent+'</div>'+
							'</div>');
					}

					var sty=null;
					if(data.data[filmsNumber].recommend==1)
						sty="#fff url('./images/jian.png') top right no-repeat;";
					else{
						sty="#fff;";
					}

					if(filmsNumber<5){
						$('#content-films-list').append('<div id="films-'+data.data[filmsNumber].id+'" style="display: block; background: '+sty+'" class="content-films-list content-films-list-sty content-films-con content-films-list'+filmsNumber+'">'+
								'<div class="films-delete-update">'+
									'<span id="films-delete-'+data.data[filmsNumber].id+'" class="delete_films">删除</span>'+
								'</div>'+
								'<a style="float: left; margin-right: 20px;" href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
								'<div class="zFilms-right-style">'+
								'<div class="films-title-sty"><a class="link_title" target="_blank" href="../video.php?uid='+data.data[filmsNumber].uid+'&id='+data.data[filmsNumber].id+'">'+data.data[filmsNumber].title+'</a></div>'+
									'<div class="films-detail-sty">'+$('<div/>').html(data.data[filmsNumber].detail).text()+'</div>'+
									'<div class="user-mess-id">用户ID：'+data.data[filmsNumber].uid+'</div>'+
								'</div>'+
							'</div>');
					}else{
						$('#content-films-list').append('<div id="films-'+data.data[filmsNumber].id+'" style="background: '+sty+'" class="content-films-list content-films-list-sty content-films-con content-films-list'+filmsNumber+'">'+
								'<div class="films-delete-update">'+
									'<span id="films-delete-'+data.data[filmsNumber].id+'" class="delete_films">删除</span>'+
								'</div>'+
								'<a style="float: left; margin-right: 20px;" href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
								'<div class="films-title-sty"><a class="link_title" target="_blank" href="../video.php?uid='+data.data[filmsNumber].uid+'&id='+data.data[filmsNumber].id+'">'+data.data[filmsNumber].title+'</a></div>'+
								'<div class="films-detail-sty">'+$('<div/>').html(data.data[filmsNumber].detail).text()+'</div>'+
								'<div class="user-mess-id">用户ID：'+data.data[filmsNumber].uid+'</div>'+
							'</div>');
					}
				}
			}else{
				$('#content-films-list').html('<span class="con-remark">还未添加影视作品！</span>');
				$('#home_films').html('<span class="con-remark">还未上传作品</span>');
				$('#films_number').text('');
			}
		},
		error: function(){
			$('#content-films-list').html('<span class="con-remark">显示出错！</span>');
		}
	});
	$(document).on('click','.pageFilms-list',function(){
		var pageNumber=$(this).attr('id').substr(10);
		//alert(pageNumber);
		$('.content-films-con').css('display','none');
		for(var j=0; j<5; j++){
			var index=(pageNumber-1)*5+1*j;
			//alert(index);
			$('.content-films-list'+index).css('display','block');
		}
	});
};

//用户操作
var delUser=function(url,showUrl){
	$(document).on('click','.user-del,.user-1,.user-2,.user-3',function(){
		var delResult=confirm("是否继续该操作？");
		if(delResult){
			var objClass=$(this).attr('class');
			var action='';
			if(objClass=='user-del'){
				action='del';
			}else if(objClass=='user-1'){
				action='enabled';
			}else if(objClass=='user-2'){
				action='disable';
			}else if(objClass=='user-3'){
				action='enabled';
			}
			var uid=$(this).parent('.user-list-control').attr('id').substr(9);
			//alert(uid);
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: { uid: uid, action: action},
				success: function(data){
					if(data.code==1){
						showAllUser(showUrl);
						showNewUser(showUrl);
						showEnaUser(showUrl);
						showDisUser(showUrl);
					}
					//alert(data.msg);
				}
			});
		}
	});
};

//所有用户显示
var showAllUser=function(url){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		success: function(data){
			if(data.data==null){
				$('#all_user_number').text('');
				$('#user-all-list').html('<span class="con-remark">没有用户</span>');
			}
			if(data.data!=null){
				$('#all_user_number').text('('+(data.count-1)+')');
				$('#user-all-list').html('');
				for(var userNumber in data.data){
					$('#user-all-list').append('<div class="user-list-sty">'+
							'<img class="user-list-img" alt="'+data.data[userNumber].company_name+'" src="'+data.data[userNumber].banner_url+'" />'+
							//'<div id="user-all-'+data.data[userNumber].uid+'" class="user-list-control"><span class="user-del">删除</span></div>'+
							'<div class="user-list-mess">'+
								'<div class="user-mess-sty user-username">用户名：<span class="user-mess-content">'+data.data[userNumber].username+'</span></div>'+
								'<div class="user-mess-sty user-id">用户ID：<span class="user-mess-content">'+data.data[userNumber].uid+'</span></div>'+
								'<div class="user-mess-sty user-id">公司ID：<span class="user-mess-content">'+data.data[userNumber].id+'</span></div>'+
								'<div class="user-mess-sty user-company">公司名：<span class="user-mess-content">'+data.data[userNumber].company_name+'</span></div>'+
								'<div class="user-mess-sty user-tel">公司电话：<span class="user-mess-content">'+data.data[userNumber].company_tel+'</span></div>'+
								'<div class="user-mess-sty user-mail">公司邮箱：<span class="user-mess-content">'+data.data[userNumber].company_mail+'</span></div>'+
							'</div>'+
						'</div>');
				}
			}
		}
	});
};
//待审核用户显示
var showNewUser=function(url){
	$.ajax({
		type: 'post',
		url: url,
		dataType: 'json',
		data: {action: 'status', status: 'new'},
		success: function(data){
			if(data.data==null){
				$('#che_user_number').text('');
				$('#user-new-list').html('<span class="con-remark">没有待审核用户</span>');
				$('#home-user-list').html('<span class="con-remark">没有待审核用户</span>');
			}
			if(data.data!=null){
				$('#home-user-list').html('');
				$('#user-new-list').html('');
				$('#che_user_number').text('('+data.data.length+')');
				for(var userNumber in data.data){
					$('#home-user-list').append('<img alt="'+data.data[userNumber].company_name+'" class="user-list-logo" src="'+data.data[userNumber].banner_url+'" />');
					$('#user-new-list').append('<div class="user-list-sty">'+
							'<img alt="'+data.data[userNumber].company_name+'" class="user-list-img" src="'+data.data[userNumber].banner_url+'" />'+
							'<div id="user-che-'+data.data[userNumber].uid+'" class="user-list-control"><span class="user-del">删除</span> <span class="user-1">审核通过</span></div>'+
							'<div class="user-list-mess">'+
								'<div class="user-mess-sty user-username">用户名：<span class="user-mess-content">'+data.data[userNumber].username+'</span></div>'+
								'<div class="user-mess-sty user-id">用户ID：<span class="user-mess-content">'+data.data[userNumber].uid+'</span></div>'+
								'<div class="user-mess-sty user-id">公司ID：<span class="user-mess-content">'+data.data[userNumber].id+'</span></div>'+
								'<div class="user-mess-sty user-company">公司名：<span class="user-mess-content">'+data.data[userNumber].company_name+'</span></div>'+
								'<div class="user-mess-sty user-tel">公司电话：<span class="user-mess-content">'+data.data[userNumber].company_tel+'</span></div>'+
								'<div class="user-mess-sty user-mail">公司邮箱：<span class="user-mess-content">'+data.data[userNumber].company_mail+'</span></div>'+
							'</div>'+
						'</div>');
				}
			}
		}
	});
};
//已启用用户显示
var showEnaUser=function(url){
	$.ajax({
		type: 'post',
		url: url,
		dataType: 'json',
		data: {action: 'status', status: 'enabled'},
		success: function(data){
			if(data.data==null){
				$('#ena_user_number').text('');
				$('#user-ena-list').html('<span class="con-remark">没有启用用户</span>');
			}
			if(data.data!=null){
				$('#ena_user_number').text('('+data.data.length+')');
				$('#user-ena-list').html('');
				for(var userNumber in data.data){
					$('#user-ena-list').append('<div class="user-list-sty">'+
							'<img alt="'+data.data[userNumber].company_name+'" class="user-list-img" src="'+data.data[userNumber].banner_url+'" />'+
							'<div id="user-ena-'+data.data[userNumber].uid+'" class="user-list-control"><span class="user-del">删除</span> <span class="user-2">禁用</span></div>'+
							'<div class="user-list-mess">'+
								'<div class="user-mess-sty user-username">用户名：<span class="user-mess-content">'+data.data[userNumber].username+'</span></div>'+
								'<div class="user-mess-sty user-id">用户ID：<span class="user-mess-content">'+data.data[userNumber].uid+'</span></div>'+
								'<div class="user-mess-sty user-id">公司ID：<span class="user-mess-content">'+data.data[userNumber].id+'</span></div>'+
								'<div class="user-mess-sty user-company">公司名：<span class="user-mess-content">'+data.data[userNumber].company_name+'</span></div>'+
								'<div class="user-mess-sty user-tel">公司电话：<span class="user-mess-content">'+data.data[userNumber].company_tel+'</span></div>'+
								'<div class="user-mess-sty user-mail">公司邮箱：<span class="user-mess-content">'+data.data[userNumber].company_mail+'</span></div>'+
							'</div>'+
						'</div>');
				}
			}
		}
	});
};
//已禁用用户显示
var showDisUser=function(url){
	$.ajax({
		type: 'post',
		url: url,
		dataType: 'json',
		data: {action: 'status', status: 'disable'},
		success: function(data){
			if(data.data==null){
				$('#dis_user_number').text('');
				$('#user-dis-list').html('<span class="con-remark">没有被禁用用户</span>');
			}
			if(data.data!=null){
				$('#dis_user_number').text('('+data.data.length+')');
				$('#user-dis-list').html('');
				for(var userNumber in data.data){
					$('#user-dis-list').append('<div class="user-list-sty">'+
							'<img alt="'+data.data[userNumber].company_name+'" class="user-list-img" src="'+data.data[userNumber].banner_url+'" />'+
							'<div id="user-ena-'+data.data[userNumber].uid+'" class="user-list-control"><span class="user-del">删除</span> <span class="user-3">启用</span></div>'+
							'<div class="user-list-mess">'+
								'<div class="user-mess-sty user-username">用户名：<span class="user-mess-content">'+data.data[userNumber].username+'</span></div>'+
								'<div class="user-mess-sty user-id">用户ID：<span class="user-mess-content">'+data.data[userNumber].uid+'</span></div>'+
								'<div class="user-mess-sty user-id">公司ID：<span class="user-mess-content">'+data.data[userNumber].id+'</span></div>'+
								'<div class="user-mess-sty user-company">公司名：<span class="user-mess-content">'+data.data[userNumber].company_name+'</span></div>'+
								'<div class="user-mess-sty user-tel">公司电话：<span class="user-mess-content">'+data.data[userNumber].company_tel+'</span></div>'+
								'<div class="user-mess-sty user-mail">公司邮箱：<span class="user-mess-content">'+data.data[userNumber].company_mail+'</span></div>'+
							'</div>'+
						'</div>');
				}
			}
		}
	});
};

//用户管理页菜单切换
var userClick=function(){
	$('#all_user').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','.user-list',function(){
		$('.user-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_user'){
			$('.content-user-click').css({'display':'none'});
			$('#content-user-1').css({'display':'block'});
		}
		if($(this).attr('id')==='disable_user'){
			$('.content-user-click').css({'display':'none'});
			$('#content-user-2').css({'display':'block'});
		}
		if($(this).attr('id')==='check_user'){
			$('.content-user-click').css({'display':'none'});
			$('#content-user-3').css({'display':'block'});
		}
		if($(this).attr('id')==='enabled_user'){
			$('.content-user-click').css({'display':'none'});
			$('#content-user-4').css({'display':'block'});
		}
	});
};

//账户设置页菜单切换
var controlNavClick=function(){
	$('#update_pass').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','.control-list',function(){
		$('.control-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='update_pass'){
			$('.content-control-click').css({'display':'none'});
			$('#content-control-1').css({'display':'block'});
		}
		if($(this).attr('id')==='delete_user'){
			$('.content-control-click').css({'display':'none'});
			$('#content-control-2').css({'display':'block'});
		}
	});
};

//友情链接页菜单切换
var linksNavClick=function(){
	$('#all_links').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','.links-list',function(){
		$('.links-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_links'){
			$('.content-links-click').css({'display':'none'});
			$('#content-links-1').css({'display':'block'});
		}
		if($(this).attr('id')==='add_links'){
			$('.content-links-click').css({'display':'none'});
			$('#content-links-2').css({'display':'block'});
		}
		if($(this).attr('id')==='update_links'){
			$('.content-links-click').css({'display':'none'});
			$('#content-links-3').css({'display':'block'});
		}
		if($(this).attr('id')==='delete_links'){
			$('.content-links-click').css({'display':'none'});
			$('#content-links-4').css({'display':'block'});
		}
	});
};

//影视作品页菜单切换
var filmsNavClick=function(){
	$('#all_films').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','.films-list',function(){
		$('.films-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_films'){
			$('.content-films-click').css({'display':'none'});
			$('#content-films-1').css({'display':'block'});
		}
		if($(this).attr('id')==='add_films'){
			$('.content-films-click').css({'display':'none'});
			$('#content-films-2').css({'display':'block'});
		}
		if($(this).attr('id')==='update_films'){
			$('.content-films-click').css({'display':'none'});
			$('#content-films-3').css({'display':'block'});
		}
		if($(this).attr('id')==='delete_films'){
			$('.content-films-click').css({'display':'none'});
			$('#content-films-4').css({'display':'block'});
		}
	});
};

//点击左侧导航栏切换页面
var asideClick=function(){
	$(document).on('click','.aside-list',function(){
		$('.aside-list').removeClass('on');
		$(this).addClass('on');

		var oId=$(this).attr('id');
		if(oId==='aside-list-1'){
			$('.content').css({'display':'none'});
			$('#content-1').css({'display':'block'});
		}
		if(oId==='aside-list-2'){
			$('.content').css({'display':'none'});
			$('#content-2').css({'display':'block'});
		}
		if(oId==='aside-list-3'){
			$('.content').css({'display':'none'});
			$('#content-3').css({'display':'block'});
		}
		if(oId==='aside-list-4'){
			$('.content').css({'display':'none'});
			$('#content-4').css({'display':'block'});
		}
		if(oId==='aside-list-5'){
			$('.content').css({'display':'none'});
			$('#content-5').css({'display':'block'});
		}
		if(oId==='aside-list-6'){
			$('.content').css({'display':'none'});
			$('#content-6').css({'display':'block'});
		}
	});
};

//点击首页查看更多切换页面
var seeMoreClick=function(){
	$(document).on('click','#see_more_company',function(){
		$('.aside-list').removeClass('on');
		$('#aside-list-5').addClass('on');
		$('.content').css({'display':'none'});
		$('#content-5').css({'display':'block'});
	});
	$(document).on('click','#see_more_films',function(){
		$('.aside-list').removeClass('on');
		$('#aside-list-2').addClass('on');
		$('.content').css({'display':'none'});
		$('#content-2').css({'display':'block'});
	});
	$(document).on('click','#see_more_news',function(){
		$('.aside-list').removeClass('on');
		$('#aside-list-3').addClass('on');
		$('.content').css({'display':'none'});
		$('#content-3').css({'display':'block'});
	});
};

//页面刷新保持操作页不变
var setPage=function(){
	var link=window.location.href;
	var index=link.split('#')[1];
	//alert(index);
	$('.aside-list').removeClass('on');

	if(index==undefined){
		$('#aside-list-1').addClass('on');
	}
	if(index==='home'){
		$('.content').css({'display':'none'});
		$('#content-1').css({'display':'block'});
		$('#aside-list-1').addClass('on');
	}
	if(index==='films'){
		$('.content').css({'display':'none'});
		$('#content-2').css({'display':'block'});
		$('#aside-list-2').addClass('on');
	}
	if(index==='news'){
		$('.content').css({'display':'none'});
		$('#content-3').css({'display':'block'});
		$('#aside-list-3').addClass('on');
	}
	if(index==='links'){
		$('.content').css({'display':'none'});
		$('#content-4').css({'display':'block'});
		$('#aside-list-4').addClass('on');
	}
	if(index==='company'){
		$('.content').css({'display':'none'});
		$('#content-5').css({'display':'block'});
		$('#aside-list-5').addClass('on');
	}
	if(index==='episode'){
		$('.content').css({'display':'none'});
		$('#content-6').css({'display':'block'});
		$('#aside-list-6').addClass('on');
	}
};
