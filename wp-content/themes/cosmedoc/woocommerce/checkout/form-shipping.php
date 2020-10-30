<?php
/**
 * Checkout shipping information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-shipping.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 * @global WC_Checkout $checkout
 */

defined('ABSPATH') || exit;
?>
<div class="progress-bar">
	<h3 class="result-title-sh"><?= __('Ваш заказ', THEME_TD);?></h3>
	<ul class="progress-bar__steps">
		<li class="progress-bar__steps--step" id="pr-payer-address" data-step="1">
			<h5><?= __('Адрес плательщика', THEME_TD); ?></h5>
			<ul class="payer-data hidden">
				<li>
					<span id="payer-fname"></span>,
					<span id="payer-lname"></span>
				</li>
				<li>
					<span id="payer-street"></span>
					<span id="payer-building"></span>
					<span id="payer-q"></span>
				</li>
				<li>
					<span id="payer-city"></span>
					<span id="payer-zipcode"></span>
				</li>
				<li><span id="payer-country"><?= __('Израиль', THEME_TD); ?></span></li>
				<li><span id="payer-phone"></span></li>
			</ul>
		</li>
		<li class="progress-bar__steps--step" id="pr-shipping-address">
			<h5><?= __('Адрес доставки', THEME_TD); ?></h5>
			<ul class="shipping-data hidden" data-step="1">
				<li>
					<span id="sh-fname"></span>,
					<span id="sh-lname"></span>
				</li>
				<li>
					<span id="sh-street"></span>
					<span id="sh-building"></span>
					<span id="sh-q"></span>
				</li>
				<li>
					<span id="sh-city"></span>
					<span id="sh-zipcode"></span>
				</li>
				<li><span id="sh-country"><?= __('Израиль', THEME_TD); ?></span></li>
				<li><span id="sh-phone"></span></li>
			</ul>
		</li>
		<li class="progress-bar__steps--step" id="pr-shipping-method">
			<h5><?= __('Способ доставки', THEME_TD); ?></h5>
			<div class="shipphing-method" data-step="2"></div>
		</li>
		<li class="progress-bar__steps--step" id="pr-payment-method">
			<h5><?= __('Метод оплаты', THEME_TD); ?></h5>
			<div class="payment-method" data-step="3"></div>
		</li>
	</ul>
</div>
<div class="woocommerce-shipping-fields">
	<?php if (true === WC()->cart->needs_shipping_address()) : ?>

		<h3 id="ship-to-different-address">
			<label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
				<input id="ship-to-different-address-checkbox"
					   class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" <?php checked(apply_filters('woocommerce_ship_to_different_address_checked', 'shipping' === get_option('woocommerce_ship_to_destination') ? 1 : 0), 1); ?>
					   type="checkbox" name="ship_to_different_address" value="1"/>
				<span><?php esc_html_e('Ship to a different address?', 'woocommerce'); ?></span>
			</label>
		</h3>

		<div class="shipping_address">

			<?php do_action('woocommerce_before_checkout_shipping_form', $checkout); ?>

			<div class="woocommerce-shipping-fields__field-wrapper">
				<?php
				$fields = $checkout->get_checkout_fields('shipping');

				foreach ($fields as $key => $field) {
					woocommerce_form_field($key, $field, $checkout->get_value($key));
				}
				?>
			</div>

			<?php do_action('woocommerce_after_checkout_shipping_form', $checkout); ?>

		</div>

	<?php endif; ?>
</div>

