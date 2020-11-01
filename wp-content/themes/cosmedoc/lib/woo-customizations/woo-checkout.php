<?php
//reorder fields
add_filter("woocommerce_checkout_fields", "custom_override_checkout_fields", 1);
function custom_override_checkout_fields($fields)
{
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
	$fields['billing']['billing_first_name']['label'] = __('Имя', THEME_TD);
	$fields['billing']['billing_last_name']['label'] = __('Фамилия', THEME_TD);
	$fields['billing']['billing_email']['label'] = __('Адрес электронной почты (email)', THEME_TD);
	$fields['billing']['billing_address_1']['label'] = __('Улица', THEME_TD);
	$fields['billing']['billing_city']['label'] = __('Город', THEME_TD);
	$fields['billing']['billing_postcode']['label'] = __('Почтовый индекс', THEME_TD);
	$fields['billing']['billing_phone']['label'] = __('Телефон', THEME_TD);
	$fields['order']['order_comments']['label'] = 'Комментарий к заказу';
	unset($fields['billing']['billing_company']);
	unset($fields['billing']['billing_address_2']);
//	unset( $fields['billing']['billing_country'] );
	unset($fields['order']['order_comments']['placeholder']);
	return $fields;
}

add_filter('woocommerce_checkout_fields', 'wc_remove_checkout_fields');

add_action('woocommerce_review_order_before_payment', 'cos_additional_order_fields', 5);
function cos_additional_order_fields()
{
	$checkout = new WC_Checkout();
	$agree_text = get_field('chk_agree_text', 'options');
	$text_before_process = get_field('chk_text_before_proccess_pay', 'options');
	?>
	<?php ob_start(); ?>
	<div class="woocommerce-additional-fields">

		<?= ($agree_text) ? '<div class="agree-field">' . $agree_text . '</div>' : ''; ?>
		<div class="subscribe-btn">
			<input type="checkbox" class="subscribe-news" id="subscribe_news" name="subscribe_news">
			<label for="subscribe_news"><?= __('Подписаться на новости', THEME_TD); ?></label>
		</div>
		<div class="order-comments-section">
			<?php do_action('woocommerce_before_order_notes', $checkout); ?>

			<?php if (apply_filters('woocommerce_enable_order_notes_field', 'yes' === get_option('woocommerce_enable_order_comments', 'yes'))) : ?>

				<div class="woocommerce-additional-fields__field-wrapper order-comments-field">
					<?php foreach ($checkout->get_checkout_fields('order') as $key => $field) : ?>
						<?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>
					<?php endforeach; ?>
				</div>

			<?php endif; ?>

			<?php do_action('woocommerce_after_order_notes', $checkout); ?>

			<div class="order-notices">
				<?= ($text_before_process) ? '<div>' . $text_before_process . '</div>' : ''; ?>
			</div>
		</div>
	</div>
	<?php
	$additional_html = ob_get_clean();
	echo $additional_html;
}

add_action('woocommerce_review_order_after_submit', 'cos_notice_after_payment', 10);
function cos_notice_after_payment(){
	$cart_link = esc_url(wc_get_cart_url());
	echo '<div class="notice_after_payment">';
	echo __('Забыли добавить товар? <a href="'.$cart_link.'">Измените данные в корзине покупок </a>', THEME_TD);
	echo '</div>';
}

