<?php
/**
 * Empty cart page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart-empty.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.0
 */

defined('ABSPATH') || exit;

/*
 * @hooked wc_empty_cart_message - 10
 */
remove_action('woocommerce_cart_is_empty', 'wc_empty_cart_message', 10);
do_action('woocommerce_cart_is_empty'); ?>
<div class="empty-cart">
	<?php if (wc_get_page_id('shop') > 0) : ?>
	<h3 class="empty-cart-title"><?php _e('КОРЗИНА ПУСТА', THEME_TD); ?></h3>
	<p class="empty-cart-notice"><?php _e('Ваша корзина покупок пуста.', THEME_TD); ?></p>
	<div class="empty-cart-content">
		<span><?php _e('Нажмите', THEME_TD); ?></span>
		<a href="<?php echo esc_url(apply_filters('woocommerce_return_to_shop_redirect', wc_get_page_permalink('shop'))); ?>"><?php _e('сюда'); ?>
			</a>,
		<span><?php _e('чтобы продолжить выбор товаров', THEME_TD); ?>
			<?php if (!is_user_logged_in()): ?>
		</span><?php _e(', или', THEME_TD); ?>
		<a href="<?php echo get_permalink(wc_get_page_id('myaccount')); ?>"><?php _e('выполните вход.', THEME_TD); ?></a>
		<?php endif; ?>
	</div>
</div>
<?php endif; ?>


