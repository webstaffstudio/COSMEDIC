<?php
function cosmedoc_taxonomy_brands()  {

	$labels = array(
		'name'                       => 'Brands',
		'singular_name'              => 'Brand',
		'menu_name'                  => 'Brands',
		'all_items'                  => 'All Brands',
		'parent_item'                => 'Parent Brand',
		'parent_item_colon'          => 'Parent Brand:',
		'new_item_name'              => 'New Brand Name',
		'add_new_item'               => 'Add New Brand',
		'edit_item'                  => 'Edit Brand',
		'update_item'                => 'Update Brand',
		'separate_items_with_commas' => 'Separate Brand with commas',
		'search_items'               => 'Search Brands',
		'add_or_remove_items'        => 'Add or remove Brands',
		'choose_from_most_used'      => 'Choose from the most used Brands',
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
	register_taxonomy( 'cos_brands', 'product', $args );

}

add_action( 'init', 'cosmedoc_taxonomy_brands', 0 );


function brands_terms_radio( $args ) {
	if ( ! empty( $args['taxonomy'] ) && $args['taxonomy'] === 'cos_brands' /* <== Change to your required taxonomy */ ) {
		if ( empty( $args['walker'] ) || is_a( $args['walker'], 'Walker' ) ) { // Don't override 3rd party walkers.
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

add_filter( 'wp_terms_checklist_args', 'brands_terms_radio' );
