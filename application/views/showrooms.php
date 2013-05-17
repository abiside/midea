
<div id="map-wrap">
  <div id="big-map"></div>
  <div id="map-data-box">
    <div id="data-title"><?=count($partners)?> <?=$this->lang->line("showrooms_title")?></div>
    <div id="partners-wrap">

      <div id="selecciona"><?=$this->lang->line("service_select")?></div>

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

    <div id="showroomquote">
      <div class="srwrapper didot">
      “<?=$this->lang->line("showrooms_quote")?>”
      </div>
    </div>

    <div class="showroomarea">
      <div class="showroomdivision"></div>
      <div class="showroom srwrapper">
          <div class="showroomleft">
            <div class="showroomtitle"><?=$this->lang->line("showrooms_title1")?></div>
            <div class="showroomsubtitle"><?=$this->lang->line("showrooms_content1")?></div>
          </div>
          <div class="showroomright">
            <div id="sr1"></div>
          </div>
      </div>
    </div>

    <div id="showroombig">
      <div class="showroomdivision"></div>
    </div>

    <div class="showroomarea">
      <div class="showroom srwrapper">
          <div class="showroomleft">
            <div class="showroomtitle"><?=$this->lang->line("showrooms_title2")?></div>
            <div class="showroomsubtitle"><?=$this->lang->line("showrooms_content2")?></div>
          </div>
          <div class="showroomright">
            <div id="sr2"></div>
          </div>
      </div>
    </div>

    <div class="showroomarea" style="background-color:white;" >
      <div class="showroomdivision"></div>
      <div class="showroom srwrapper inverted">
          <div class="showroomleft">
            <div class="showroomtitle"><?=$this->lang->line("showrooms_title3")?></div>
            <div class="showroomsubtitle"><?=$this->lang->line("showrooms_content3")?></div>
          </div>
          <div class="showroomright">
            <div id="sr3"></div>
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

