<?php
function cosmedoc_taxonomy_countries()  {

	$labels = array(
		'name'                       => 'Countries',
		'singular_name'              => 'Country',
		'menu_name'                  => 'Countries',
		'all_items'                  => 'All Countries',
		'parent_item'                => 'Parent Country',
		'parent_item_colon'          => 'Parent Country:',
		'new_item_name'              => 'New Country Name',
		'add_new_item'               => 'Add New Country',
		'edit_item'                  => 'Edit Country',
		'update_item'                => 'Update Country',
		'separate_items_with_commas' => 'Separate Country with commas',
		'search_items'               => 'Search Countries',
		'add_or_remove_items'        => 'Add or remove Countries',
		'choose_from_most_used'      => 'Choose from the most used Countries',
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
	register_taxonomy( 'cos_countries', 'product', $args );

}

add_action( 'init', 'cosmedoc_taxonomy_countries', 0 );


function countries_terms_radio( $args ) {
	if ( ! empty( $args['taxonomy'] ) && $args['taxonomy'] === 'cos_countries' ) {
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

add_filter( 'wp_terms_checklist_args', 'countries_terms_radio' );
