$(document).ready(function(){
	$('#slider').layerSlider({
		slideDelay: 4000,
		autoStart: true,
		slideDirection: 'top',
		pauseOnHover: false
	});

	$('#home').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("shome");
	});
	$('#prod').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("sprod");
	});
	$('#noso').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("snoso");
	});
	$('#dist').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("sdist");
	});
	$('#conta').mouseenter(function() {
	  $('#selectedbar').removeClass().addClass("scont");
	});

});

function load_map(){
	var mapOptions = {
          center: new google.maps.LatLng(-34.397, 150.644),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"),
            mapOptions);
}

function scroll(id){
	$("#" + id).ScrollTo();
}