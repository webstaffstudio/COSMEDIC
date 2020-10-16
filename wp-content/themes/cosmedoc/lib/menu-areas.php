<?php
/**
 * Register navigation menus
 *
 * @link https://codex.wordpress.org/Function_Reference/register_nav_menus
 * @package cosmedoc
 */

add_action( 'after_setup_theme', 'register_theme_menus' );

/**
 * register_theme_menus
 *
 * @return void
 */
function register_theme_menus() {
	register_nav_menus(
		array(
			'primary'     => __( 'Primary Menu', 'cosmedoc' ),
			'main'     => __( 'Main Menu', 'cosmedoc' ),
			'footer_menu' => __( 'Footer Menu', 'cosmedoc' ),
			'mobile_menu' => __( 'Mobile Menu', 'cosmedoc' ),
		)
	);
}


add_filter( 'wp_nav_menu_args', 'wss_nav_menu_args', 1, 1 );
function wss_nav_menu_args( $args )
{
	//lookup theme_location ie: header-menu
	if ( isset( $args['theme_location'] )) {
		$args['depth'] = 2; //levels of the hierarchy are to be included
	}

	return $args;
}

