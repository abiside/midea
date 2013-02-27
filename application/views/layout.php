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
			<div id="footer">
				<div id="footerinfo" class="limited">
					<div id="leftarea">
						<h1>Contáctanos</h1>
						<span>Oficinas Corporativas</span><br>
						Arq. Pedro Ramírez Vázquez #200 -4<br>
						Col. Valle Oriente<br>
						San Pedro Garza García, N.L.<br>
						CP 66265<br>
						Teléfono  (81) 81 00 6888<br><br>

						<span>Ventas Zona Norte de México</span><br>
						Lic. Federico Fuentes<br>
						federico@midea.com.cn<br><br>

						<span>Ventas Zona Centro y Sureste de México</span><br>
						Lic. Luis Mendoza<br>
						lmendoza@midea.com<br><br>

						Ing. Ernesto Arguelles<br>
						ernesto_arguelles@midea.com
					</div>
					<div id="rightarea">
						Subscribete a nuestro newsletter.
						<form>
						 	<input class="innershadow" type="text" name="email" value="Email" onblur="if (this.value=='') this.value='Email';" onfocus=" if(!this._haschanged){this.value=''};this._haschanged=true;">
							<input value="Subscribirse" id="enviarbtn" type="submit">
						</form>
						<div id="bottombar"></div>
						Siguenos en: <div id="social"><a href="#" id="twitter"></a><a href="#" id="facebook"></a></div>
					</div>
					<div id="map"></div>
				</div>
				<div id="copyright">&copy;2013 Midea. Todos los Derechos Reservados.</div>
			</div>
		</div>

		
		
	</div>

</div>

</body>
</html>