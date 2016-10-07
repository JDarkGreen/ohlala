<?php /* Template Name: Página Nosotros Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Nosotros
 *
 */

/**
  * Objeto actual
  */
global $post;

/*
 * Obtener Header
 */
get_header(); 

/*
 * Extraer opciones del tema
 */
$options = get_option("theme_settings");

/*
 * Importar banner de Página
 */

include( locate_template('partials/banner-top-page.php') );

/*
 * Importar Sección de Página Nosotros
 */

include( locate_template('partials/nosotros/section-nosotros.php') );

?>


<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<!-- Sección de Aptitudes -->
	<section id="sectionAptitudes">

		<!-- Título -->
		<h2 class="title-aptitudes text-capitalize">
			<?= __('misión',LANG); ?>
		</h2> <!-- /.title-aptitudes -->

		<div>
			<?php echo $text_mision = isset($options['theme_mision_text']) && !empty($options['theme_mision_text']) ? $options['theme_mision_text'] : '';	
		?>		
		</div>

		<!-- Espacio --> <br/><br/><br/>

		<!-- Título -->
		<h2 class="title-aptitudes text-capitalize">
			<?= __('visión',LANG); ?>
		</h2> <!-- /.title-aptitudes -->
		
		<div>
		<?php echo $text_mision = isset($options['theme_vision_text']) && !empty($options['theme_vision_text']) ? $options['theme_vision_text'] : '';
		?>	</div>	
		
	</section> <!-- /#sectionAptitudes -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<?php 
	/*
	 * Importar partial de contacto
	 */
	include( locate_template('partials/section-contact-banner.php') );
?>



<!-- Footer -->
<?php get_footer(); ?>