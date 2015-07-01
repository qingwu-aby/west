//显示友情链接
var showLink=function(url,uid){
	var zRemark=arguments[2];
	$.ajax({
		type: 'get',
		url: url,
		dataType: 'json',
		data: {uid: uid, p: 1},
		success: function(data){
			if(data.code==1){
				$('#table_show').html('<tr class="tr_title">'+
							'<td class="table_col table_title table_select"></td>'+
							'<td class="table_col table_title">友情链接名称</td>'+
							'<td class="table_col table_title">友情链接LOGO地址</td>'+
							'<td class="table_col table_title">友情链接地址</td>'+
							'</tr>');
				$('#home_link').html('');
				$('#links_number').text(' ('+data.data.length+')');
				for(var linkNumber in data.data){
					$('#home_link').append('<a href="'+data.data[linkNumber].info+'" target="_blank" class="home-link-a">'+data.data[linkNumber].name+'</a>');
					if(linkNumber%2==0){
						$('#table_show').append('<tr id="link-'+data.data[linkNumber].id+'" class="tr_1">'+
							'<td class="table_col table_select">'+
								'<span id="update-'+data.data[linkNumber].id+'" class="myfont update_ico">&#397</span>'+
								'<span id="delete-'+data.data[linkNumber].id+'" class="myfont delete_ico">&#378</span>'+
							'</td>'+
							'<td class="table_col table_col_1">'+data.data[linkNumber].name+'</td>'+
							'<td class="table_col table_col_2"><img style="height: 30px; width: 100px; margin: 0 auto;" src="'+data.data[linkNumber].logo+'" /></td>'+
							'<td class="table_col table_col_3">'+data.data[linkNumber].info+'</td>'+
							'</tr>');
					}else{
						$('#table_show').append('<tr id="link-'+data.data[linkNumber].id+'" class="tr_2">'+
							'<td class="table_col table_select">'+
								'<span id="update-'+data.data[linkNumber].id+'" class="myfont update_ico">&#397</span>'+
								'<span id="delete-'+data.data[linkNumber].id+'" class="myfont delete_ico">&#378</span>'+
							'</td>'+
							'<td class="table_col table_col_1">'+data.data[linkNumber].name+'</td>'+
							'<td class="table_col table_col_2"><img style="height: 30px; width: 100px; margin: 0 auto;" src="'+data.data[linkNumber].logo+'" /></td>'+
							'<td class="table_col table_col_3">'+data.data[linkNumber].info+'</td>'+
							'</tr>');
					}
				}
				if(zRemark=='deleteL'){
					$('.delete_ico').css('display','block');
					$('.update_ico').css('display','none');
				}else if(zRemark=='updateL'){
					$('.delete_ico').css('display','none');
					$('.update_ico').css('display','block');
				}
			}else{
				$('#table_show').html('<span class="con-remark">还未添加友情链接！</span>');
				$('#home_link').html('<span class="con-remark">还未添加链接</span>');
				$('#links_number').text('');
			}
		},
		error: function(){
			$('#table_show').html('<span class="con-remark">还未添加友情链接！</span>');
		}
	});
};

//添加友情链接
var addLink=function(url,showLinkUrl,uid,uploadUrl){
	// $(document).on('click','#links_logo',function(){
	// 	$('#upload-img').fadeIn();
	// });
	// $(document).on('click','#img-links',function(){
	// 	var linksImgSrc=$('#show .img-link:last-child').text();
	// 	$('#links_logo').attr('src','./uploads'+linksImgSrc);
	// 	$('#upload-img').fadeOut();
	// });

	$(document).on('change','#linkUp_logo',function(){

		$.ajaxFileUpload({
			url: uploadUrl,
			secureuri: true, //是否需要安全协议，一般设置为false
            fileElementId: 'linkUp_logo', //文件上传域的ID
			dataType: 'json',
			data: {filename: 'filename'},
			success: function(data){
				//var result=JSON.parse(data.replace(/<pre style=\"word-wrap: break-word; white-space: pre-wrap;\">|<\/pre>/ig,''));
				var result=data;
				if(result.code==1){
					var image_url=result.data.img_url.substr(3);
					$('#links_logo').attr('src','../server'+image_url);
				}else{
					alert('上传失败！');
				}
				//$('#div_message').text(result.data.img_url);
			},
			error: function(data){
				alert('上传错误！');
			}
		});
	});

	$(document).on('click','#link_add',function(){
		var oLinkName=$('#link_name').val();
		var oLinkMess=$('#link_mess').val();
		var oLinkImag=$('#links_logo').attr('src');

		if(oLinkName==''||oLinkMess==''||oLinkImag==''){
			$('#link_remark').text('信息不能为空！');
			$('#link_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {name: oLinkName, logo: oLinkImag, info: oLinkMess},
				success: function(data){
					$('#link_remark').text(data.msg+'！');
					$('#link_remark').css('color','red');

					if(data.code==1){
						showLink(showLinkUrl,uid);
						$('#link_remark').css('color','green');
						$('#link_name').val('');
						$('#link_mess').val('');
						setTimeout(function(){$('#link_window').fadeOut()},600);
						$('.links-list').css({'background-color':'','color':'#666'});
						$('#all_links').css({'background-color':'#ccc','color':'#000'});
					}
				},
				error: function(){
					$('#link_remark').text('出错！');
					$('#link_remark').css('color','red');
				}
			});
		}
	});
};

