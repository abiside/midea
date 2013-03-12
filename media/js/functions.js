$(document).ready(function(){
	$('#slider').layerSlider({
		slideDelay: 4000,
		autoStart: true,
		slideDirection: 'top',
		pauseOnHover: false
	});

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