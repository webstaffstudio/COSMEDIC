<?php
/**
 * Cart Page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.8.0
 */

defined('ABSPATH') || exit;

do_action('woocommerce_before_cart'); ?>

<h1 class="cart-title"><?php _e('Корзина', THEME_TD); ?></h1>

<form class="woocommerce-cart-form grid-container grid-x" action="<?php echo esc_url(wc_get_cart_url()); ?>"
	  method="post">
	<div class="cell large-9">
		<div class="shop_table shop_table_responsive cart woocommerce-cart-form__contents">
			<?php foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
				$_product = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
				$product_id = apply_filters('woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key);

				if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_cart_item_visible', true, $cart_item, $cart_item_key)) {
					$product_permalink = apply_filters('woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink($cart_item) : '', $cart_item, $cart_item_key);
					?>
					<div class="woocommerce-cart-form__cart-item <?php echo esc_attr(apply_filters('woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key)); ?>">
						<div class="product-thumbnail">
							<?php
							$thumbnail = apply_filters('woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key);

							if (!$product_permalink) {
								echo $thumbnail; // PHPCS: XSS ok.
							} else {
								printf('<a href="%s">%s</a>', esc_url($product_permalink), $thumbnail); // PHPCS: XSS ok.
							}
							?>
						</div>
						<div class="product-info">
							<div class="product-name" data-title="<?php esc_attr_e('Product', 'woocommerce'); ?>">
								<?php
								if (!$product_permalink) {
									echo wp_kses_post(apply_filters('woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key) . '&nbsp;');
								} else {
									echo wp_kses_post(apply_filters('woocommerce_cart_item_name', sprintf('<a href="%s">%s</a>', esc_url($product_permalink), $_product->get_name()), $cart_item, $cart_item_key));
								}

								do_action('woocommerce_after_cart_item_name', $cart_item, $cart_item_key);

								// Meta data.
								echo wc_get_formatted_cart_item_data($cart_item); // PHPCS: XSS ok.

								// Backorder notification.
								if ($_product->backorders_require_notification() && $_product->is_on_backorder($cart_item['quantity'])) {
									echo wp_kses_post(apply_filters('woocommerce_cart_item_backorder_notification', '<p class="backorder_notification">' . esc_html__('Available on backorder', 'woocommerce') . '</p>', $product_id));
								}
								?>
							</div>
							<div class="product-attr">
								<?php echo get_the_term_list($cart_item['product_id'], 'cos_countries', '<span>', '</span>', '<span> ,</span>'); ?>
								<span>
								<?php $weight = $_product->get_attribute('weight');
								echo ($weight) ?: __('1шт.', THEME_TD);
								?>
								</span>
							</div>

							<div class="product-remove">
								<?php
								echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
										'woocommerce_cart_item_remove_link',
										sprintf(
												'<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s">' . __('Удалить', THEME_TD) . '</a>',
												esc_url(wc_get_cart_remove_url($cart_item_key)),
												esc_html__('Remove this item', 'woocommerce'),
												esc_attr($product_id),
												esc_attr($_product->get_sku())
										),
										$cart_item_key
								);
								?>
							</div>
						</div>
						<div class="product-price" data-title="<?php esc_attr_e('Price', 'woocommerce'); ?>">
							<?php
							if (woo_gift_product($product_id)):?>
								<span class="gift-label"><?php _e('Подарок', THEME_TD); ?></span>
							<?php else:
								echo apply_filters('woocommerce_cart_item_price', WC()->cart->get_product_price($_product), $cart_item, $cart_item_key); // PHPCS: XSS ok.
							endif;
							?>
						</div>

						<div class="product-quantity" data-title="<?php esc_attr_e('Quantity', 'woocommerce'); ?>">
							<label class="qty-label"
								   for="cart[%s][qty]"><?php _e('Количество', THEME_TD); ?></label>
							<?php if (woo_gift_product($product_id)):
								$product_quantity = sprintf(' <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key);
								echo apply_filters('woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item); // PHPCS: XSS ok.
								echo '<br><span class="gift-count">' . __('1шт.', THEME_TD) . '</span>';
							else:?>
								<?php
								if ($_product->is_sold_individually()) {
									$product_quantity = sprintf('1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key);

								} else {
									$product_quantity = woocommerce_quantity_input(
											array(
													'input_name' => "cart[{$cart_item_key}][qty]",
													'input_value' => $cart_item['quantity'],
													'max_value' => $_product->get_max_purchase_quantity(),
													'min_value' => '0',
													'product_name' => $_product->get_name(),
											),
											$_product,
											false
									);
								}
								echo apply_filters('woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item); // PHPCS: XSS ok.
							endif; ?>

						</div>

						<div class="product-subtotal" data-title="<?php esc_attr_e('Subtotal', 'woocommerce'); ?>">
							<?php
							if (woo_gift_product($product_id)):?>
								<span class="gift-label"><?php _e('Бесплатно', THEME_TD); ?></span>
							<?php else:
								echo apply_filters('woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal($_product, $cart_item['quantity']), $cart_item, $cart_item_key); // PHPCS: XSS ok.
							endif;
							?>
						</div>
					</div>
					<?php
				}
			}
			?>

		</div>
		<?php
		$fields_cart = get_fields('options');
		$total = WC()->cart->get_cart_contents_total();
		$needed_sum = isset($fields_cart['gift_products']['gift_sum']) ? $fields_cart['gift_products']['gift_sum'] : '';

		if (isset($fields_cart['gift_products']) && $fields_cart['show_gifts'] && $needed_sum):?>
			<div class="gift-products">
				<h5 class="gift-heading"><?php _e('Ваш подарок', THEME_TD); ?></h5>
				<div class="gift-products-wrapper">
					<ul class="gift-products-slider">
						<?php foreach ($fields_cart['gift_products']['product'] as $product): ?>
							<li class="gift-products__item">
								<?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($product->ID), 'woocommerce_thumbnail'); ?>
								<div class="img-box">
									<img alt="product_img" class="product-image" src="<?php echo $image[0]; ?>"/>
									<span class="mask"></span>
								</div>
								<?php if ($needed_sum > intval($total)): ?>
									<div class="cosmedoc-btn-gift">
										<?php _e('Выбрать', THEME_TD); ?>
									</div>
								<?php else: ?>
									<div data-id="<?php echo $product->ID; ?>"
										 class="cosmedoc-btn-gift <?php echo (woo_in_cart($product->ID)) ? 'checked' : ''; ?>">
										<?php _e('Выбрать', THEME_TD); ?>
									</div>
								<?php endif; ?>
								<div class="info">
									<?php $first_term_name = get_the_terms($product->ID, 'cos_brands');
									if (isset($first_term_name[0])):?>
										<p class="brand"><?php
											echo $first_term_name[0]->name; ?></p>
									<?php endif; ?>
									<h2 class="item-name"><?php echo $product->post_title; ?></h2>
								</div>
							</li>
						<?php endforeach; ?>
					</ul>
				</div>
			</div>
			<?php wp_reset_postdata(); ?>
		<?php endif; ?>
		<?php if (isset($fields_cart['gift_products']) && $fields_cart['show_gifts'] && $needed_sum && $needed_sum > intval($total)): ?>
			<div class="gift-note">
				<p><?php _e('Вам доступен подарок, при покупке еще на', THEME_TD); ?><?php echo $needed_sum - intval($total); ?><?php echo get_woocommerce_currency_symbol(); ?></p>
				<a href="<?php echo get_permalink(wc_get_page_id('shop')); ?>"
				   class="cosmedoc-white"><?php _e('В каталог', THEME_TD); ?></a>
			</div>
		<?php endif; ?>
		<?php echo woocommerce_cross_sell_display(6, 1); ?>
		<div style="display: none;">
			<button type="submit" class="button" name="update_cart"
					value="<?php esc_attr_e('Update cart', 'woocommerce'); ?>"><?php esc_html_e('Update cart', 'woocommerce'); ?></button>
			<?php do_action('woocommerce_cart_actions'); ?>

			<?php wp_nonce_field('woocommerce-cart', 'woocommerce-cart-nonce'); ?>
		</div>
	</div>

	<div class="cart-collaterals cell large-3">
		<div class="cart-sidebar">
			<ul class="accordion" data-accordion data-allow-all-closed="true">

				<?php if (wc_coupons_enabled()) { ?>
					<li class="coupon accordion__item is-active" data-accordion-item>
						<a class="accordion__item--title" href="#"><?php esc_html_e('Промо-код', THEME_TD); ?></a>
						<div style="display: none;" class="accordion__item--content" data-tab-content>
							<label for="coupon_code"><?php _e('У вас есть промокод?', THEME_TD); ?></label>
							<div class="wrapper">
								<input type="text"
									   name="coupon_code"
									   class="input-text"
									   id="coupon_code"
									   value=""
									   placeholder="<?php esc_attr_e('Промо-код', THEME_TD); ?>"/>
								<button type="submit" class="cosmedoc-button" name="apply_coupon"
										value="<?php esc_attr_e('Apply coupon', 'woocommerce'); ?>"><?php esc_attr_e('OK', THEME_TD); ?></button>
								<?php do_action('woocommerce_cart_coupon'); ?>
							</div>
						</div>
					</li>
				<?php } ?>
				<?php do_action('woocommerce_after_cart_contents'); ?>
			</ul>
			<?php do_action('woocommerce_before_cart_collaterals'); ?>
			<?php
			/**
			 * Cart collaterals hook.
			 *
			 * @hooked woocommerce_cross_sell_display
			 * @hooked woocommerce_cart_totals - 10
			 */
			remove_action('woocommerce_cart_collaterals', 'woocommerce_cross_sell_display');
			do_action('woocommerce_cart_collaterals');
			?>
			<?php do_action('woocommerce_after_cart'); ?>
		</div>
	</div>
</form>

<div style="display: none" data-aos="un-sticky" data-aos-anchor=".wc-proceed-to-checkout"
	 class="mobile-proceed-to-checkout">
	<?php do_action('woocommerce_proceed_to_checkout'); ?>
</div>




