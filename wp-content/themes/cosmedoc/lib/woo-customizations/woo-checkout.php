<?php
//reorder fields
add_filter("woocommerce_checkout_fields", "custom_override_checkout_fields", 1);
function custom_override_checkout_fields($fields) {
	$fields['billing']['billing_first_name']['priority'] = 1;
	$fields['billing']['billing_last_name']['priority'] = 2;
	$fields['billing']['billing_email']['priority'] = 3;
	$fields['billing']['billing_address_1']['priority'] = 4;
	$fields['billing']['billing_address_2']['priority'] = 5;
	$fields['billing']['billing_office']['priority'] = 6;
	$fields['billing']['billing_city']['priority'] = 7;
	$fields['billing']['billing_postcode']['priority'] = 8;
	$fields['billing']['billing_phone']['priority'] = 9;
	return $fields;
}

add_filter('woocommerce_checkout_fields', 'override_billing_checkout_fields', 20, 1);
function override_billing_checkout_fields($fields)
{
	$fields['billing']['billing_first_name']['placeholder'] = __('Имя', THEME_TD);
	$fields['billing']['billing_last_name']['placeholder'] = __('Фамилия', THEME_TD);
	$fields['billing']['billing_phone']['placeholder'] = __('+7 *** ** **', THEME_TD);
	$fields['billing']['billing_address_1']['placeholder'] = __('Улица', THEME_TD);
	$fields['billing']['billing_office']['placeholder'] = '2к1';
	return $fields;
}

//remove fields billing
function wc_remove_checkout_fields($fields)
{

	$fields['billing']['billing_office']['label'] = 'Дом/Строение';
	$fields['billing']['billing_first_name']['label'] = __('Имя',THEME_TD);
	$fields['billing']['billing_last_name']['label'] = __('Фамилия',THEME_TD);
	$fields['billing']['billing_email']['label'] = __('Адрес электронной почты (email)',THEME_TD);
	$fields['billing']['billing_address_1']['label'] = __('Улица',THEME_TD);
	$fields['billing']['billing_city']['label'] =  __('Город',THEME_TD);
	$fields['billing']['billing_postcode']['label'] =  __('Почтовый индекс',THEME_TD);
	$fields['billing']['billing_phone']['label'] = __('Телефон',THEME_TD);

	unset( $fields['billing']['billing_company'] );
	unset( $fields['billing']['billing_address_2'] );
	unset( $fields['billing']['billing_country'] );
	return $fields;
}

add_filter('woocommerce_checkout_fields', 'wc_remove_checkout_fields');

function shipping() {

	global $woocommerce;

	$active_methods   = array();
	$values = array ('country' => 'NL',
		'amount'  => 100);


	// Fake product number to get a filled card....
	$woocommerce->cart->add_to_cart('1');

	WC()->shipping->calculate_shipping(get_shipping_packages($values));
	$shipping_methods = WC()->shipping->packages;

	foreach ($shipping_methods[0]['rates'] as $id => $shipping_method) {
		$active_methods[] = array(  'id'        => $shipping_method->method_id,
			'type'      => $shipping_method->method_id,
			'provider'  => $shipping_method->method_id,
			'name'      => $shipping_method->label,
			'price'     => number_format($shipping_method->cost, 2, '.', ''));
	}
	return $active_methods;
}


function get_shipping_packages($value) {

	// Packages array for storing 'carts'
	$packages = array();
	$packages[0]['contents']                = WC()->cart->cart_contents;
	$packages[0]['contents_cost']           = $value['amount'];
	$packages[0]['applied_coupons']         = WC()->session->applied_coupon;
	$packages[0]['destination']['country']  = $value['countries'];
	$packages[0]['destination']['state']    = '';
	$packages[0]['destination']['postcode'] = '';
	$packages[0]['destination']['city']     = '';
	$packages[0]['destination']['address']  = '';
	$packages[0]['destination']['address_2']= '';


	return apply_filters('woocommerce_cart_shipping_packages', $packages);
}

//diasble order review table
//remove_action( 'woocommerce_checkout_order_review', 'woocommerce_order_review', 10 );

//add_action( 'woocommerce_after_shipping_rate', 'checkout_shipping_additional_field', 20, 2 );
//function checkout_shipping_additional_field( $method, $index )
//{
//	if( $method->get_id() == 'flat_rate:12' ){
//		echo '<br>
//        <input type="checkbox" name="shipping_custom_1" id="shipping_custom_1" value="1" class="shipping_method shipping_custom_1">
//        <label for="shipping_custom_1">Custom label</label>';
//	}
//}
