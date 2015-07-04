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

//编辑
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
		var filmsDetail=$('#films-'+FilmsId).find('.films-detail-sty').html();

		$('#films_window_title').text('编辑影视作品');
		$('#films_window').css('display','block');
		$('#films_title').val(filmsTitle);
		$('#films_logo').attr('src',filmsLogo);
		$('#films_link').val(filmsLink);
		$('#films_remark').text('');
		$('#films_add').css('display','none');
		$('#films_update').css('display','block');
		editor2.html(filmsDetail);
	});
	$(document).on('click','#films_update',function(){
		var filmsTitle=$('#films_title').val();
		var filmsLink=$('#films_link').val();
		var filmsLogo=$('#films_logo').attr('src');
		var filmsDetail=editor2.html();

		if(filmsTitle==''||filmsLink==''){
			$('#films_remark').text('信息不能为空！');
			$('#films_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: FilmsId,title: filmsTitle, url: filmsLink, pic: filmsLogo, detail: filmsDetail},
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

//推荐影视作品
var tuijianFilms=function(url,showUrl,uid){
	$(document).on('click','.mlgb11_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'video', status: 1, id: filmsId},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl,uid);
					}
				}
			});
		//}
	});
};

//取消推荐影视作品
var cancletuijianFilms=function(url,showUrl,uid){
	$(document).on('click','.mlgb12_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'video', status: 0, id: filmsId},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl,uid);
					}
				}
			});
		//}
	});
};

//置顶影视作品
var topFilms=function(url,showUrl,uid){
	$(document).on('click','.mlgb21_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'video', status: 1, id: filmsId},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl,uid);
					}
				}
			});
		//}
	});
};

//取消置顶影视作品
var cancleTopFilms=function(url,showUrl,uid){
	$(document).on('click','.mlgb22_films',function(){

		var filmsId=$(this).attr('id').substr(13);
		// var delResult=confirm("是否删除？");
		// if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {action: 'video', status: 0, id: filmsId},
				success: function(data){
					if(data.code==1){
						showFilms(showUrl,uid);
					}
				}
			});
		//}
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
						$('#home_films').append('<a href="'+data.data[filmsNumber].url+'" target="_blank" style="background: #eee; float: left;" class="content-films-list">'+
								'<img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" />'+
								'<div class="films-title-sty">'+sContent+'</div>'+
							'</a>');
					}

					var mlgb11=data.data[filmsNumber].recommend==1?'none':'block';
					var mlgb12=data.data[filmsNumber].recommend==0?'none':'block';
					var mlgb21=data.data[filmsNumber].top==1?'none':'block';
					var mlgb22=data.data[filmsNumber].top==0?'none':'block';

					if(filmsNumber<5){
						$('#content-films-list').append('<div id="films-'+data.data[filmsNumber].id+'" style="padding: 20px; margin: 0; margin-bottom: 20px; display: block;" class="content-films-list show-films-con show-films-con'+filmsNumber+'">'+
									'<div class="films-delete-update" style="position: absolute; top: 20px; right: 20px;">'+
										'<span id="films-update-'+data.data[filmsNumber].id+'" class="update_films control_films"> 编辑 </span>'+
										'<span id="films-delete-'+data.data[filmsNumber].id+'" class="delete_films control_films"> 删除 </span>'+
										'<span id="films-mlgb11-'+data.data[filmsNumber].id+'" class="mlgb11_films control_films" style="display: '+mlgb11+'"> 推荐 </span>'+
										'<span id="films-mlgb12-'+data.data[filmsNumber].id+'" class="mlgb12_films control_films" style="display: '+mlgb12+'"> 取消推荐 </span>'+
										'<span id="films-mlgb21-'+data.data[filmsNumber].id+'" class="mlgb21_films control_films" style="display: '+mlgb21+'"> 置顶 </span>'+
										'<span id="films-mlgb22-'+data.data[filmsNumber].id+'" class="mlgb22_films control_films" style="display: '+mlgb22+'"> 取消置顶 </span>'+
									'</div>'+
									'<a class="films-link-a" href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
									'<div class="films_right_style">'+
										'<div class="title_films_sty">'+data.data[filmsNumber].title+'</div>'+
										'<div class="films-detail-sty">'+$('<div/>').html(data.data[filmsNumber].detail).text()+'</div>'+
									'</div>'+
								'</div>');
					}else{
						$('#content-films-list').append('<div id="films-'+data.data[filmsNumber].id+'" style="padding: 20px; margin: 0; margin-bottom: 20px;" class="content-films-list show-films-con show-films-con'+filmsNumber+'">'+
									'<div class="films-delete-update" style="position: absolute; top: 20px; right: 20px;">'+
										'<span id="films-update-'+data.data[filmsNumber].id+'" class="update_films control_films"> 编辑 </span>'+
										'<span id="films-delete-'+data.data[filmsNumber].id+'" class="delete_films control_films"> 删除 </span>'+
										'<span id="films-mlgb11-'+data.data[filmsNumber].id+'" class="mlgb11_films control_films" style="display: '+mlgb11+'"> 推荐 </span>'+
										'<span id="films-mlgb12-'+data.data[filmsNumber].id+'" class="mlgb12_films control_films" style="display: '+mlgb12+'"> 取消推荐 </span>'+
										'<span id="films-mlgb21-'+data.data[filmsNumber].id+'" class="mlgb21_films control_films" style="display: '+mlgb21+'"> 置顶 </span>'+
										'<span id="films-mlgb22-'+data.data[filmsNumber].id+'" class="mlgb22_films control_films" style="display: '+mlgb22+'"> 取消置顶 </span>'+
									'</div>'+
									'<a class="films-link-a" href="'+data.data[filmsNumber].url+'" target="_blank"><img class="films-image-sty" src="'+data.data[filmsNumber].pic+'" /></a>'+
									'<div class="films_right_style">'+
										'<div class="title_films_sty">'+data.data[filmsNumber].title+'</div>'+
										'<div class="films-detail-sty">'+$('<div/>').html(data.data[filmsNumber].detail).text()+'</div>'+
									'</div>'+
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
		$('.show-films-con').css('display','none');
		for(var j=0; j<5; j++){
			var index=(pageNumber-1)*5+1*j;
			//alert(index);
			$('.show-films-con'+index).css('display','block');
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
		var oFilmsDetail=editor2.html();

		if(oFilmsTitle==''||oFilmsLink==''){
			$('#films_remark').text('信息不能为空！');
			$('#films_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {title: oFilmsTitle, url: oFilmsLink, pic: oFilmsLogo, detail: oFilmsDetail},
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
