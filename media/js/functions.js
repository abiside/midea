$(document).ready(function(){
	$('#slider').layerSlider({
		slideDelay: 4000,
		autoStart: true,
		slideDirection: 'top',
		pauseOnHover: false
	});

	$('#home').mouseenter(function() {
	  $('#selectedbar').addClass("shome");
	  $("#home").mouseout(function(){ 
	  	
	  });
	});
	$('#prod').mouseenter(function() {
	  $('#selectedbar').addClass("sprod");
	  $("#prod").mouseout(function(){ $('#selectedbar').removeClass("sprod");});
	});
	$('#noso').mouseenter(function() {
	  $('#selectedbar').addClass("snoso");
	  $("#noso").mouseout(function(){ $('#selectedbar').removeClass("snoso");});
	});
	$('#dist').mouseenter(function() {
	  $('#selectedbar').addClass("sdist");
	  $("#dist").mouseout(function(){ $('#selectedbar').removeClass("sdist");});
	});
	$('#conta').mouseenter(function() {
	  $('#selectedbar').addClass("scont");
	  $("#conta").mouseout(function(){ $('#selectedbar').removeClass("scont");});
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