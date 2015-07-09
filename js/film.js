// 	$(document).ready(function(){
// 	var j = 0;  
// 		    function getData() { 
// 		            j++;
// 		            var link=window.location.search;
// 	                var index=link.split('?')[1];
// 	                var oUid = index.substr(4); 
// 		                 $.ajax({
// 		                    type:'get',
// 		                    url:"server/index.php?m=Home&c=views&a=getVideo",
// 		                    data:{uid:oUid,p:j}, 
// 		                    dataType:'json',
// 		                    success:function(data){  
// 		                            if(data){  
// 		                                var str = "";  
// 		                                $.each(data.data,function(index,array){    
// 		                                   str = '<li class="film_thum"><div class="film_info">';  
// 							               str = str + '<a href="./video.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank"><img src="'+array.pic.substr(1)+'"/></a>';
// 							               str = str + '</div><div><strong class="name1"><a href="./video.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank">'+array.title+'</a></strong></div>';
// 							               str = str + '</li>';
// 							               $("#film_msg").append(str);  
// 		                                })
		                                  
// 		                            }
// 		                        } 
// 		                    }) 
		                    
// 		                }  
// 		            getData(j);
// 		            $("#get_more").click(function () {  
//                			 getData(j);  
                  
//             		});  
// });
$(document).ready(function(){
var j = 0;  
function getYmdTime(time){
		if(time > 0){
			var dateStr = new Date(time);
			return dateStr.getFullYear() + '年' + (dateStr.getMonth()+1) +'月' + dateStr.getDate() + '日';
		}else{
			return '未知时间';
		}
	} 
    function getData() { 
            j++; 
                var link=window.location.search;
                var index=link.split('?')[1];
                var oUid = index.substr(4);
                 $.ajax({
                    type:'get',
                    async:false,
                    url:"server/index.php?m=Home&c=views&a=getVideo",
                    data:{uid:oUid,p:j}, 
                    dataType:'json',
                    success:function(data){  
                            if(data){  
                                var str = "";  
                                $.each(data.data,function(index,array){  
                                    str = '<li class="list_img"><div class="img">';  
                                    str = str + '<a href="./video.php?uid='+array['uid']+'&id='+array['id']+'" target="_blank"><span class="list_img_pic"><img src="'+array['pic'].substr(1)+'"/></span></a>';  
                                    str = str + '</div><div class="info"><a href="./video.php?uid='+array['uid']+'&id='+array['id']+'"><h4 class="header_info">'+array['title']+'</h4></a>';  
                                    str = str + '<p class="article">'+htmlDecode(array['detail'])+'</p>';  
                                    var date_str = getYmdTime(new Date(array['modify_time'] * 1000));
                                    str = str + '<i class="date">'+date_str+'</i></div>';
                                    $("#film_msg").append(str);  
                                })
                                  
                            }else{  
                                $(".nodata").show().alert("别点击了，已经到底了。。。");  
                                return false;  
                            }  
                        } 
                    }); 
                    
                }  
            getData(j);
    
            //继续加载按钮事件  
            $("#get_more").click(function () {  
                getData(j);  
                $(window).scroll(scrollHandler);  
            });
            
         
    });
function htmlDecode(value){
  return $('<div/>').html(value).text();
}