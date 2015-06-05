// JavaScript
$(document).ready(function(){
	$('#btn_thum li:first').css('border','none');
	if ($('#zSlider').length) {
		zSlider();
		$('#h_sns').find('img').hover(function(){
			$(this).fadeTo(200,0.5);
		}, function(){
			$(this).fadeTo(100,1);
		});
	}
	function zSlider(ID, delay){
		var ID=ID?ID:'#zSlider';
		var delay=delay?delay:5000;
		var currentEQ=0, picnum=$('#pic_show_list li').size(), autoScrollFUN;
		$('#btn_thum li').eq(currentEQ).addClass('current');
		$('#pic_show_list li').eq(currentEQ).show();
		$('#pic_tx li').eq(currentEQ).show();

		autoScrollFUN=setTimeout(autoScroll, delay);
		function autoScroll(){
			clearTimeout(autoScrollFUN);
			currentEQ++;
			if (currentEQ>picnum-1) 
				currentEQ=0;
			$('#load_pic').hide();
			$('#btn_thum li').removeClass('current');
			$('#pic_show_list li').hide();
			$('#pic_tx li').hide().eq(currentEQ).slideDown(400);
			$('#btn_thum li').eq(currentEQ).addClass('current');
			$('#pic_show_list li').eq(currentEQ).show();
			autoScrollFUN = setTimeout(autoScroll, delay);
		}
		$('#pic_show_media').hover(function(){
			clearTimeout(autoScrollFUN);
		}, function(){
			autoScrollFUN = setTimeout(autoScroll, delay);
		});
		$('#btn_thum li').hover(function(){
			var picEQ=$('#btn_thum li').index($(this));
			if (picEQ==currentEQ) 
				return false;
			currentEQ = picEQ;
			$('#btn_thum li').removeClass('current');
			$('#pic_show_list li').hide();
			$('#pic_tx li').hide().eq(currentEQ).slideDown(100);
			$('#btn_thum li').eq(currentEQ).addClass('current');
			$('#pic_show_list li').eq(currentEQ).show();
			return false;
		});
	};

});