$(document).ready(function(){
var i = 0;  
function getYmdTime(time){
		if(time > 0){
			var dateStr = new Date(time);
			return dateStr.getFullYear() + '年' + (dateStr.getMonth()+1) +'月' + dateStr.getDate() + '日';
		}else{
			return '末知时间';
		}
	} 
    function getData() { 
            i++; 
                var link=window.location.search;
                var index=link.split('?')[1];
                var oUid = index.substr(4);
                 $.ajax({
                    type:'get',
                    async:false,
                    url:"server/index.php?m=Home&c=index&a=getNewsList",
                    data:{uid:oUid,p:i}, 
                    dataType:'json',
                    success:function(data){  
                            if(data){  
                                var str = "";  
                                $.each(data.data,function(index,array){  
                                    str = '<li class="list_img"><div class="img">';  
                                    str = str + '<a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank"><span class="list_img_pic"><img src="'+array['thumbnail'].substr(1)+'"/></span></a>';  
                                    str = str + '</div><div class="info"><a href="./detail.php?uid='+array['uid']+'&id='+array['id']+'"><h4 class="header_info">'+array['title']+'</h4></a>';  
                                    str = str + '<p class="article">'+array['summary']+'</p>';  
                                    var date_str = getYmdTime(new Date(array['modify_time'] * 1000));
                                    str = str + '<i class="date">'+date_str+'</i></div>';
                                    $("#list").append(str);  
                                })
                                  
                            }else{  
                                $(".nodata").show().alert("别点击了，已经到底了。。。");  
                                return false;  
                            }  
                        } 
                    }); 
                    
                }  
            getData(i);
    
            //继续加载按钮事件  
            $("#get_more").click(function () {  
                getData(i);  
                $(window).scroll(scrollHandler);  
            });
            
         
    });