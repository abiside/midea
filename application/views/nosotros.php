<div id="imagearea"></div>

<div id="imagarea-holder"></div>

<div style="background-color:white;">

<div class="nosotroscontenido">
	<h1><?=$this->lang->line("about_title")?></h1>
	<div id="descripcion">
		<?=$this->lang->line("about_description")?>
	</div>

	<div id="ceosection" style="margin:70px 0px 100px;  padding-top: 70px;">
	<div id="ceoarea">
		<div id="ceoquote" class="didot">
		“<?=$this->lang->line("about_ceo")?>”
			<div id="ceoname"> 
				- <span> Paul Fang </span>  CEO MIDEA
			</div>
		</div>
		<div id="ceoimg"></div>
	</div>
	</div>

	<h1>Ranking</h1>
	<div class="columna">
		<div class="numero"><span>#</span>70</div>
		<div class="desc"><?=$this->lang->line("about_500")?></div>
	</div>
	<div class="columna">
		<div class="numero"><span>#</span>25</div>
		<div class="desc"><?=$this->lang->line("about_50")?></div>
	</div>
	<div class="columna">
		<div class="numero"><span>#</span>06</div>
		<div class="desc"><?=$this->lang->line("about_2011")?></div>
	</div>

</div>

<div class="greysection">
		<div class="divider"></div>
		<div class="greywrapper">
			<div class="title"><?=$this->lang->line("about_100")?></div>
			<div class="subtitle"><?=$this->lang->line("about_mag")?></div>
		</div>
</div>
<div class="divider"></div>

<div class="nosotroscontenido">
		<div class="square top <?=$this->session->userdata("language")?>" id="tl"></div>
		<div class="square top right <?=$this->session->userdata("language")?>" id="tr"></div>
		<div class="square <?=$this->session->userdata("language")?>" id="bl"></div>
		<div class="square right <?=$this->session->userdata("language")?>" id="br"></div>
</div>

</div>
