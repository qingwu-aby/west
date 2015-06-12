$(document).ready(function(){
	// var link=window.location.search;
 //    var index=link.split('?')[1];
 //    var name = index.substr(5);
 //    alert(name);
    var title = $('#title')[0].innerText;
    console.log(title);
	$.ajax({
        type:'get',
        async:false,
        url:"../server/index.php?m=User&c=Api&a=getMovie&name=" + title,
        dataType:'json',
        success:function callback(data){ 
                if(data){ 
                    var str = "";
                    $.each(data.data,function(index,array){
                    	str = '<div class="cine"><div class="c_left"><div class="img_left"><img src="images/1.gif" width="105" height="65"></div>';
                    	str = str +'<div class="text_right">';
                        str = str +'<h4 style="font-size:20px;">'+array['name']+'</h4>';
                        str = str +'<p style="font-size:14px;">'+array['address']+'</p>';
                        str = str +'<p style="font-size:14px;">'+array['tel']+'</p>';
                    	str = str +'</div></div>';
                        var id = 'telecine_list_' + index;
                        var se = '#' + id;
                        str = str +'<div class="c_right"><ul id="'+id+'" class="telecine_list">';
                        str = str +'</ul></div>';
                        str = str +'</div>';
                        $("#cine").append(str);
                        //console.log(array.time_table);
                        $.each(array.time_table,function(time,k){
                            var info = '<li><h4>'+k['time']+'</h4><p>'+k['type']+'</p></li>';
                            console.log(info); 
                            console.log(se);
                            $(se).append(info);
                        }) 
                            
                        
                    })
                   
                }
            }
        });
});