<?php
add_action('wp_ajax_filters_ajax', 'filters_ajax');
add_action('wp_ajax_nopriv_filters_ajax', 'filters_ajax');

function filters_ajax()
{
	if (isset($_POST['form'])):
		$terms_array = $_POST['form'];
//		parse_str( $_POST['form'], $data );

//		echo '<pre>';
//		error_log(print_r($terms_array, true));
//		echo '</pre>';
		if (isset($terms_array['brands']) && isset($terms_array['country'])) {
			$relation = 'AND';
		} else {
			$relation = 'OR';
		}
		$filter_args = array(
			'post_type' => 'product',
			'posts_per_page' => 8, // must be 36
			'tax_query' => array(
				'relation' => $relation,
				array(
					'taxonomy' => 'cos_brands',
					'field' => 'id',
					'terms' => (isset($terms_array['brands'])) ? $terms_array['brands'] : '',
					'operator' => 'IN',
				),

				array(
					'taxonomy' => 'pa_strana-proizvoditel',
					'field' => 'id',
					'terms' => (isset($terms_array['country'])) ? $terms_array['country'] : '',
					'operator' => 'IN',
				),
			),
			'meta_query' => array( array(
				'key'     => '_stock_status',
				'value'   => 'outofstock',
				'compare' => '!=',
			) ),
		);

		$query = new WP_Query($filter_args);
		$in_stock_counter = 0;
		ob_start();
		if ($query->have_posts()) {
			while ($query->have_posts()) {
				global $product;
				if ($product->stock && $product->get_manage_stock()) {
					$in_stock_counter += $product->stock;
				}
				$query->the_post();
				wc_get_template_part('content', 'product');
			}
		}
		$products_html = ob_get_clean();
		wp_send_json(array(
			'products_html' => $products_html,
			'stock_quantity' => $in_stock_counter
		));

	endif;
	wp_die();
}
