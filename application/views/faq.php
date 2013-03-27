<div id="autosSlider">
	<div id="sliderContent" class="r10">

		<?php foreach($autos as $a): ?>
		<div
			id="btn-<?=$a->modelo?>" 
			class="btn-auto r8" 
			style="background:url(<?base_url()?>functions/imagen?c=autos&i=<?=$a->modelo?>&w=180&h=80) center no-repeat;">
		</div>
		<?php endforeach ?>
	</div>
</div>

<div id="autosInfo">
	<?php foreach($autos as $a): ?>
		<div class="auto" id="<?=$a->modelo?>">
			<div class="gallery"></div>
			<div class="image" style="background-image:url(<?base_url()?>functions/imagen?c=autos&i=<?=$a->modelo?>&w=540&h=330)">
				<div class="label"><?=$a->marca?><span class="bold"><?=$a->nombre?></span></div>
			</div>
			<div class="general">
				<div class="capacidades">
					<div class="pasajeros r10">
						<div class="icono r8"></div>
						<div class="cantidad"><?=$a->pasajeros?></div>
					</div>
					<div class="equipaje r10">
						<div class="icono r8"></div>
						<div class="cantidad"><?=$a->equipaje?></div>
					</div>
				</div>
				<div class="btn-rentar r10">¡Réntalo!</div>
				<div class="info-general">

				</div>
			</div>
		</div>
	<?php endforeach ?>
</div>


<script>
	$(".btn-auto").click(function(){
		var aux = $(this).prop("id").split("-");
		$(".auto").hide();
		$("#" + aux[1]).show();
	})
</script>