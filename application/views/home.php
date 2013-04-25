<script src="<?=base_url()?>media/js/jquery-ui.min.js"></script>
<script src="<?=base_url()?>media/js/layerslider.js"></script>
<link rel="stylesheet" href="<?=base_url()?>media/css/slider.css" />
<link rel="stylesheet" href="<?=base_url()?>media/css/layerslider.css" />

<div id="slider">

	<!--<div class="ls-layer slidesbg" id="slide1" >
		<div class="ls-s1 slide-text firefix" style="width:100%;top:280px;">Mejorando tu estilo de vida</div>
	</div>-->

	<div class="ls-layer slidesbg" id="slide2" style="">
		<div class="ls-s1 slide-text" style="width:100%;top:100px;"><?=$this->lang->line("home_slider_1")?></div>
		<div class="ls-s2 slide-img" style="top:180px;"><img src="<?=base_url()?>media/img/slider/slider-img-2.png"></div>
	</div>

	<div class="ls-layer slidesbg" id="slide3" style="">
		<div class="ls-s1 slide-text" style="width:100%;top:80px;"><?=$this->lang->line("home_slider_2")?></div>
		<div class="ls-s2 slide-img" style="top:190px;"><img src="<?=base_url()?>media/img/slider/slider-img-1.png"></div>
	</div>

</div>

<div style="width:100%; height: 550px;"></div>

<div class="homeframe">
	<div class="limited">
		<div id="big-buttons">
			<a href="nosotros" class="button">
				<div class="title"><?=$this->lang->line("button1_title")?></div>
				<div class="icon"><img class="zoomico" src="<?=base_url()?>media/img/lib/icon-nosotros.png"><img src="<?=base_url()?>media/img/lib/ironcircle.png"></div>
				<div class="text"><?=$this->lang->line("button1_text")?></div>
			</a>
			<a href="productos" class="button">
				<div class="title"><?=$this->lang->line("button2_title")?></div>
				<div class="icon"><img class="zoomico" src="<?=base_url()?>media/img/lib/icon-productos.png"><img src="<?=base_url()?>media/img/lib/ironcircle.png"></div>
				<div class="text"><?=$this->lang->line("button2_text")?></div>
			</a>
			<a href="distribuidores" class="button last">
				<div class="title"><?=$this->lang->line("button3_title")?></div>
				<div class="icon"><img class="zoomico" src="<?=base_url()?>media/img/lib/icon-distribuidor.png"><img src="<?=base_url()?>media/img/lib/ironcircle.png"></div>
				<div class="text"><?=$this->lang->line("button3_text")?></div>
			</a>
		</div>
	</div>
</div> 

<div id="soporte-frame">
	<div class="shadowa"></div>

	<div class="limited">
		<div class="twocolumns">
			<div class="bigtext"><?=$this->lang->line("support_title")?></div>
			<div><?=$this->lang->line("support_text1")?></div>
			<input value="<?=$this->lang->line("support_button")?>" id="enviarbtn" type="submit" onclick="javascript:window.location = '<?=base_url()?>centros-de-servicio'">
			<div><?=$this->lang->line("support_text2")?></div>
			<div class="bigtext">01 800 000 0808</div>
		</div>
		
	</div>

</div>

<div id="lider-frame">
	<div class="limited" style="height:705px;">
		<div id="icon-lider" class="<?=$this->session->userdata("language")?>"></div>
			<div id="content-lider" class="didot">"<?=$this->lang->line("the_best")?>"</div>
		<div id="img-lider"></div>
	</div>
</div>
