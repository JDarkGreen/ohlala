<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los productos muestra el codigo
**/

/*|-------------------------------------------------------------------------|*/
/*|----------------- METABOX DE CÓDIGO --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_code_product' );

//llamar funcion 
function cd_mb_code_product()
{   
    $array_custom_types = array('theme-products');

    //Solo en productos
    add_meta_box( 'mb-code-product', 'Código de Producto', 'cd_mb_code_product_cb', $array_custom_types , 'side', 'high' );
}

//customizar box
function cd_mb_code_product_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $code = isset( $values['product_code'] ) ? $values['product_code'][0] : '';

    #var_dump($codes);

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );


    ?>
        <label for="product_code"> Código Producto </label> <br />

        <input name="product_code" value="<?= isset($code) && !empty($code) ? $code : '' ?>" /> 
    <?php    
}


//guardar la data
add_action( 'save_post', 'cd_mb_code_products_save' );

function cd_mb_code_products_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if ( !current_user_can( 'edit_post', $post_id ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['product_code'] ) )
        update_post_meta( $post_id, 'product_code', $_POST['product_code'] );
}



