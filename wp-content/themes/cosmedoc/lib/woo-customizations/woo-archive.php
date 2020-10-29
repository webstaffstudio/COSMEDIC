<?php
add_filter('loop_shop_columns', 'loop_columns', 999);
if (!function_exists('loop_columns')) {
	function loop_columns()
	{
		return 3; // 3 products per row
	}
}

//customize product thumbnails
add_action('init', function () {
	remove_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);
	add_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);
});

if (!function_exists('woocommerce_template_loop_product_thumbnail')) {
	function woocommerce_template_loop_product_thumbnail()
	{
		global $product;
		$term_brand = wp_get_post_terms($product->get_id(), 'cos_brands', $product->get_id());
		echo woocommerce_get_product_thumbnail();
		if ($term_brand && !empty($term_brand)): ?>
			<div class="brands">
				<?php foreach ($term_brand as $brand): ?>
					<a class="brand"
					   href="<?= get_term_link($brand->term_id, 'cos_brands'); ?>"><span><?= $brand->name; ?></span></a>
				<?php endforeach; ?>
			</div>
		<?php endif;
	}
}


if (!function_exists('woocommerce_get_product_thumbnail')) {
	function woocommerce_get_product_thumbnail($size = 'shop_catalog')
	{
		global $post, $woocommerce, $product;
		$new_label = get_field('new');
		$lead_label = get_field('lead_sale');
		$output = '<div class="thumbnail-wrapper">';
		$output .= '<div class="top-labels labels-list">';
		if ($new_label):
			$output .= '<span class="product-label">' . __('New', THEME_TD) . '</span>';
		endif;
		if ($product->is_on_sale()):
			$regular_price = $product->get_regular_price();
			$sale_price = $product->get_sale_price();
			$output .= '<span class="product-label">' . __('Sale', THEME_TD) . '</span>';
			$output .= '<span class="product-label">-' . discount_percent($regular_price, $sale_price) . '%</span>';
		endif;
		$output .= '</div>';

		if (has_post_thumbnail()) {
			$output .= get_the_post_thumbnail($post->ID, $size);
		} else {
			$output .= wc_placeholder_img($size);
		}
		$output .= '<div class="bottom-labels labels-list">';
		if ($lead_label):
			$output .= '<span class="product-label">' . __('Лидер повторных покупок', THEME_TD) . '</span>';
		endif;
		$output .= '</div>';
		$output .= '</div>';
		return $output;
	}
}
add_filter('woocommerce_sale_flash', 'cosmedoc_remove_on_sale_badge');

function cosmedoc_remove_on_sale_badge($badge_html)
{
	return '';
}



