$(document).ready(function(){
      var link=window.location.search;
      var index=link.split('?')[1];
      var oUid = index.substr(4);
      $.ajax({
            type:'get',
            url:"server/index.php?m=Home&c=index&a=getVideo",
            data:{uid:oUid}, 
            dataType:'json',
            success:function(data){  
                    if(data){  
                        var str = "";  
                        $.each(data.data,function(index,array){    
                           str = '<li class="Thum">';  
                           str = str + '<a href="./episode.php?uid='+array['uid']+'&id='+array['id']+'"><img src="'+array['pic'].substr(1)+'"/></a>';
                           str = str + '<div class="name">'+array['title']+'</div>';
                           str = str + '</li>';
                           $("#episode_list").append(str);  
                        })
                          
                    }
                } 
            }); 
});