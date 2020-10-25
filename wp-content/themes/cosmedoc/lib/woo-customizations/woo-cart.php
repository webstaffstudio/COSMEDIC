<?php

function woo_in_cart($product_id)
{
	foreach (WC()->cart->get_cart() as $cart_item) {
		$product_in_cart = $cart_item['product_id'];
		if ($product_in_cart === $product_id) {
			return true;
		}
	}
	return false;
}

add_action( 'woocommerce_before_calculate_totals', 'custom_woocommerce_before_calculate_totals', 20 );

function custom_woocommerce_before_calculate_totals( $cart ) {
	foreach ( $cart->get_cart() as $cart_item ) {
		if( has_term( 75, 'cos_product_types', $cart_item['product_id'])) {
			$cart_item['data']->set_price(1);
		}
	}
}

add_action( 'woocommerce_after_calculate_totals', 'custom_woocommerce_after_calculate_totals' );
function custom_woocommerce_after_calculate_totals(){
	$fields_cart = get_fields('options');
	$total = WC()->cart->get_cart_contents_total();
	$needed_sum = isset($fields_cart['gift_products']['gift_sum'])?$fields_cart['gift_products']['gift_sum']:'';
	if($needed_sum && $needed_sum > intval($total)) {
		foreach ( WC()->cart->get_cart() as $cart_item ) {
			if( has_term( 75, 'cos_product_types', $cart_item['product_id']) ) {
				$product_cart_id = WC()->cart->generate_cart_id( $cart_item['product_id'] );
				WC()->cart->remove_cart_item( $product_cart_id);
			}
		}
	}
}

add_action('wp_ajax_add_gift_product', 'add_gift_product');
add_action('wp_ajax_nopriv_add_gift_product', 'add_gift_product');

function add_gift_product()
{
	$fields_cart = get_fields('options');
	$total = WC()->cart->get_cart_contents_total();
	$needed_sum = isset($fields_cart['gift_products']['gift_sum'])?$fields_cart['gift_products']['gift_sum']:'';
	if (isset($_POST['product']) && $needed_sum && $needed_sum < intval($total)) {
		$product_id = $_POST['product'];
		foreach ( WC()->cart->get_cart() as $cart_item ) {
			if( has_term( 75, 'cos_product_types', $cart_item['product_id']) ) {
				$product_cart_id = WC()->cart->generate_cart_id( $cart_item['product_id'] );
				WC()->cart->remove_cart_item( $product_cart_id);
			}
		}
		$product_cart_id = WC()->cart->generate_cart_id( $product_id );
		if( ! WC()->cart->find_product_in_cart( $product_cart_id ) ){
			WC()->cart->add_to_cart( $product_id );
		}
	} else {
		foreach ( WC()->cart->get_cart() as $cart_item ) {
			if( has_term( 75, 'cos_product_types', $cart_item['product_id']) ) {
				$product_cart_id = WC()->cart->generate_cart_id( $cart_item['product_id'] );
				WC()->cart->remove_cart_item( $product_cart_id);
			}
		}
	}
	wp_die();
}
