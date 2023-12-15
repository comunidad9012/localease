<?php 
headerTienda($data);
$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];

 ?>
<script>
 	document.querySelector('header').classList.add('header-v4');
 </script>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url(<?= $banner ?>);">
	<h2 class="ltext-105 cl0 txt-center">
		Contacto
	</h2>
</section>

<?php
	if(viewPage($idpagina)){	
 ?>
<!-- Content page -->
<section class="bg0 p-t-104 p-b-116">
	<div class="container">
		<div class="flex-w flex-tr">
			<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
				<form id="frmContacto">
					<h4 class="mtext-105 cl2 txt-center p-b-30">
						Enviar un mensaje
					</h4>

					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" id="nombreContacto" name="nombreContacto" placeholder="Nombre completo">
						<img class="how-pos4 pointer-none" src="<?= media() ?>/tienda/images/icons/icon-name.png" alt="ICON" style="width: 28px;">
					</div>

					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" id="emailContacto" name="emailContacto" placeholder="Correo electrónico">
						<img class="how-pos4 pointer-none" src="<?= media() ?>/tienda/images/icons/icon-email.png" alt="ICON">
					</div>

					<div class="bor8 m-b-30">
						<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" id="mensaje" name="mensaje" placeholder="Deja tu consulta aquí"></textarea>
					</div>

					<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
						Enviar
					</button>
				</form>
			</div>

			<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-map-marker"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							Dirección
						</span>

						<p class="stext-115 cl6 size-213 p-t-18">
							<?= DIRECCION ?>
						</p>
					</div>
				</div>

				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-phone-handset"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							Teléfono
						</span>

						<p class="stext-115 cl1 size-213 p-t-18">

							<a class="" href="tel:<?= TELEMPRESA ?>"><?= TELEMPRESA ?></a>
						</p>
					</div>
				</div>

				<div class="flex-w w-full">
					<span class="fs-18 cl5 txt-center size-211">
						<span class="lnr lnr-envelope"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2">
							E-mail
						</span>

						<p class="stext-115 cl1 size-213 p-t-18">
							<a class="" href="mailto:<?= EMAIL_EMPRESA ?>"><?= EMAIL_EMPRESA ?>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>	

<div class="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.5716492141896!2d-68.3331303243298!3d-34.614991672950374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967907fc4b7ef197%3A0x87bbd45bdd78d6fb!2s47%20Street%20San%20Rafael!5e0!3m2!1ses-419!2sar!4v1701803262145!5m2!1ses-419!2sar" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	

</div>	
<?php 
		echo $data['page']['contenido'];
	}else{
?>
<div>
	<div class="container-fluid py-5 text-center" >
		<img src="<?= media() ?>/images/construction.png" alt="En construcción">
		<h3>Estamos trabajando para usted.</h3>
	</div>
</div>
<?php 
	}
	footerTienda($data);
?>