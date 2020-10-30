<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.0
 */

if (!defined('ABSPATH')) {
	exit;
}

do_action('woocommerce_before_checkout_form', $checkout);

// If checkout registration is disabled and not logged in, the user cannot checkout.
if (!$checkout->is_registration_enabled() && $checkout->is_registration_required() && !is_user_logged_in()) {
	echo esc_html(apply_filters('woocommerce_checkout_must_be_logged_in_message', __('You must be logged in to checkout.', 'woocommerce')));
	return;
}

?>
<div class="column-content">
	<div class="column-1">
		<h1 class="checkout-title"><?php the_title(); ?></h1>
		<div class="account-entry">
			<div
				class="accountr-entry__content"><?= __('<a href="' . get_permalink(wc_get_page_id('myaccount')) . '">Войти</a> в личный кабинет', THEME_TD); ?></div>
		</div>
		<form name="checkout" method="post" class="checkout woocommerce-checkout"
			  action="<?php echo esc_url(wc_get_checkout_url()); ?>" enctype="multipart/form-data">

			<?php if ($checkout->get_checkout_fields()) : ?>

			<?php do_action('woocommerce_checkout_before_customer_details'); ?>

			<div class="col2-set" id="customer_details">
				<div class="col-1 billing-column">
					<div class="step-container">
						<?php do_action('woocommerce_checkout_billing'); ?>
						<div class="cosmedoc-btn next-step" id="billing-step"><?= __('Продолжить', THEME_TD); ?></div>
					</div>
					<div class="shipping-step hidden">
						<div class="step-container">
							<?php if (WC()->cart->needs_shipping() && WC()->cart->show_shipping()) : ?>

								<?php do_action('woocommerce_review_order_before_shipping'); ?>

								<?php wc_cart_totals_shipping_html(); ?>

								<?php do_action('woocommerce_review_order_after_shipping'); ?>

							<?php endif; ?>
							<div class="cosmedoc-btn next-step"
								 id="shipping-step"><?= __('Продолжить', THEME_TD); ?></div>
						</div>
					</div>


				</div>

				<?php do_action('woocommerce_checkout_after_customer_details'); ?>

				<?php endif; ?>

				<?php do_action('woocommerce_checkout_before_order_review_heading'); ?>


				<?php do_action('woocommerce_checkout_before_order_review'); ?>


				<div id="order_review" class="woocommerce-checkout-review-order">
					<?php do_action('woocommerce_checkout_order_review'); ?>
				</div>

				<?php do_action('woocommerce_checkout_after_order_review'); ?>

		</form>

		<?php do_action('woocommerce_after_checkout_form', $checkout); ?>
	</div>
</div>
<div class="column-2">
	<?php do_action('woocommerce_checkout_shipping'); ?>
</div>
</div>
