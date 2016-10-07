<?php  


/*-----------------------------------*
** TELEFONOS
*------------------------------------*/
add_settings_section( PREFIX."_themePage_section_phone" , __( 'Personalizar Teléfonos:' , 'LANG' ), 'custom_settings_section_phone_callback', 'customThemePageEmpresa' );

function custom_settings_section_phone_callback()
{ 
	echo __( 'Coloca los números correspondientes', 'LANG' );
}



//TELEFONO
add_settings_field( 'theme_phone_text_1', __( 'Numero Telefono 1', 'LANG' ), 'custom_phone_render', 'customThemePageEmpresa', PREFIX."_themePage_section_phone" );
//Renderizado 
function custom_phone_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<input type='text' id='theme_phone_text_1' class='js-field-ajax' value='<?= !empty($options['theme_phone_text_1']) ? $options['theme_phone_text_1'] : "" ; ?>'>
	<?php
}



//TELEFONO
add_settings_field( 'theme_phone_text_2', __( 'Número Telefono 2', 'LANG' ), 'custom_phone2_render', 'customThemePageEmpresa', PREFIX."_themePage_section_phone" );
//Renderizado 
function custom_phone2_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<input type='text' id='theme_phone_text_2' class='js-field-ajax' value='<?= !empty($options['theme_phone_text_2']) ? $options['theme_phone_text_2'] : "" ; ?>'>
	<?php
}



//CELULAR
add_settings_field( 'theme_cel_text_1', __( 'Numero Celular 1', 'LANG' ), 'custom_cel_render', 'customThemePageEmpresa', PREFIX."_themePage_section_phone" );
//Renderizado 
function custom_cel_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<input type='text' id='theme_cel_text_1' class='js-field-ajax' value='<?= !empty($options['theme_cel_text_1']) ? $options['theme_cel_text_1'] : "" ; ?>'>
	<?php
}



//CELULAR 2
add_settings_field( 'theme_cel_text_2', __( 'Numero Celular 2', 'LANG' ), 'custom_cel2_render', 'customThemePageEmpresa', PREFIX."_themePage_section_phone" );
//Renderizado 
function custom_cel2_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<input type='text' id='theme_cel_text_2' class='js-field-ajax' value='<?= !empty($options['theme_cel_text_2']) ? $options['theme_cel_text_2'] : "" ; ?>'>
	<?php
}


/*-----------------------------*
* SECCION EMAIL 
*-------------------------------*/

add_settings_section( PREFIX."_themePage_section_email" , __( 'Personalizar Email:' , 'LANG' ), 'custom_settings_section_email_callback', 'customThemePageEmpresa' );

function custom_settings_section_email_callback()
{ 
	echo __( 'Coloca email(s) correspondientes', 'LANG' );
}


//EMAIL
add_settings_field( 'theme_email_text', __( 'Email Empresa:', 'LANG' ), 'custom_email_render', 'customThemePageEmpresa', PREFIX."_themePage_section_email" );
//Renderizado 
function custom_email_render() 
{ 
	$options = get_option( 'theme_settings' ); 

	?>
	<input type='text' id='theme_email_text' class='js-field-ajax' value='<?= !empty($options['theme_email_text']) ? $options['theme_email_text'] : "" ; ?>'>
	<?php
}



/*-----------------------------*
* SECCION UBICACIÓN
*------------------------------*/
add_settings_section( PREFIX."_themePage_section_address" , __( 'Personalizar Dirección:' , 'LANG' ), 'custom_settings_section_address_callback', 'customThemePageEmpresa' );

function custom_settings_section_address_callback()
{ 
	echo __( 'Coloca dirección correspondiente', 'LANG' );
}


//DIRECCIÓN
add_settings_field( 'theme_address_text', __( 'Dirección Empresa:', 'LANG' ), 'custom_address_render', 'customThemePageEmpresa', PREFIX."_themePage_section_address" );
//Renderizado 
function custom_address_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>

	<textarea id="theme_address_text" class='js-field-ajax textarea-field' ><?= !empty($options['theme_address_text']) ? $options['theme_address_text'] : "" ; ?></textarea>

	<?php
}



