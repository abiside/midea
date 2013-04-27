<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<title><?=$page_title?> - <?=$this->lang->line("web_title")?></title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />   
<link rel="stylesheet" href="<?=base_url()?>media/css/styles.css" />
<link rel="stylesheet" href="<?=base_url()?>media/css/distribuidores.css" />

<script src="<?=base_url()?>media/js/jquery.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>media/js/scrollto.js"></script>

<script type="text/javascript" src="<?=base_url()?>media/js/gmap3.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKP009lkOzAgIiLqM0mc6yVtIuEZNgW68&sensor=false">
</script>

<!-- HELVETICA FONT -->

</head> 

<?php
 switch ($page) {
 	case 'productos': $sbar = "sprod"; break;
 	case 'about': $sbar = "snoso"; break;
 	case 'soporte': $sbar = "ssopo"; break;
 	case 'distribuidores': $sbar = "sdist"; break;
 	default: $sbar = "shome"; break;
 }
 ?>

<body>

	<div id="cuerpo">
		<div id="header">
			<div id="menu-sup">
				<div id="menu-content">
					<a href="<?=base_url()?>"><div id="logo"></div></a>
					<div id="opciones">

						<a href="<?=base_url()?>" class="opcion" id="home"><?=$this->lang->line("menu_home")?></a>
						<a href="<?=base_url()?>productos" class="opcion" id="prod"><?=$this->lang->line("menu_products")?></a>
						<a href="<?=base_url()?>nosotros" class="opcion" id="noso"><?=$this->lang->line("menu_about")?></a>
						<a href="<?=base_url()?>centros-de-servicio" class="opcion" id="sopo"><?=$this->lang->line("menu_support")?></a>
						<a href="<?=base_url()?>donde-comprar" class="opcion" id="dist"><?=$this->lang->line("menu_distributors")?></a>
						<a href="javascript:scroll('footerplaceholder');" class="opcion" id="conta"><?=$this->lang->line("menu_contact")?></a>

						<div class="<?=$this->session->userdata("language")?>"><div id="selectedbar" class="<?php echo $sbar; ?>" ></div></div>

					</div>

					<div id="barra-lang">
						<a href="<?php echo base_url() ."functions/lang/es/" . urlencode(base64_encode(uri_string())); ?>" class="active">ES </a> / <a href="<?php echo base_url() ."functions/lang/en/" . urlencode(base64_encode(uri_string())); ?>">EN</a>

					</div>

				</div>
			</div>
			
		</div>

		

		

		<div id="content">
			<div class="fullframe">
			<?=$contenido?>
			</div>
			<div id="footerplaceholder"></div>
			<div id="footer">
				<div id="footerinfo" class="limited">
					<div id="leftarea">
						
						<h1><?=$this->lang->line("contact_title")?></h1>
						<span><?=$this->lang->line("contact_offices")?></span><br>
						<?=$this->lang->line("contact_corp")?>

						<span><?=$this->lang->line("contact_north")?></span><br>
						<?=$this->lang->line("contact_person_1")?><br>
						<a href="mailto:federico@midea.com.cn">federico@midea.com.cn</a><br><br>

						<span><?=$this->lang->line("contact_center")?></span><br>
						<?=$this->lang->line("contact_person_2")?><br>
						<a href="mailto:lmendoza@midea.com">lmendoza@midea.com</a>
					</div>
					<div id="rightarea">
						<a target="_blank" href="https://maps.google.com/maps?q=Valle+Oriente,+San+Pedro+Garza+Garc%C3%ADa,+Mexico&hl=en&ie=UTF8&ll=25.656363,-100.345988&spn=0.018472,0.02856&sll=25.664389,-100.345688&sspn=0.009235,0.01428&oq=valle+oriente&hnear=Valle+Oriente,+San+Pedro+Garza+Garc%C3%ADa,+Nuevo+Le%C3%B3n,+Mexico&t=m&z=16"><div id="mapita"></div></a>
						<!--<form>

							<input class="innershadow" type="text" name="nombre" value="Nombre" 
						 	onblur="if (this.value=='') this.value='Nombre';" 
						 	onfocus=" if(!this._haschanged){this.value=''};this._haschanged=true;">

						 	<input class="innershadow" type="text" name="email" value="Email" 
						 	onblur="if (this.value=='') this.value='Email';" 
						 	onfocus=" if(!this._haschanged){this.value=''};this._haschanged=true;">

						 	<textarea name="mensaje" class="innershadow">Mensaje</textarea>

							<input value="Enviar" id="enviarbtn" type="submit">
						</form-->



						<div id="bottombar"></div>
						<?=$this->lang->line("contact_followus")?>: <div id="social"><a href="#" id="twitter"></a><a href="#" id="facebook"></a></div>
					</div>
				</div>
				<div id="copyright">&copy;2013 Midea. <?=$this->lang->line("copyright")?>. Powered by <a href="http://puntoindex.com/" target="_blank" style="font-size:8px;">PUNTOINDEX</a>. </div>
			</div>
		</div>

		
		
	</div>

</div>

</body>
</html>

<script src="<?=base_url()?>media/js/functions.js"></script>