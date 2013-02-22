
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box"></div>
</div>

<div class="limited">
	
</div>

<script type="text/javascript" src="<?=base_url()?>media/js/gmap3.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKP009lkOzAgIiLqM0mc6yVtIuEZNgW68&sensor=false">
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#big-map").gmap3({
     map:{
        options:{
         center:[24.029561,-97.174072],
         zoom:5,
         mapTypeId: google.maps.MapTypeId.ROADMAP,
         mapTypeControl: false,
         mapTypeControlOptions: {
           style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
         },
         navigationControl: true,
         scrollwheel: false,
         streetViewControl: true
        }
     }
  });
})

</script>

