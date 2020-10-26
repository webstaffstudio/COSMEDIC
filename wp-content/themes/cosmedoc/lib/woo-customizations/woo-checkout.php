<?php
add_filter( 'woocommerce_checkout_fields' , 'override_billing_checkout_fields', 20, 1 );
function override_billing_checkout_fields( $fields ) {
	$fields['billing']['billing_phone']['placeholder'] = 'Telefon';
	$fields['billing']['billing_email']['placeholder'] = 'Email';
	return $fields;
}
