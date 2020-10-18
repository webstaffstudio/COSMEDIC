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
