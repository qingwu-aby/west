	$(document).ready(function(){
	var j = 0;  
		    function getData() { 
		            j++;
		            // var link=window.location.search;
	             //    var index=link.split('?')[1];
	             //    var oUid = index.substr(4); 
		                 $.ajax({
		                    type:'get',
		                    url:"server/index.php?m=Home&c=views&a=getVideo",
		                    data:{uid:13,p:j}, 
		                    dataType:'json',
		                    success:function(data){  
		                            if(data){  
		                                var str = "";  
		                                $.each(data.data,function(index,array){    
		                                   str = '<li class="film_thum"><div class="film_info">';  
							               str = str + '<a href="./video.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank"><img src="'+array.pic.substr(1)+'"/></a>';
							               str = str + '</div><div><strong class="name"><a href="./video.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank">'+array.title+'</a></strong></div>';
							               str = str + '</li>';
							               $("#film_msg").append(str);  
		                                })
		                                  
		                            }
		                        } 
		                    }) 
		                    
		                }  
		            getData(j);
		            $("#get_more").click(function () {  
               			 getData(j);  
                  
            		});  
});