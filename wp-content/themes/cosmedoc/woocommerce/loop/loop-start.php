<?php
/**
 * Product Loop Start
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/loop-start.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @package     WooCommerce\Templates
 * @version     3.3.0
 */

if (!defined('ABSPATH')) {
	exit;
}
global $wp_query;
$product_founded = get_query_var('product_count');
$total_count = $GLOBALS['wp_query']->found_posts;
if ($total_count < $product_founded) {
	$product_founded = $total_count;
}
?>
<div class="grid-x">
	<div class="sidebar-container cell large-3">
		<div class="sidebar-shop">
			<?php get_sidebar(); ?>
		</div>
	</div>
	<div class="products-container cell large-9">
		<div class="catalog-navigation">
			<div class="catalog-navigation__order">
				<span class="order-title"><?= __('Сортировать по:', THEME_TD); ?></span>
				<div class="catalog-navigation__order--select">
					<select name="order_product" id="order_product">
						<option value="popular"><?= __('Популярности', THEME_TD); ?></option>
						<option value="news"><?= __('Новинкам', THEME_TD); ?></option>
						<option value="price_asc"><?= __('Возрастанию цены', THEME_TD); ?></option>
						<option value="price_desc"><?= __('Убыванию цены', THEME_TD); ?></option>
					</select>
				</div>
			</div>
			<div class="catalog-navigation__count">
				<span class="catalog-navigation__count--showing"><?= $product_founded; ?></span> <?= __('из', THEME_TD); ?>
				<span class="catalog-navigation__count--total"><?= $total_count; ?></span>
			</div>
		</div>
		<ul class="products columns-<?php echo esc_attr(wc_get_loop_prop('columns')); ?>">
