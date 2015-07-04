$(document).ready(function(){
	var uid=$('#header_uid').attr('class');
	var api='../server/';
	var editPassUrl=api+'index.php?m=User&c=user&a=editPass';
	
	var editCompanyUrl=api+'index.php?m=Home&c=index&a=getCompany&uid=';
	var editCompanyUrl_2=api+'index.php?m=User&c=user&a=editInfo';

	var uploadUrl=api+'index.php?m=User&c=Api&a=upload';
	var addLinkUrl=api+'index.php?m=User&c=links&a=add';
	var showLinkUrl=api+'index.php?m=Home&c=views&a=getLinks';
	var deleteLinkUrl=api+'index.php?m=User&c=links&a=del';
	var updateLinkUrl=api+'index.php?m=User&c=links&a=edit';

	var addNewsUrl=api+'index.php?m=User&c=news&a=add';
	var showNewsUrl=api+'index.php?m=Home&c=views&a=getNewsList';
	var deleteNewsUrl=api+'index.php?m=User&c=news&a=del';
	var updateNewsUrl=api+'index.php?m=User&c=news&a=edit';

	var addFilmsUrl=api+'index.php?m=User&c=videos&a=add';
	var showFilmsUrl=api+'index.php?m=Home&c=views&a=getVideo';
	var deleteFilmsUrl=api+'index.php?m=User&c=videos&a=del';
	var updateFilmsUrl=api+'index.php?m=User&c=videos&a=edit';

	var addEpisodeUrl=api+'index.php?m=user&c=episodes&a=add';
	var showEpisodeUrl=api+'index.php?m=Home&c=views&a=getEpisodesList';
	var deleteEpisodeUrl=api+'index.php?m=user&c=episodes&a=del';
	var updateEpisodeUrl=api+'index.php?m=user&c=episodes&a=edit';

	var tuijianUrl=api+'index.php?m=user&c=other&a=recommend';
	var topUrl=api+'index.php?m=user&c=other&a=top';

	$('#aside-list-1').addClass('on');

	asideClick();
	setPage();
	seeMoreClick();
	filmsNavClick();
	linksNavClick();
	newsNavClick();
	controlNavClick();

	episodeNavClick();
	addEpisode(addEpisodeUrl,showEpisodeUrl,uid,uploadUrl);
	showEpisode(showEpisodeUrl,uid);
	deleteEpisode(deleteEpisodeUrl,showEpisodeUrl,uid);
	tuijianEpisode(tuijianUrl,showEpisodeUrl,uid);
	cancletuijianEpisode(tuijianUrl,showEpisodeUrl,uid);
	topEpisode(topUrl,showEpisodeUrl,uid);
	cancleTopEpisode(topUrl,showEpisodeUrl,uid);
	updateEpisode(updateEpisodeUrl,showEpisodeUrl,uid);

	updataCompany(editCompanyUrl,uid,editCompanyUrl_2,uploadUrl,api);   //修改公司信息

	editPass(editPassUrl);   //修改密码

	addFilms(addFilmsUrl,showFilmsUrl,uid,uploadUrl);     //添加影视作品
	showFilms(showFilmsUrl,uid);    //显示影视作品
	deleteFilms(deleteFilmsUrl,showFilmsUrl,uid);   //删除影视作品
	tuijianFilms(tuijianUrl,showFilmsUrl,uid);
	cancletuijianFilms(tuijianUrl,showFilmsUrl,uid);
	cancleTopFilms(topUrl,showFilmsUrl,uid);
	topFilms(topUrl,showFilmsUrl,uid);
	updateFilms(updateFilmsUrl,showFilmsUrl,uid);   //修改影视作品

	addNews(addNewsUrl,showNewsUrl,uid,uploadUrl);     //添加新闻动态
	showNews(showNewsUrl,uid);    //显示新闻动态
	deleteNews(deleteNewsUrl,showNewsUrl,uid);   //删除新闻动态
	updateNews(updateNewsUrl,showNewsUrl,uid);   //修改新闻动态
	tuijianNews(tuijianUrl,showNewsUrl,uid);
	cancletuijianNews(tuijianUrl,showNewsUrl,uid);
	cancleTopNews(topUrl,showNewsUrl,uid);
	topNews(topUrl,showNewsUrl,uid);

	addLink(addLinkUrl,showLinkUrl,uid,uploadUrl);     //添加友情链接
	showLink(showLinkUrl,uid);    //显示友情链接
	deleteLink(deleteLinkUrl,showLinkUrl,uid);   //删除友情链接
	updateLink(updateLinkUrl,showLinkUrl,uid);   //修改友情链接

	$(document).on('click','#close-upload',function(){
		$('#upload-img').fadeOut();
	});
});

//密码修改
var editPass=function(url){
	$(document).on('click','#editPass',function(){
		var sOldPass=$('#oldPass').val();
		var sNewPass=$('#newPass').val();
		var sNewPass_2=$('#newPass_2').val();

		if(sOldPass==''||sNewPass==''||sNewPass_2==''){
			$('#edit_remark').text('密码不能为空！');
			$('#edit_remark').css('color','red');
		}else if(sNewPass!=sNewPass_2){
			$('#edit_remark').text('两次输入新密码不同！');
			$('#edit_remark').css('color','red');
		}else if(sNewPass===sNewPass_2){

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {oldPass: sOldPass, newPass: sNewPass},
				success: function(data){
					$('#edit_remark').text(data.msg+'！');
					$('#link_remark').css('color','red');
					
					if(data.code==1){
						$('#edit_remark').css('color','green');
						$('#header-login').css('display','block');
					}
				},
				error: function(){
					$('#edit_remark').text('出错！');
					$('#edit_remark').css('color','red');
				}
			});
		}else{
			$('#edit_remark').text('出错！');
			$('#edit_remark').css('color','red');
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
		if(oId==='aside-list-7'){
			$('.content').css({'display':'none'});
			$('#content-7').css({'display':'block'});
		}
	});
};

//点击首页查看更多切换页面
var seeMoreClick=function(){
	$(document).on('click','#see_more_links',function(){
		$('.aside-list').removeClass('on');
		$('#aside-list-4').addClass('on');
		$('.content').css({'display':'none'});
		$('#content-4').css({'display':'block'});
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
	if(index==='control'){
		$('.content').css({'display':'none'});
		$('#content-6').css({'display':'block'});
		$('#aside-list-6').addClass('on');
	}
	if(index==='episode'){
		$('.content').css({'display':'none'});
		$('#content-7').css({'display':'block'});
		$('#aside-list-7').addClass('on');
	}
};