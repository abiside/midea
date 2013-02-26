
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box">
    <div id="data-title"><?=count($partners)?> DISTRIBUIDORES</div>
    <div id="partners-wrap">

      <?php foreach($partners as $p): ?>
        <div class="partner" 
            <?php if($aux[$p->city]): $aux[$p->city] = false; ?>
              id="city<?=$p->city?>"
            <?php endif ?>
        >
            <div class="icon"></div>
            <div class="info">
                <div class="nombre"><?=$p->nombre?></div>
                <div class="direccion"><?=$p->ciudad?>, <?=$p->estado?></div>
                <div class="telefono"><?=$p->telefono?></div>
            </div>
        </div>
      <?php endforeach ?>

    </div>
  </div>
</div>

<div class="limited" id="contenido_">

</div>

<script type="text/javascript" src="<?=base_url()?>media/js/scrollto.js"></script>
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
     },
     marker:{
        values:<?=$markers?>,
        events:{ // events trigged by markers 
          click: function(marker, context, event){
            partner(event.id);
          }
        },  
        options:{
          draggable: false
        },
    }

  });
});

function partner(id){
  $('#city' + id).ScrollTo({
    onlyIfOutside: false
  });
}

var MAX_DUMP_DEPTH = 10;
      
 function dumpObj(obj, name, indent, depth) {
        if (depth > MAX_DUMP_DEPTH) {
               return indent + name + ": <Maximum Depth Reached>\n";
        }
        if (typeof obj == "object") {
               var child = null;
               var output = indent + name + "\n";
               indent += "\t";
               for (var item in obj)
               {
                     try {
                            child = obj[item];
                     } catch (e) {
                            child = "<Unable to Evaluate>";
                     }
                     if (typeof child == "object") {
                            output += dumpObj(child, item, indent, depth + 1);
                     } else {
                            output += indent + item + ": " + child + "\n";
                     }
               }
               return output;
        } else {
               return obj;
        }
 }

</script>