/*----------------------*
* SECCION ATENCIÓN
*------------------------*/
add_settings_section( PREFIX."_themePage_section_atention" , __( 'Personalizar Horario Atención:' , 'LANG' ), 'custom_settings_section_atention_callback', 'customThemePageEmpresa' );

function custom_settings_section_atention_callback()
{ 
	echo __( 'Coloca horario de atención', 'LANG' );
}


//ATENCIÓN
add_settings_field( 'theme_atention_text', __( 'Horario de atención:', 'LANG' ), 'custom_atention_render', 'customThemePageEmpresa', PREFIX."_themePage_section_atention" );
//Renderizado 
function custom_atention_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<textarea id="theme_atention_text" class='js-field-ajax textarea-field'><?= !empty($options['theme_atention_text']) ? $options['theme_atention_text'] : "" ; ?></textarea>
	<?php
}

/*----------------------*
* SECCION DESCARGABLES
*------------------------*/
add_settings_section( PREFIX."_themePage_section_downloads" , __( 'Personalizar Descargables:' , 'LANG' ), 'custom_settings_section_downloads_callback', 'customThemePageEmpresa' );

function custom_settings_section_downloads_callback()
{ 
	echo __( 'Setea los descargables aquí', 'LANG' );
}


//CATÁLOGO
add_settings_field( 'theme_download_catalogo', __( 'Catálogo Descargable:', 'LANG' ), 'custom_catalogo_render', 'customThemePageEmpresa', PREFIX."_themePage_section_downloads" );

//Renderizado 
function custom_catalogo_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<input type='hidden' id='theme_download_catalogo' class='js-field-ajax' value='<?= !empty($options['theme_download_catalogo']) ? $options['theme_download_catalogo'] : "" ; ?>'>

	<!-- Contenedor Padre -->
	<div class="customize-img-container">

        <!-- Boton Agregar Elemento -->
        <button class="button button-primary js-add-custom-img" data-type="pdf" data-field-id="theme_download_catalogo">  Agregar Elemento </button>  
            
        <!-- Espaciado --> <div style="clear:both; height: 5px;"> </div>

        <!-- Botón remover -->
       <button class="button button-primary js-remove-custom-img" data-field-id="theme_download_catalogo"> Remover Elemento </button>

		<!-- Espaciado --> <div style="clear:both; height: 5px;"> </div>

        <!-- Contenedor Hijo -->
        <div class="container-preview" style="background: rgba(0,0,0,.3); border: 1px dotted black; margin: 10px 0; text-align: center; display: inline-block;"> 

			<?php if( !empty($options['theme_download_catalogo']) ): ?>
				<a href="<?= $options['theme_download_catalogo']; ?>" target="_blank">
					<img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSA4zxxkv13OnM5Iis67kokyEU4oXBjKdvRg14SDOyzpEBBH-be" alt="catalogo-empresa" width="60" height="60px">
				</a>
			<?php endif; ?>

        </div>

    </div> <!-- /fin contenedor padre -->

	<?php
}


/*----------------------*
* SECCION APTITUDES
*------------------------*/
add_settings_section( PREFIX."_themePage_section_aptitudes" , __( 'Personalizar Aptitudes Empresa:' , 'LANG' ), 'custom_settings_section_aptitudes_callback', 'customThemePageEmpresa' );

function custom_settings_section_aptitudes_callback()
{ 
	echo __( 'Setea información aquí', 'LANG' );
}


//MISIÓN
add_settings_field( 'theme_mision_text', __( 'Misión Empresa:', 'LANG' ), 'custom_mision_render', 'customThemePageEmpresa', PREFIX."_themePage_section_aptitudes" );

function custom_mision_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<textarea id="theme_mision_text" class='js-field-ajax textarea-field'><?= !empty($options['theme_mision_text']) ? $options['theme_mision_text'] : "" ; ?></textarea>
	<?php
}


//VISIÓN
add_settings_field( 'theme_vision_text', __( 'Visión Empresa:', 'LANG' ), 'custom_vision_render', 'customThemePageEmpresa', PREFIX."_themePage_section_aptitudes" );

function custom_vision_render() 
{ 
	$options = get_option( 'theme_settings' ); 
	?>
	<textarea id="theme_vision_text" class='js-field-ajax textarea-field'><?= !empty($options['theme_vision_text']) ? $options['theme_vision_text'] : "" ; ?></textarea>
	<?php
}




?>