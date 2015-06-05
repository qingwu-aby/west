$(document).ready(function(){
	var api='./server/';
	var url=api+'index.php?m=User&c=user&a=regist';

	$(document).on('click','#regist',function(){
		var sUser=$('#user').val();
		var sPass=$('#pass').val();
		var sPass_two=$('#pass_two').val();
		var sName=$('#name').val();
		var sEmail=$('#email').val();
		var sPhone=$('#phone').val();
		if(sUser==''||sPass==''||sPass_two==''||sName==''||sEmail==''||sPhone==''){
			$('#callback').text('信息不能为空！');
		}else{
			if(sPass===sPass_two){
				$.ajax({
					type: 'post',
					url: url,
					dataType: 'json',
					data: {username: sUser,password: sPass,company_name: sName,company_mail: sEmail,company_tel: sPhone},
					success: function(data){
						if(data.code==1){
							$('#callback').text(data.msg+'！');
						}
					},
					error: function(){
						$('#callback').text('注册失败！');
					}
				});
			}else{
				$('#callback').text('两次输入密码不一致！');
			}
		}
	});
});