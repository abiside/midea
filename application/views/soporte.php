
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box">
    <div id="data-title"><?=count($partners)?> <?=$this->lang->line("service_title")?></div>
    <div id="partners-wrap">

      <div id="selecciona"><?=$this->lang->line("service_select")?></div>

      <?php foreach($partners as $p): ?>

        <div class="partner gp-<?=$p->state?>">
            <div class="icon type<?=$p->tipo?>"></div>
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

<div id="teamarea" class="teamsoporte" style="height:670px">
    <div id="ceosection" class="boxshadow" style="height:365px;">
    <div id="ceoarea" class="serviciostext">
      <div class="didot">“<?=$this->lang->line("service_description")?>”</div>
      <div id="soportecontact" ><?=$this->lang->line("phone_sop")?></div>
      <div id="soportephone">01 800 000 0808</div>
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

