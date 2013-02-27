<script src="<?=base_url()?>media/js/jquery-ui.min.js"></script>
<script src="<?=base_url()?>media/js/layerslider.js"></script>
<link rel="stylesheet" href="<?=base_url()?>media/css/slider.css" />
<link rel="stylesheet" href="<?=base_url()?>media/css/layerslider.css" />

<div id="slider">

	<div class="ls-layer" id="slide1" >
		<img class="ls-bg" src="<?=base_url()?>media/img/slider/slider-bg-3.jpg">
		<div class="ls-s1 slide-text" style="width:100%;top:280px;">Mejorando tu estilo de vida</div>
	</div>

	<div class="ls-layer" id="slide2" style="">
		<img class="ls-bg" src="<?=base_url()?>media/img/slider/slider-bg-2.jpg">

		<div class="ls-s1 slide-text" style="width:100%;top:100px;">Mejorando tu estilo de vida</div>
		<div class="ls-s2 slide-img" style="top:180px;"><img src="<?=base_url()?>media/img/slider/slider-img-2.png"></div>
	</div>

	<div class="ls-layer" id="slide3" style="">
		<img class="ls-bg" src="<?=base_url()?>media/img/slider/slider-bg-1.jpg">

		<div class="ls-s1 slide-text" style="width:100%;top:80px;">Mejorando tu estilo de vida</div>
		<div class="ls-s2 slide-img" style="top:190px;"><img src="<?=base_url()?>media/img/slider/slider-img-1.png"></div>
	</div>

</div>

<div class="limited">
	<div id="big-buttons">
		<div class="button">
			<div class="title">Sobre Nosotros</div>
			<div class="icon"><img src="<?=base_url()?>media/img/lib/icon-nosotros.png"></div>
			<div class="text">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio</div>
		</div>
		<div class="button">
			<div class="title">Productos</div>
			<div class="icon"><img src="<?=base_url()?>media/img/lib/icon-productos.png"></div>
			<div class="text">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio</div>
		</div>
		<div class="button last">
			<div class="title">Distribuidor</div>
			<div class="icon"><img src="<?=base_url()?>media/img/lib/icon-distribuidor.png"></div>
			<div class="text">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio</div>
		</div>
	</div>
</div>


<div id="soporte-frame">
	<div class="shadow"></div>

	<div class="limited">
		<div class="twocolumns">
			<div class="bigtext">Servicio Técnico</div>
			<div>Contacta a nuestro servicio técnico para cualquier duda o servicio que requiera tu equipo.</div>
			<div class="bigtext">Lada Nacional</div>
			<div class="bigtext">01 800 000 0808</div>
		</div>
		<div class="twocolumns">
			<div>Envíanos un mensaje.</div>
			 <form>
			 	<input class="innershadow" type="text" name="nombre" value="Nombre" onblur="if (this.value=='') this.value='Nombre';" onfocus=" if(!this._haschanged){this.value=''};this._haschanged=true;">
			 	<input class="innershadow" type="text" name="email" value="Email" onblur="if (this.value=='') this.value='Email';" onfocus=" if(!this._haschanged){this.value=''};this._haschanged=true;">
			 	<textarea name="mensaje" class="innershadow">Mensaje</textarea>
			 	<input value="Enviar" id="enviarbtn" type="submit">
			 </form>
		</div>
	</div>

</div>

<div id="lider-frame">
	<div class="limited" style="height:705px;">
		<div id="icon-lider"></div>
			<div id="content-lider" class="didot">Lorem Ipsum. Proin gravida nibh vel velitt iauris. endisse in orci enim.</div>
		<div id="img-lider"></div>
	</div>
</div>