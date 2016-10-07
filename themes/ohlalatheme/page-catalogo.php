<?php /* Template Name: Página Catálogo Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Catálogos
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
$banner_title = 'catálogos';
include( locate_template('partials/banner-top-page.php') );

/*
 * Obtener todos los catalogos
 */ 
	$args = array('posts_per_page'=>-1,'post_type' =>'theme-catalogos','order'=>'ASC','orderby'=>'menu_order','post_status'=>'publish');
	
	$catalogos = get_posts( $args );
?>

<!-- Contenedor Sección -->
<section class="sectionContainerCatalogo">
	
	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout">

		<!-- Contenido -->
		<div class="content-text text-xs-center">
			<?= apply_filters( 'the_content' , $post->post_content ); ?>
		</div> <!-- /. -->

		<!-- Espacio --> <br/>
		
		<?php foreach( $catalogos as $item ): ?>
			
			<?php if( has_post_thumbnail($item->ID) ): ?>

				<!-- Articles -->
				<article class="itemCatalogo containerRelative">
					
					<!-- Imágen -->
					<figure>
						<?= get_the_post_thumbnail($item->ID,'full',array('class'=>'img-fluid d-block m-x-auto') ); ?>
					</figure>

					<!-- Descarga Botón -->
					<?php  
						$mb_link = get_post_meta($item->ID,'mb_catalogo_download',true);
						$mb_link = !empty($mb_link) ? $mb_link : '#';
					?>

					<a href="<?= $mb_link; ?>" target="_blank" download="<?= 'Ohlala Catalogo' . ' ' . $item->post_title; ?>" class="btn-show-more text-uppercase pull-xs-right"> descargar </a>

					<!-- Limpiar floats --> <div class="clearfix"></div>

				</article> <!-- /.itemServicePreview -->

			<?php endif; ?>

		<?php endforeach; ?>

	</div> <!-- /.pageWrapperLayout containerRelative -->

</section> <!-- /.sectionContainerCatalogo -->


<?php 
	/*
	 * Importar partial de contacto
	 */
	include( locate_template('partials/section-contact-banner.php') );
?>



<!-- Footer -->
<?php get_footer(); ?>