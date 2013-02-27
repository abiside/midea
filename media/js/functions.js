$(document).ready(function(){
	$('#slider').layerSlider({
		slideDelay: 4000,
		autoStart: true,
		slideDirection: 'top',
		pauseOnHover: false
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