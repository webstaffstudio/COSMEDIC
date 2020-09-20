<?php

/**
 * Change a currency symbol
 */
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);

function change_existing_currency_symbol( $currency_symbol, $currency ) {
	switch( $currency ) {
		case 'RUB': $currency_symbol = __('руб.', THEME_TD); break;
	}
	return $currency_symbol;
}

//remove tabs at single product page
add_filter( 'woocommerce_product_tabs', 'cosmedic_remove_description_tab', 11 );

function cosmedic_remove_description_tab( $tabs ) {

	unset( $tabs['description'] );
	unset( $tabs['reviews'] );
	return $tabs;

}

//wc subtitle meta
//add_action( 'woocommerce_product_options_general_product_data', 'cosmedic_product_country_meta' );
//
//function cosmedic_product_country_meta() {
//
//	woocommerce_wp_text_input(
//		array(
//			'id'          => '_product_country',
//			'label'       => __( 'Страна производитель и ', 'woocommerce' ),
//			'placeholder' => 'Введите страну....',
//			'description' => __( 'Страна производитель.', 'woocommerce' )
//		)
//	);
//
//}
//
//add_action( 'woocommerce_process_product_meta', 'cosmedic_product_country_meta_save' );
//
//function cosmedic_product_country_meta_save( $post_id ){
//
//	$product_country = $_POST['_product_country'];
//	if( !empty( $product_country ) )
//		update_post_meta( $post_id, '_product_country', esc_attr( $product_country ) );
//
//}
