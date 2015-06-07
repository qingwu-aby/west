(function(){
    	//图片上传预览    IE是用了滤镜。
		window.previewImage = function(file,previewImgId){
		  var img = document.getElementById(previewImgId);
          if (file.files && file.files[0])
          {
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            file.select();
            var src = document.selection.createRange().text;
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
          }
        }
})();