$(document).ready(function(){
//限制字符个数
    $(".article").each(function(){
        var maxwidth=83;
        if($(this).text().length>maxwidth){
            $(this).text($(this).text().substring(0,maxwidth));
            $(this).html($(this).html()+'...');
        }
    });
});