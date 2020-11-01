<?php
add_action('wp_ajax_filters_ajax', 'filters_ajax');
add_action('wp_ajax_nopriv_filters_ajax', 'filters_ajax');

function filters_ajax()
{
	$ppp = 4;

	if ($_POST['order'] !== 'false'):
		$orderby = $_POST['order'];
		switch ($orderby):
			case 'popular' :
				$orderby = array(
					'meta_key' => 'total_sales',
					'orderby' => 'meta_value_num',
					'order' => 'DESC',
				);
				break;
			case 'news' :
				$orderby = array(
					'meta_key' => 'new',
					'orderby' => 'meta_value_num',
					'order' => 'DESC',
				);
				break;
			case 'price_desc' :
				$orderby = array(
					'orderby' => 'meta_value_num',
					'meta_key' => '_price',
					'order' => 'DESC',
				);
				break;
			case  'price_asc' :
				$orderby = array(
					'orderby' => 'meta_value_num',
					'meta_key' => '_price',
					'order' => 'ASC',
				);
				break;
			default :
				$orderby = array(
					'meta_key' => 'total_sales',
					'orderby' => 'meta_value_num',
					'order' => 'DESC',
				);
				break;
		endswitch;

	endif;

	if ($_POST['loadmore'] === 'true'):
		$paged = $_POST['page'] + 1;

	else:
		$paged = $_POST['page'];
	endif;

	if (isset($_POST['form'])):

		$terms_array = $_POST['form'];

		$i = 0;
		$relation = 'OR';
		//check if select 2 or more taxonomies and set the relation
		foreach ($terms_array as $term_exist):
			if (!empty($term_exist)) {
				$i++;
			}
			if ($i >= 2) {
				$relation = 'AND';
			}
		endforeach;
		$product_type_tax = array(
			'taxonomy' => 'cos_product_types',
			'field' => 'id',
			'terms' => (isset($terms_array['product_type'])) ? $terms_array['product_type'] : '',
			'operator' => 'IN',
		);
		$brands_tax = array(
			'taxonomy' => 'cos_brands',
			'field' => 'id',
			'terms' => (isset($terms_array['brands'])) ? $terms_array['brands'] : '',
			'operator' => 'IN',
		);
		$country_tax = array(
			'taxonomy' => 'cos_countries',
			'field' => 'id',
			'terms' => (isset($terms_array['country'])) ? $terms_array['country'] : '',
			'operator' => 'IN',
		);
		$category_tax = array(
			'taxonomy' => 'product_cat',
			'field' => 'id',
			'terms' => 2,
			'operator' => 'IN',
		);

		$filter_args = array(
			'post_type' => 'product',
			'posts_per_page' => $ppp, // must be 36
			'paged' => $paged,
			'tax_query' => array(
				'relation' => $relation,
				(!empty($terms_array['product_type'])) ? $product_type_tax : '',
				(!empty($terms_array['brands'])) ? $brands_tax : '',
				(!empty($terms_array['country'])) ? $country_tax : '',
			),

		);
	else:
		//default query
		$filter_args = array(
			'post_type' => 'product',
			'posts_per_page' => $ppp, // must be 36
			'paged' => $paged,
		);
	endif;
	if ($orderby !== '' && $orderby !== 'false') {
		$filter_args = array_merge($filter_args, $orderby);
	}

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
			error_log(print_r(get_the_ID(), true));
			$id = get_the_ID();
			array_push($product_ids, $id);

//			if ($product->stock && $product->get_manage_stock()) {
//				$in_stock_counter += $product->stock;
//			}

			wc_get_template_part('content', 'product');

		}
		wp_reset_query();
	}
	ob_start();

	$big = 999999999; // need an unlikely integer
	$pages = paginate_links(array(
		'base' => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
		'format' => '?paged=%#%',
		'current' => $paged,
		'total' => $query->max_num_pages,
		'type' => 'array',
		'end_size' => $big, //will show 2 numbers on either the start and the end list edges.
		'prev_text' => '<span class="prev-page"><</span>',
		'next_text' => '<span class="next-page">></span>',
		'mid_size' => 3 //so that you won't have 1,2...,3,...,7,8
	));
	?>
	<?php if (is_array($pages)):
	$i = 1;
	foreach ($pages as $page) {
		echo "<li data-num=" . $i . ">$page</li>";
		$i++;
	} ?>
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

	$products_html = ob_get_clean();


//	//get sidebar results
//	if (!empty($_POST['form'])) {
//		$results = [];
//		$brands_products_ids = [];
//		$products_brand = get_posts($filter_args);
//		foreach ($products_brand as $post) {
//			$brands_products_ids[] = $post->ID;
//		}
//		$counted_taxes = ['cos_brands', 'cos_countries', 'cos_product_types'];
//		foreach ($counted_taxes as $tax) {
//			$termCounts = array_map(function ($i) use ($tax) {
//				return wp_get_post_terms($i, $tax);
//			}, $brands_products_ids);
//
//			$flat = array_merge(...$termCounts);
//			$t_ids = array_map(function ($term) {
//				return $term->term_id;
//			}, $flat);
//			$counted = array_reduce($t_ids, function (&$acc, $i) {
//
//
//				if (!isset($acc[$i])) {
//					$acc[$i] = 1;
//				} else {
//					$acc[$i] = ++$acc[$i];
//				}
//				return $acc;
//			}, []);
//			array_push($results, $counted);
//		}
//
//	}
//	echo '<pre>';
//	error_log(print_r($results, true));
//	echo '</pre>';

	wp_send_json(array(
		'products_html' => $products_html,
//		'stock_quantity' => $in_stock_counter,
		'pagination' => $pagination,
		'ppp' => $ppp,
		'total_count' => $total_count,
		'current_page' => $paged,
		'max_page' => $query->max_num_pages,
	));


	wp_die();
}
