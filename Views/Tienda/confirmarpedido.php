<?php 
headerTienda($data);
 ?>
<br><br><br>
<div class="jumbotron text-center">
  <h1 class="display-4">¡Gracias por tu compra!</h1>
  <p class="lead">Tu pedido fue procesado con éxito.</p>
  <p class="lead">Se te ha enviado un email a tu correo, con todos los detalles de tu compra.</p>
  <p>No. Orden: <strong> <?= $data['orden']; ?> </strong></p>
  	<?php 
  		if(!empty($data['transaccion'])){
    ?>
    <p>Transacción: <strong> <?= $data['transaccion']; ?> </strong></p>
   <?php } ?>
  <hr class="my-4">
  <p>Recuerda que el pago deberá enviarse al siguiente CBU: </p> <br>
  <h4><b>CBU: 0000003100089302813705</b></h4>
  <h4><b>Alias: buzo.aunar.tour.mp</b></h4>
  <h4><b>Titular: Maria Celeste Trejo</b></h4> <br>
  <p>Muy pronto estaremos en contacto para coordinar la entrega.</p>
  <p>Puedes ver el estado de tu pedido en la sección pedidos de tu usuario.</p>
  <br>
  <a class="btn btn-primary btn-lg" href="<?= base_url(); ?>" role="button">Continuar</a>
</div>

<?php 
	footerTienda($data);
?>