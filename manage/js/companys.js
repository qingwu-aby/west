//公司信息修改
var updataCompany=function(url,uid,url_2,uploadUrl,api){

	$.ajax({
		type: 'get',
		url: url+uid,
		dataType: 'json',
		success: function(data){
			$('#company_logo').attr('src',data.data.banner_url);
			$('#company_wechat').attr('src',data.data.wechat_url);
			$('#company_name').val(data.data.name);
			$('#company_tel').val(data.data.tel);
			$('#company_mail').val(data.data.mail);
			$('#div_message').text(data.data.introduction);
		}
	});

	$(document).on('change','#file_logo,#file_wechat',function(){

		var buttonId=$(this).attr('id');
		var fileId=null,imgId=null;
		if(buttonId=='file_wechat'){
			fileId='file_wechat';
			imgId='company_wechat';
		}else if(buttonId=='file_logo'){
			fileId='file_logo';
			imgId='company_logo';
		}

		$.ajaxFileUpload({
			url: uploadUrl,
			secureuri: true, //是否需要安全协议，一般设置为false
            fileElementId: fileId, //文件上传域的ID
			dataType: 'json',
			data: {filename: 'filename'},
			success: function(data, status){
				//var result=JSON.parse(data.replace(/<pre style=\"word-wrap: break-word; white-space: pre-wrap;\">|<\/pre>/ig,''));
				var result=data;
				if(result.code==1){
					var image_url=result.data.img_url.substr(3);
					$('#'+imgId).attr('src','../server'+image_url);
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

	$(document).on('click','#update_company',function(){
		$('.z_change').removeAttr("readonly");
		$('#div_message').attr('contenteditable','true');
		$('.z_bg').css({'background-color':'#fff'});
		$('#z_enter').css({'display':'block'});
		//$('#update-company').css('display','block');
		$('.upload-remark').css('display','block');
		$('.file_war').css('display','block');
		$('#company_remark').text('');
	});
	$(document).on('click','#z_enter',function(){
		var sCompanyLogo=$('#company_logo').attr('src');
		var sCompanyWechat=$('#company_wechat').attr('src');
		var sCompanyMail=$('#company_mail').val();
		var sCompanyTel=$('#company_tel').val();
		var sCompanyMess=$('#div_message').text();
		$.ajax({
			type: 'post',
			url: url_2,
			dataType: 'json',
			data: {company_mail: sCompanyMail,company_tel: sCompanyTel,wechat_url: sCompanyWechat,introduction: sCompanyMess,banner_url: sCompanyLogo},
			success: function(data){
				if(data.code==1){
					$('.z_change').attr('readonly','readonly');
					$('#div_message').attr('contenteditable','false');
					$('.z_bg').css({'background-color':'#eee'});
					$('#z_enter').css({'display':'none'});
					//$('#update-company').css('display','none');
					$('.file_war').css('display','none');
					$('.upload-remark').css('display','none');
					$('#company_remark').text(data.msg+'！');
					$('#company_remark').css('color','green');
				}else{
					$('#company_remark').text(data.msg+'！');
					$('#company_remark').css('color','red');
				}
			},
			error: function(){
				$('#company_remark').text('修改失败！');
				$('#company_remark').css('color','red');
			}
		});
	});
	// $(document).on('click','#img-logo',function(){
	// 	var link=$('#show .img-link:last-child').text();
	// 	//alert(link);
	// 	$('#company_logo').attr('src','./uploads'+link);
	// 	//$('#show').text('');
	// });
	// $(document).on('click','#img-wechat',function(){
	// 	var link=$('#show .img-link:last-child').text();
	// 	$('#company_wechat').attr('src','./uploads'+link);
	// 	//$('#show').text('');
	// });
};