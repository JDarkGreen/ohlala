<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA EL BANNER HACIA EL CONTACTO
***/

$page_contacto      = get_page_by_title('Contacto');

$page_contacto_link = !empty($page_contacto) ? get_permalink( $page_contacto->ID ) : '#';

/*
 * Página de Catálogos
 */
$page_catalogo = get_page_by_title('Catálogos');

$page_catalogo_link = !empty($page_catalogo) ? get_permalink( $page_catalogo->ID ) : '#';


/*
 * Existe catalogo Descargable
 */
$link_catalogo = isset($options['theme_download_catalogo']) && !empty($options['theme_download_catalogo']) ? $options['theme_download_catalogo'] : '#';

/*
 * Notas
 *[otras clases en el boton ] => btn-show-more--gray
 */

?>

<section id="sectionBannerContacto" class="containerRelative">

	<div class="content-text m-x-auto containerFlex containerAlignContent text-xs-center">

		<!-- Titulo -->
		<h2 class="text-uppercase"> <?= __("descarga nuestro catálogo navideño" , LANG ); ?></h2>
		<!-- Boton -->
		<a href="<?= $page_catalogo_link; ?>" class="btn-show-more text-uppercase"> aquí </a>

	</div> <!-- /.content-text -->

</section> <!-- /.sectionBannerContacto -->