<?php
/**
 * Add customizer menus and options here.
 * Learn more about customizer: {@link https://codex.wordpress.org/Theme_Customization_API}
 *
 * @package cosmedoc
 */

/**
 * Adds the action and filter hooks to integrate with WordPress.
 */

add_action( 'customize_register', 'action_customize_register' );

/**
 * Adds postMessage support for site title and description, plus a custom Theme Options section.
 *
 * @param WP_Customize_Manager $wp_customize Customizer manager instance.
 */
function action_customize_register( WP_Customize_Manager $wp_customize ) {
	// do something
}

function enable_more_buttons($buttons) {
	$buttons[] = 'hr';
	return $buttons;
}
add_filter("mce_buttons", "enable_more_buttons");
