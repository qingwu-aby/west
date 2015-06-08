$(document).ready(function(){
    var link=window.location.search;
    var index=link.split('?')[1];
    var oUid = index.substr(4);
    $.ajax({
        type: 'get',
        async:false,
        url: 'server/index.php?m=Home&c=index&a=getCompany',
        data: {uid: oUid},
        dataType: 'json',
        success: function(data){
            var result = data.data;
            $('#tel').html(result.tel);
            $('#mail').html(result.mail);
            var wechat = '<span id="linkme_images"><img src="'+result.wechat_url.substr(1)+'" /></span>';
            $("#wechat").append(wechat);
            var str = '<span class="summary">'+result.introduction+'</span><span class="summary_info"><a href="./about.php">[详情]</a></span>';
            $("#summary_company").append(str); 

        }
    })
    $(".summary").each(function(){
                var maxwidth=83;
                if($(this).text().length>maxwidth){
                    $(this).text($(this).text().substring(0,maxwidth));
                    $(this).html($(this).html()+'...');
                    }
                });  
    });