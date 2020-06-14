//Hide Loading Box (Preloader)
	function handlePreloader() {
		if($('.preloader').length){
			$('.preloader').delay(700).fadeOut(500);
		}
	}
	$(window).on('load', function() {
		handlePreloader();
		enableMasonry();
	});