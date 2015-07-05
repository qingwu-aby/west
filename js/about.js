$(document).ready(function(){
  var link=window.location.search;
  var index=link.split('?')[1];
  var oUid = index.substr(4);
                    
  $.ajax({
  type:'get',
  url:"server/index.php?m=Home&c=index&a=getCompany",
  data:{uid:oUid}, 
  dataType:'json',
  success:function(data){   
      var str = "";  
      var res = data.data;   
      str = '<li>关于<span>'+res.name+'</span></li>';  
      str = str + '<div class="about_text"><p id="about_text">'+res.introduction+'</p>';
      str = str + '</div>';
      str = str + '<li>公司详情</li><div class="about_text"><p>'+htmlDecode(res.detail)+'</p></div>';
      str = str + '<li>公司logo</li>';
      str = str + '<div class="about_text logo_about"><img src="'+res.banner_url.substr(1)+'"/>';
      str = str + '</div><li>公司信息</li><div class="about_text info_about"><p>联系方式：<span>'+res.mail+'</span></p>';
      str = str + '<p>联系电话：<span>'+res.tel+'</span></p>';
      str = str + '</div><li>二维码</li><div class="about_text qrcode_about"><img src="'+res.wechat_url.substr(1)+'"/>';
      str = str + '</div>';
      $("#about_us").append(str);  
    }
  });
});function htmlDecode(value){
  return $('<div/>').html(value).text();
}