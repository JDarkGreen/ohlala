<?php /**
** Metabox que agregar un campo personalizado para todos 
** los catálogos tengan pdf o su tipo
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE CATÁLOGO DESCARGA  ---------------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cb_mb_catalogo_download' );


//llamar funcion 
function cb_mb_catalogo_download()
{ 
    #Registrar en todos las páginas
    add_meta_box( 'mb_catalogo_download_mbox', 'Pdf Catálogo Personalizado', 'cd_mb_catalogo_download_cb', array('theme-catalogos') , 'side', 'high' );
}


//customizar box
function cd_mb_catalogo_download_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    $mb_catalogo_download = get_post_meta( $post->ID, 'mb_catalogo_download' , true );

?>

        <!-- Input Oculto -->
        <input type="hidden" id="mb_catalogo_download" name="mb_catalogo_download" value="<?= trim($mb_catalogo_download); ?>" />

        <p class="description"> Añade un documento pdf - !No te olvides ACTUALIZAR! para guardar los datos</p>

        <!-- Contenedor Padre -->
        <div class="customize-img-container">

            <!-- Boton Agregar Elemento -->
            <button class="button button-primary js-add-custom-img" data-type="pdf" data-field-id="mb_catalogo_download">
                <?= empty($mb_catalogo_download) ? 'Agregar Elemento' : 'Cambiar Elemento'; ?>
            </button>  
            
            <!-- Espaciado -->
            <div style="clear:both; height: 5px;"> </div>

            <!-- Botón remover -->
            <button class="button button-primary js-remove-custom-img" data-field-id="mb_catalogo_download">
                <?php _e( 'Remover Elemento' , LANG ); ?>
            </button>

            <!-- Contenedor Hijo -->
            <div class="container-preview" style="background: rgba(0,0,0,.3); border: 1px dotted black; margin: 10px 0; text-align: center;">

                <?php if(!empty($mb_catalogo_download)) : ?>
                   <a href="<?= $mb_catalogo_download; ?>" target="_blank">
                    <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSA4zxxkv13OnM5Iis67kokyEU4oXBjKdvRg14SDOyzpEBBH-be" alt="catalogo-empresa" width="60" height="60px">
                    </a>
                <?php endif; ?>

            </div>
            
        </div> <!-- /.customize-img-container -->


<?php  

}


//guardar la data
add_action( 'save_post', 'cd_mb_catalogo_download_save' );

function cd_mb_catalogo_download_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;

    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;

    /** Check the user allowed to edit the post or page */
    if ( !current_user_can( 'edit_post', $post_id ) ) return;

    // Make sure your data is set before trying to save it
   if( isset( $_POST['mb_catalogo_download'] ) )
        update_post_meta( $post_id, 'mb_catalogo_download', $_POST['mb_catalogo_download'] );
}