//编辑友情链接
var updateLink=function(url,showLinkUrl,uid){
	var linkId;
	// $(document).on('click','#links_logo',function(){
	// 	$('#upload-img').fadeIn();
	// });
	// $(document).on('click','#img-links',function(){
	// 	var linksImgSrc=$('#show .img-link:last-child').text();
	// 	$('#links_logo').attr('src','./uploads'+linksImgSrc);
	// 	$('#upload-img').fadeOut();
	// });
	$(document).on('click','.update_ico',function(){
		linkId=$(this).attr('id').substr(7);
		var linkName=$('#link-'+linkId).find('.table_col_1').text();
		var linkMess=$('#link-'+linkId).find('.table_col_3').text();
		var linkImag=$('#link-'+linkId).find('.table_col_2 img').attr('src');

		$('#link_window_title').text('编辑友情链接');
		$('#link_window').css('display','block');
		$('#link_name').val(linkName);
		$('#link_mess').val(linkMess);
		$('#links_logo').attr('src',linkImag);
		$('#link_add').css('display','none');
		$('#link_update').css('display','block');
		$('#link_remark').text('');
	});
	$(document).on('click','#link_update',function(){
		var oLinkName=$('#link_name').val();
		var oLinkMess=$('#link_mess').val();
		var oLinkImag=$('#links_logo').attr('src');

		if(oLinkName==''||oLinkMess==''){
			$('#link_remark').text('信息不能为空！');
			$('#link_remark').css('color','red');
		}else{

			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: linkId,name: oLinkName, logo: oLinkImag, info: oLinkMess},
				success: function(data){
					$('#link_remark').text(data.msg+'！');
					$('#link_remark').css('color','red');

					if(data.code==1){
						//showLink(showLinkUrl,uid);
						$('#link_remark').css('color','green');
						setTimeout(function(){$('#link_window').fadeOut()},500);
						showLink(showLinkUrl,uid,'updateL');
					}
				},
				error: function(){
					$('#link_remark').text('出错！');
					$('#link_remark').css('color','red');
				}
			});
		}
	});
};

//删除友情链接
var deleteLink=function(url,showLinkUrl,uid){
	$(document).on('click','.delete_ico',function(){
		var linkId=$(this).attr('id').substr(7);
		//alert(linkId);
		var delResult=confirm("是否删除？");
		if(delResult){
			$.ajax({
				type: 'post',
				url: url,
				dataType: 'json',
				data: {id: linkId},
				success: function(data){
					if(data.code==1){
						//alert(data.msg+'！');
						showLink(showLinkUrl,uid,'deleteL');
					}
				}
			});
		}
	});
};

//友情链接页菜单切换
var linksNavClick=function(){
	$('#all_links').css({'background-color':'#ccc','color':'#000'});
	$(document).on('click','#link_cancal',function(){
		$('#link_window').fadeOut();
		$('.links-list').css({'background-color':'','color':'#666'});
		$('#all_links').css({'background-color':'#ccc','color':'#000'});
	});
	$(document).on('click','.links-list',function(){
		$('.links-list').css({'background-color':'','color':'#666'});
		$(this).css({'background-color':'#ccc','color':'#000'});

		if($(this).attr('id')==='all_links'){
			$('#link_window').css('display','none');
			$('.delete_ico').css('display','none');
			$('.update_ico').css('display','none');
		}
		if($(this).attr('id')==='add_links'){
			$('#link_window_title').text('添加友情链接');
			$('#link_window').css('display','block');
			$('#link_name').val('');
			$('#link_mess').val('');
			$('#links_logo').attr('src','');
			$('#link_add').css('display','block');
			$('#link_update').css('display','none');
			$('#link_remark').text('');
			$('.delete_ico').css('display','none');
			$('.update_ico').css('display','none');
		}
		if($(this).attr('id')==='update_links'){

			$('#link_window').css('display','none');
			$('.update_ico').css('display','block');
			$('.delete_ico').css('display','none');
		}
		if($(this).attr('id')==='delete_links'){
			$('#link_window').css('display','none');
			$('.delete_ico').css('display','block');
			$('.update_ico').css('display','none');
		}
	});
};
