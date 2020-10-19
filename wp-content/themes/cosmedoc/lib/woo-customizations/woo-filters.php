<?php
add_action('wp_ajax_filters_ajax', 'filters_ajax');
add_action('wp_ajax_nopriv_filters_ajax', 'filters_ajax');

function filters_ajax()
{
	if (isset($_POST['form'])):
		$terms_array = $_POST['form'];

		if (isset($_POST['page']) && $_POST['page']):
			$paged = $_POST['page'];
		elseif (isset($_POST['page']) && $_POST['loadmore'] == true):
			$paged = $_POST['page'] + 1;
		endif;

		if (isset($terms_array['brands']) && isset($terms_array['country'])) {
			$relation = 'AND';
		} else {
			$relation = 'OR';
		}
		$ppp = 4;
		$filter_args = array(
			'post_type' => 'product',
			'posts_per_page' => $ppp, // must be 36
			'paged' => $paged,
			'tax_query' => array(
				'relation' => $relation,
				array(
					'taxonomy' => 'cos_brands',
					'field' => 'id',
					'terms' => (isset($terms_array['brands'])) ? $terms_array['brands'] : '',
					'operator' => 'IN',
				),

				array(
					'taxonomy' => 'cos_countries',
					'field' => 'id',
					'terms' => (isset($terms_array['country'])) ? $terms_array['country'] : '',
					'operator' => 'IN',
				),
			),

		);


		$query = new WP_Query($filter_args);
		$in_stock_counter = 0;
		$product_ids = [];
		$total_count = $query->found_posts;
		if ($total_count < $ppp) {
			$ppp = $total_count;
		}
		ob_start();
		if ($query->have_posts()) {
			while ($query->have_posts()) {
				$query->the_post();
				global $product;
				$id = get_the_ID();
				array_push($product_ids, $id);

				if ($product->stock && $product->get_manage_stock()) {
					$in_stock_counter += $product->stock;
				}

				wc_get_template_part('content', 'product');
			}
			wp_reset_query();
		}
		ob_start();
		$big = 999999999; // need an unlikely integer
		$pages = paginate_links(array(
			'base' => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
			'format' => '?paged=%#%',
			'current' => max(1, get_query_var('paged')),
			'total' => $query->max_num_pages,
			'type' => 'array',
		));
		?>
		<?php if (is_array($pages)):
		echo '<ul class="pagination-product__list">';
		$i = 1;
		foreach ($pages as $page) {
			echo "<li data-num=" . $i . ">$page</li>";
			$i++;
		}
		echo '</ul>'; ?>
	<?php endif; ?>
		<?php
		$pagination = ob_get_clean();
		$term_names = array();
		foreach ($product_ids as $id):
			$rel_terms = wp_get_post_terms($id, 'cos_brands');
			foreach ($rel_terms as $t):
				array_push($term_names, $t->name);
			endforeach;
		endforeach;
		$term_names_u = array_unique($term_names);
//		echo '<pre>';
//		error_log(print_r($_POST['cur_term'], true));
//		echo '</pre>';
		$products_html = ob_get_clean();

		wp_send_json(array(
			'products_html' => $products_html,
			'stock_quantity' => $in_stock_counter,
			'pagination' => $pagination,
			'ppp' => $ppp,
			'total_count' => $total_count,
			'current_page' => $paged,
			'max_page' => $query->max_num_pages
		));

	endif;

	wp_die();
}
