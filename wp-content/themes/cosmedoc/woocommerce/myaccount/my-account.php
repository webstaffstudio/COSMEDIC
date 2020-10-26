<?php
/**
 * My Account page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/my-account.php.
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

defined( 'ABSPATH' ) || exit;

/**
 * My Account navigation.
 *
 * @since 2.6.0
 */
?>
<div class="grid-container">
<div class="page-title account-title">
	<h1><?php _e('Ваш кабинет', THEME_TD);?></h1>
	<p class="top-right"><a href="<?php echo wp_logout_url( get_permalink( wc_get_page_id( 'myaccount' ) ) );?>" class="button-link">
			[<span><?php _e('Выход из Аккаунта', THEME_TD);?></span>]</a></p>
	<div class="clear"></div>
</div>

<?php do_action( 'woocommerce_account_navigation' ); ?>

<div class="woocommerce-MyAccount-content">
	<?php
		/**
		 * My Account content.
		 *
		 * @since 2.6.0
		 */
		do_action( 'woocommerce_account_content' );
	?>
</div>
</div>
