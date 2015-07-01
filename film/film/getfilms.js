$(document).ready(function(){
	// var link=window.location.search;
 //    var index=link.split('?')[1];
 //    var name = index.substr(5);
 //    alert(name);
	$.ajax({
        type:'get',
        url:"../wes/server/index.php?m=User&c=Api&a=getMovie&name=末日崩塌",
        dataType:'json',
        success:function(data){ 
                if(data){ 
                    var str = "";
                    $.each(data.data,function(index,array){
                    	str = '<div class="cine"><div class="c_left"><div class="img_left"><img src="images/1.gif" width="105" height="65"></div>';
                    	str = str +'<div class="text_right">';
                        str = str +'<h4 style="font-size:20px;">'+array['name']+'</h4>';
                        str = str +'<p style="font-size:14px;">'+array['address']+'</p>';
                        str = str +'<p style="font-size:14px;">'+array['tel']+'</p>';
                    	str = str +'</div></div>';
                        str = str +'<div class="c_right"><ul id="telecine_list" class="telecine_list">';
                            $.each(array.time_table,function(time,k){
                                var info = '<li><h4>'+k['time']+'</h4><p>'+k['type']+'</p></li>';
                                $("#telecine_list").append(info);
                            }) 
                            str = str +'</ul></div>';
                            str = str +'</div>';
                        $("#cine").append(str);
                    })
                   
                }
            }
        });
});