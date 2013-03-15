$(document).ready(function(){



	var current = $("#selectedbar").attr('class');

	$('#home').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("shome");
	});
	$('#prod').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("sprod");
	});
	$('#noso').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("snoso");
	});
	$('#sopo').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("ssopo");
	});
	$('#dist').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("sdist");
	});
	$('#conta').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("scont");
	});

	$('#opciones').mouseleave(function(){ $("#selectedbar").removeClass().addClass(current); });

	//load_map();


	//Efectos con scroll (slider stay)

	var scroll_critical = 650; //for product
	
	$(window).scroll(function(){
		if ($(document).scrollTop() > scroll_critical)
		 	$("#productosintro, #slider").addClass("displaynone");
		else $("#productosintro, #slider").removeClass("displaynone");
    })

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