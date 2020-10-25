<?php
function cosmedoc_taxonomy_product_types()  {

	$labels = array(
		'name'                       => 'Product Types',
		'singular_name'              => 'Product Type',
		'menu_name'                  => 'Product Types',
		'all_items'                  => 'All Product Types',
		'parent_item'                => 'Parent Product Type',
		'parent_item_colon'          => 'Parent Product Type:',
		'new_item_name'              => 'New Product Type Name',
		'add_new_item'               => 'Add New Product Type',
		'edit_item'                  => 'Edit Product Type',
		'update_item'                => 'Update Product Type',
		'separate_items_with_commas' => 'Separate product type with commas',
		'search_items'               => 'Search Product Types',
		'add_or_remove_items'        => 'Add or remove Product Types',
		'choose_from_most_used'      => 'Choose from the most used Product Types',
	);
	$args = array(
		'labels'                     => $labels,
		'hierarchical'               => true,
		'public'                     => true,
		'show_ui'                    => true,
		'show_admin_column'          => true,
		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy( 'cos_product_types', 'product', $args );

}

add_action( 'init', 'cosmedoc_taxonomy_product_types', 0 );



function product_types_terms_radio( $args ) {
	if ( ! empty( $args['taxonomy'] ) && $args['taxonomy'] === 'cos_product_types' ) {
		if ( empty( $args['walker'] ) || is_a( $args['walker'], 'Walker' ) ) {
			if ( ! class_exists( 'WPSE_139269_Walker_Category_Radio_Checklist' ) ) {
				/**
				 * Custom walker for switching checkbox inputs to radio.
				 *
				 * @see Walker_Category_Checklist
				 */
				class WPSE_139269_Walker_Category_Radio_Checklist extends Walker_Category_Checklist {
					function walk( $elements, $max_depth, ...$args ) {
						$output = parent::walk( $elements, $max_depth, ...$args );
						$output = str_replace(
							array( 'type="checkbox"', "type='checkbox'" ),
							array( 'type="radio"', "type='radio'" ),
							$output
						);

						return $output;
					}
				}
			}

			$args['walker'] = new WPSE_139269_Walker_Category_Radio_Checklist;
		}
	}

	return $args;
}

add_filter( 'wp_terms_checklist_args', 'product_types_terms_radio' );
