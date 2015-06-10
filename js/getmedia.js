$(document).ready(function(){
    var link=window.location.search;
    var index=link.split('?')[1];
    var oUid = index.substr(4);
        $.ajax({
                type:'get',
                async: false,
                url:"server/index.php?m=Home&c=index&a=getMedia",
                data:{uid:oUid}, 
                dataType:'json',
                success:function(data){ 
                        if(data){  
                            $.each(data.data,function(index,array){
                                var str = '<li><a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank"><img src="'+array['thumbnail'].substr(1)+'"/></a></li>';
                                var info = '<li><h3><a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank">'+array['title']+'</a></h3></li>';
                                var btn = '<li><a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank">';
                                btn = btn +'<img src="'+array['thumbnail'].substr(1)+'"/>';
                                btn = btn +'<span class="select_text">'+array['title']+'</span><span class="select_date">'+array['summary']+'<span><a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'"" target="_blank">[详情]</a></span></span>';
                                btn = btn +'</a></li>';
                                $("#pic_show_list").append(str);
                                $("#pic_tx").append(info); 
                                $("#btn_thum").append(btn); 
                            })         
                        }
                        
                    }
                })
        //限制字符个数
            $(".select_date").each(function(){
                var maxwidth=20;
                if($(this).text().length>maxwidth){
                    $(this).text($(this).text().substring(0,maxwidth));
                    $(this).html($(this).html()+'...');
                }
    });
            });