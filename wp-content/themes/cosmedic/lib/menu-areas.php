<?php
/**
 * Register navigation menus
 *
 * @link https://codex.wordpress.org/Function_Reference/register_nav_menus
 * @package Cosmedic
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
			'primary'     => __( 'Primary Menu', 'cosmedic' ),
			'footer_menu' => __( 'Footer Menu', 'cosmedic' ),
		)
	);
}
