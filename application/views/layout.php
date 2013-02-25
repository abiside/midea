<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf8" /> 
<title><?=$page_title?> - Midea México - Aires acondicionados</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />   
<link rel="stylesheet" href="<?=base_url()?>media/css/styles.css" />
<link rel="stylesheet" href="<?=base_url()?>media/css/distribuidores.css" />

<script src="<?=base_url()?>media/js/jquery.min.js"></script>
<script src="<?=base_url()?>media/js/functions.js"></script>

<!-- HELVETICA FONT -->
<script type="text/javascript" src="http://fast.fonts.com/jsapi/fe265cf8-a127-4fda-ac82-0b2a87a0a950.js"></script>

</head>

<body>

	<div id="cuerpo">
		<div id="header">
			<div id="barra-lang"></div>
			<div id="menu-sup">
				<div id="menu-content">
					<a href="<?=base_url()?>"><div id="logo"></div></a>
					<div id="opciones">

						<a href="<?=base_url()?>" class="opcion">Inicio</a>
						<a href="<?=base_url()?>productos" class="opcion">Productos</a>
						<a href="<?=base_url()?>nosotros" class="opcion">Nosotros</a>
						<a href="<?=base_url()?>distribuidores" class="opcion">Distribuidores</a>
						<a href="<?=base_url()?>#footer" class="opcion">Contacto</a>

					</div>
				</div>
			</div>
			
		</div>

		

		

		<div id="content">
			<?=$contenido?>
			<div id="footer"></div>
		</div>

		
		
	</div>

</div>

</body>
</html>