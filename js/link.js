 $(document).ready(function(){
 	var link=window.location.search;
    var index=link.split('?')[1];
    var oUid = index.substr(4);
 $.ajax({
 		async:false,
		type:'get',
		url:"server/index.php?m=Home&c=views&a=getLinks",
		data:{uid:oUid,p:'1'}, 
		dataType:'json',
		success:function(data){  
		        if(data){  
		            var str = "";  
		            $.each(data.data,function(index,array){  
		                str = '<li class="film_thum"><div class="film_info">';  
		                str = str + '<a href="'+array['info']+'" target="_blank"><img src="'+array['logo'].substr(1)+'"/></a>';
		                str = str + '</div><div class="link_detail"><p class="art">'+array['detail']+'</p></div></li>';
		                $("#link_info_msg").append(str);  
		            })
		                                  
		        } 
		    } 
		});

	});  
