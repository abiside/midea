
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box">
    <div id="data-title"><?=count($partners)?> <?=$this->lang->line("distributors_title")?></div>
    <div id="partners-wrap">

      <div id="selecciona"><?=$this->lang->line("service_select")?></div>

      <?php foreach($partners as $p): ?>

        <div class="partner gp-<?=$p->state?>">
            <div class="icon type<?=$p->tipo?>"></div>
            <div class="info">
                <div class="nombre"><?=$p->nombre?></div>
                <div class="direccion">
                  <?php if($p->domicilio): ?>
                    <?=$p->domicilio?>, <?=$p->colonia?>, <?=$p->cp?><br>
                  <?php endif ?>
                  <?=$p->ciudad?>, <?=$p->estado?></div>
                <div class="telefono"><?=$p->telefono?></div>
                <?php if($p->web): ?>
                  <div class="web"><a href="<?=$p->web?>"><?=$this->lang->line("distributors_weblink")?></a></div>
                <?php endif ?>
            </div>
        </div>

      <?php endforeach ?>

    </div>
  </div>
</div>

<div class="limited" id="contenido_">

</div>

<div id="teamarea" class="teamdist">
    <div id="ceosection" class="boxshadow">
    <div id="ceoarea" class="didot serviciostext">
      “<?=$this->lang->line("button3_text")?>”
    </div>
    </div>
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
  $(".partner, #selecciona, #partners-wrap").hide();
  $('.gp-' + id).show();
  $("#partners-wrap").stop().slideDown();
  $("#data-title").html(estados[id]);
}
</script>

