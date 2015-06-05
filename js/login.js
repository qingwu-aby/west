$(document).ready(function(){
	var api='./server/';
	var url=null;
	$(document).on('click','#codeNumber',function(){
		//location=location;
		//$(this).attr('src','');
		//setTimeout(function(){
			$(this).attr('src','./server/index.php?m=User&c=Api&a=verify&localeTime='+new Date().getTime());
		//}, 30);

	});
	$(document).on('focus','#code',function(){
		if($('#user').val()==='admin')
			url=api+'index.php?m=Admin&c=user&a=login';
		else{
			url=api+'index.php?m=User&c=user&a=login';
		}
	})

	$(document).on('click','#login',function(){
		var sUser=$('#user').val();
		var sPass=$('#pass').val();
		var sCode=$('#code').val();
		if(sUser==''||sPass==''){
			$('#callback').text('登录信息不能为空！');
		}else if(sCode==''){
			$('#callback').text('请输入验证码！');
		}else{
				$.ajax({
					type: 'post',
					url: url,
					dataType: 'json',
					data: {username: sUser,password: sPass, code: sCode},
					success: function(data){
						if(data.code==1){
							if(data.data.group=='manage'){
								window.location.href='./manage/admin.php?uid='+data.data.uid+'&username='+encodeURIComponent(data.data.username)+'&back=';
							}else if(data.data.group=='user'){
								window.location.href='./manage/index.php?uid='+data.data.uid+'&username='+encodeURIComponent(data.data.username)+'&back=';
							}
						}else{
							$('#callback').text(data.msg+'！');
						}
					},
					error: function(){
						$('#callback').text('登录失败！');
					}
				});
		}
	});
});
