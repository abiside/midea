
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box">
    <div id="data-title"><?=count($partners)?> DISTRIBUIDORES</div>
    <div id="partners-wrap">

      <div id="selecciona">SELECCIONA EL ESTADO DE TU PREFERENCIA</div>

      <?php foreach($partners as $p): ?>

        <div class="partner gp-<?=$p->state?>">
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


<script type="text/javascript">

var estados = <?=$estados?>;

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


function partner(id){
  $("#selecciona").hide();
  $(".partner").hide();
  $('.gp-' + id).fadeIn(1000);
  $("#data-title").html(estados[id]);
}
</script>

