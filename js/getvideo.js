$(document).ready(function(){
  var link=window.location.search;
  var index=link.split('&')[1];
  var oId = index.substr(3);
  var link1=window.location.search;
  var index1=link1.split('?')[1];
  var oUid = index1.substr(4);
  
    $.ajax({
      type:'get',
      async:false,
      url:"server/index.php?m=Home&c=views&a=getVideosContent",
      data:{uid:oUid,id:oId},
      dataType:'json',
      success:function(data){  
          var str = ""; 
          var result = data.data; 
            str = '<div class="detail_content">';  
            str = str + '<h3 class="video_title">'+result.title+'</h4><div id="frame" class="detail_content"><iframe frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" src="'+result.url+'"></iframe></div>';
            str = str + '<p>'+htmlDecode(result.detail)+'</p>';
            str = str + '<div class="href"><p class="link_info_mlgb"><span>链接：</span><p class="link_href"><a href="javascript:;">'+result.url+'</a></p></p></div>';
            str = str + '</div>';
            $("#detail_content").append(str);  
      }
      })
    });
function htmlDecode(value){
  return $('<div/>').html(value).text();
}
// $(document).ready(function(){
// //限制字符个数
//     $(".link_href").each(function(){
//         var maxwidth=1;
//         if($(this).text().length>maxwidth){
//             $(this).text($(this).text().substring(0,maxwidth));
//             $(this).html($(this).html()+'...');
//         }
//     });
// });