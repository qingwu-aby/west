//影视作品页菜单切换
var filmsNavClick=function(){
	$('#all_films').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','#films_cancal',function(){
		$('#films_window').fadeOut();
		$('.films-list').css({'background-color':'','color':'#666'});
		$('#all_films').css({'background-color':'#ccc','color':'#000'});
	});
	$(document).on('click','.films-list',function(){
		$('.films-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_films'){
			$('#content-films-title').text('影视作品');

		}
		if($(this).attr('id')==='add_films'){
			$('#content-films-title').text('影视作品');
			$('#films_window_title').text('添加影视作品');
			$('#films_window').css('display','block');
			$('#films_title').val('');
			$('#films_link').val('');
			$('#films_logo').attr('src','');
			$('#films_add').css('display','block');
			$('#films_update').css('display','none');
			$('#films_remark').text('');
		}
		// if($(this).attr('id')==='update_films'){
		// 	$('#content-films-title').text('影视作品');
		// }
		// if($(this).attr('id')==='delete_films'){
		// 	$('#content-films-title').text('影视作品');
		// }
	});
};

//修改
var updateFilms=function(url,showUrl,uid){
	var FilmsId;
	// $(document).on('click','#films_logo',function(){
	// 		$('#upload-img').fadeIn();
	// 	});
	// 	$(document).on('click','#img-films',function(){
	// 		var newsImgSrc=$('#show .img-link:last-child').text();
	// 		$('#films_logo').attr('src','./uploads'+newsImgSrc);
	// 		$('#upload-img').fadeOut();
	// 	});
	$(document).on('click','.update_films',function(){

		FilmsId=$(this).attr('id').substr(13);
		var filmsLink=$('#films-'+FilmsId).find('.films-link-a').attr('href');
		var filmsTitle=$('#films-'+FilmsId).find('.films-title-sty').text();
		var filmsLogo=$('#films-'+FilmsId).find('.films-image-sty').attr('src');

		$('#films_window_title').text('修改影视作品');
		$('#films_window').css('display','block');
		$('#films_title').val(filmsTitle);
		$('#films_logo').attr('src',filmsLogo);
		$('#films_link').val(filmsLink);
		$('#films_remark').text('');
		$('#films_add').css('display','none');
		$('#films_update').css('display','block');
	});
	$(document).on('click','#films_update',function(){
		var filmsTitle=$('#films_title').val();
		var filmsLink=$('#films_link').val();
		var filmsLogo=$('#films_logo').attr('src');

		if(filmsTitle==''||filmsLink==''){
			$('#films_remark').text('信息不能为空！');
			$('#films_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: FilmsId,title: filmsTitle, url: filmsLink, pic: filmsLogo},
				success: function(data){
					$('#films_remark').text(data.msg+'！');
					$('#films_remark').css('color','red');

					if(data.code==1){
						showFilms(showUrl,uid);
						$('#films_remark').css('color','green');
						setTimeout(function(){$('#films_window').fadeOut()},500);
					}
				},
				error: function(){
					$('#films_remark').text('出错！');
					$('#films_remark').css('color','red');
				}
			});
		}
	});
};

//删除影视作品
var deleteFilms=function(url,showUrl,uid){
	$(document).on('click','.delete_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: filmsId},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl,uid);
					}
				}
			});
		}
	});
};

//显示影视作品
var showFilms=function(url,uid){
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {uid: uid, p: 1},
		success: function(data){
			if(data.code==1){
				$('#home_films').html('');
				$('#films_number').text(' ('+data.data.length+')');
				$('#content-films-list').html('');
				for(var filmsNumber in data.data){
					var sContent=null;
					if(data.data[filmsNumber].title.length>=8){
						sContent=data.data[filmsNumber].title.substr(0,8)+'...';
					}else{
						sContent=data.data[filmsNumber].title;
					}
					if(filmsNumber<6){
						$('#home_films').append('<a href="'+data.data[filmsNumber].url+'" target="_blank" style="background: #eee;" class="content-films-list">'+
								'<img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" />'+
								'<div class="films-title-sty">'+sContent+'</div>'+
							'</a>');
					}

					$('#content-films-list').append('<div id="films-'+data.data[filmsNumber].id+'" class="content-films-list">'+
								'<div class="films-delete-update">'+
									'<span id="films-update-'+data.data[filmsNumber].id+'" class="update_films">修改</span>  <span id="films-delete-'+data.data[filmsNumber].id+'" class="delete_films">删除</span>'+
								'</div>'+
								'<a class="films-link-a" href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
								'<div class="films-title-sty">'+data.data[filmsNumber].title+'</div>'+
							'</div>');
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
};

//添加影视作品
var addFilms=function(url,showUrl,uid,uploadUrl){

	// $(document).on('click','#films_logo',function(){
	// 		$('#upload-img').fadeIn();
	// 	});
	// 	$(document).on('click','#img-films',function(){
	// 		var newsImgSrc=$('#show .img-link:last-child').text();
	// 		$('#films_logo').attr('src','./uploads'+newsImgSrc);
	// 		$('#upload-img').fadeOut();
	// 	});
	$(document).on('change','#filmsUp_logo',function(){

		$.ajaxFileUpload({
			url: uploadUrl,
			secureuri: false, //是否需要安全协议，一般设置为false
      		fileElementId: 'filmsUp_logo', //文件上传域的ID
			dataType: 'json',
			data: {filename: 'filename'},
			success: function(data, status){
				//var result=JSON.parse(data.replace(/<pre style=\"word-wrap: break-word; white-space: pre-wrap;\">|<\/pre>/ig,''));
				var result=data;
				if(result.code==1){
					var image_url=result.data.img_url.substr(3);
					$('#films_logo').attr('src','../server'+image_url);
				}else{
					alert('上传失败！');
				}
				//$('#div_message').text(result.data.img_url);
			},
			error: function(data, status, e){
				alert('上传错误！');
			}
		});
	});
	$(document).on('click','#films_add',function(){
		var oFilmsTitle=$('#films_title').val();
		var oFilmsLink=$('#films_link').val();
		var oFilmsLogo=$('#films_logo').attr('src');

		if(oFilmsTitle==''||oFilmsLink==''){
			$('#films_remark').text('信息不能为空！');
			$('#films_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {title: oFilmsTitle, url: oFilmsLink, pic: oFilmsLogo},
				success: function(data){
					$('#films_remark').text(data.msg+'！');
					$('#films_remark').css('color','red');

					if(data.code==1){
						showFilms(showUrl,uid);
						$('#films_remark').css('color','green');
						$('#films_title').val('');
						$('#films_link').val('');

						$('#films_window').fadeOut(500);
						$('.films-list').css({'background-color':'','color':'#666'});
						$('#all_films').css({'background-color':'#ccc','color':'#000'});
					}
				},
				error: function(){
					$('#films_remark').text('出错！');
					$('#films_remark').css('color','red');
				}
			});
		}
	});
};
