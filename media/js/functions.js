$(window).load(function(){



	var current = $("#selectedbar").attr('class');

	$('#home').mouseenter(function() {
	  $('#selectedbar').addClass("shome");
	  $(this).mouseout(function(){ $("#selectedbar").removeClass().addClass(current); });
	});
	$('#prod').mouseenter(function() {
	  $('#selectedbar').addClass("sprod");
	  $(this).mouseout(function(){ $("#selectedbar").removeClass().addClass(current); });
	});
	$('#noso').mouseenter(function() {
	  $('#selectedbar').addClass("snoso");
	  $(this).mouseout(function(){ $("#selectedbar").removeClass().addClass(current); });
	});
	$('#dist').mouseenter(function() {
	  $('#selectedbar').addClass("sdist");
	  $(this).mouseout(function(){ $("#selectedbar").removeClass().addClass(current); });
	});
	$('#conta').mouseenter(function() {
	  $('#selectedbar').addClass("scont");
	  $(this).mouseout(function(){ $("#selectedbar").removeClass().addClass(current); });
	});

	//load_map();


	//dejar al final del window load o document ready (si no falla)
	$('#slider').layerSlider({
		slideDelay: 4000,
		autoStart: true,
		slideDirection: 'top',
		pauseOnHover: false
	});

});




function scroll(id){
	$("#" + id).ScrollTo();
}