<?php
/**
 * La plantilla que muestra el footer
 *
 * Contiene el cierre de la div #content y todo el contenido después de
 *
 * @package WordPress
 * @subpackage Aqua Spa
 * @since Aqua Spa 1.0
 */

//Extraer todas las opciones de personalización
$options = get_option("theme_settings");

//var_dump($options);

?>
	
	<footer id="mainFooter" class="mainFooter">
		
		<!-- Wrapper de Contenido / Contenedor Layout -->
		<div class="pageWrapperLayout containerFlex">

			<!-- Item Footer Logo -->
			<div class="itemFooter">

				<!-- Logo -->
				<h2 id="logo-footer">
					<img src="<?= IMAGES ?>/main_logo.png" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
				</h2> <!-- /.logo -->

				<!-- Texto Presentación -->
				<?php 
					$text_footer = isset($options['theme_footer_text']) && !empty($options['theme_footer_text'] ) ? apply_filters( 'the_content' , $options['theme_footer_text'] ) : '';

					echo $text_footer;
				?>  

				<br />

				<!-- Texto web -->
				<div class="text-web text-uppercase"> www.ohlala.com </div>

			</div> <!-- /.itemFooter -->

			<!-- Item Footer Contacto -->
			<div class="itemFooter">

				<h2 class="title-footer text-uppercase"> <?= __("Contacto" , LANG );?> </h2>

				<!-- Menu de Datos -->
				<ul class="menuContactoFooter">
							
					<li>
						<!-- Icon -->
						<i class="fa fa-phone" aria-hidden="true"></i>

						<?php  
							for ( $i=1 ;  $i <= 5 ;  $i++) 
							{ 
								$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';

								echo $i !== 1 && !empty($phone) ? ' - ' : '';
								echo $phone;

							}
						?>
					</li>

					<!-- Email -->
					<!--li class="featured"-->
					<li>
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
						<?= isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>
					</li>
					
				</ul> <!-- /.menuContactoFooter -->

				<!-- Menu redes sociales -->
				<?php include( locate_template('partials/social/menu-footer-social.php') ); ?>

			</div> <!-- /.itemFooter -->

			<!-- Item Footer Reservas -->
			<div class="itemFooter">

				<h2 class="title-footer text-uppercase"> <?= __("Reservas" , LANG );?> </h2>

				<!-- Menu de Datos -->
				<ul class="menuContactoFooter">
							
					<!-- Direccion -->
					<li class="address">
						<i class="fa fa-home" aria-hidden="true"></i>
						<?= isset($options['theme_address_text']) ? apply_filters('the_content' , $options['theme_address_text'] ) : ''; ?>
					</li>	

					<!--  Atencion -->
					<li>
						<i class="fa fa-clock-o" aria-hidden="true"></i>
						<?= isset($options['theme_atention_text']) ? $options['theme_atention_text'] : ''; ?>
					</li>
					
				</ul> <!-- /.menuContactoFooter -->

				<!-- Espacio --> <br />

				<!-- Desarrollo -->
				<div class="mainFooter__develop">
					<?= '&copy; ' . date('Y') . ' Ohlala Derechos reservados Desing by'; ?>
					<a href="http://www.ingenioart.com/" target="_blank"> INGENIOART</a>
				</div>

			</div> <!-- /.itemFooter -->

		</div> <!-- /.pageWrapperLayout  -->
		
	</footer> <!-- /.#mainFooter -->
	
	</div> <!-- /end sliderbar container -->

	<?php wp_footer(); ?>

	<!-- Loader -->
	 <script type="text/javascript">
	 	var j = jQuery.noConflict();

        j("#fakeLoader").fakeLoader({
    
			timeToHide: 1200, //Time in milliseconds for fakeLoader disappear
			zIndex    : 99999999999999, // Default zIndex
			spinner   : "spinner5",//Options: 'spinner1', 'spinner2', 'spinner3', 'spinner4', 'spinner5', 'spinner6', 'spinner7' 
			bgColor   : "#362017", //Hex, RGB or RGBA colors
   		});
    </script>

	<script> var url = "<?= THEMEROOT ?>"; </script>
	
</body>
</html>
