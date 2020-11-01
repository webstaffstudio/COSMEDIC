<?php
function cosmedoc_taxonomy_gifts()  {

	$labels = array(
		'name'                       => 'Gifts',
		'singular_name'              => 'Gift',
		'menu_name'                  => 'Gifts',
		'all_items'                  => 'All Gifts',
		'parent_item'                => 'Parent Gift',
		'parent_item_colon'          => 'Parent Gift:',
		'new_item_name'              => 'New Gift Name',
		'add_new_item'               => 'Add New Gift',
		'edit_item'                  => 'Edit Gift',
		'update_item'                => 'Update Gift',
		'separate_items_with_commas' => 'Separate product type with commas',
		'search_items'               => 'Search Gifts',
		'add_or_remove_items'        => 'Add or remove Gifts',
		'choose_from_most_used'      => 'Choose from the most used Gifts',
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
	register_taxonomy( 'cos_gifts', 'product', $args );

}

add_action( 'init', 'cosmedoc_taxonomy_gifts', 0 );

