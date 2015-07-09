$(document).ready(function(){
//限制字符个数
    $(".art").each(function(){
        var maxwidth=33;
        if($(this).text().length>maxwidth){
            $(this).text($(this).text().substring(0,maxwidth));
            $(this).html($(this).html()+'...');
        }
    });
});