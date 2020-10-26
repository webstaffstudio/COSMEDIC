<?php
/**
 * Theme functions and definitions.
 *
 * @package cosmedoc
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 */

/**
 * Text domain definition
 */
defined('THEME_TD') ? THEME_TD : define('THEME_TD', 'cosmedoc');

// Load modules
$theme_includes = array(
	'/lib/helpers.php',
	'/lib/cleanup.php',                        // Clean up default theme includes
	'/lib/enqueue-scripts.php',                // Enqueue styles and scripts
	'/lib/protocol-relative-theme-assets.php', // Protocol (http/https) relative assets path
	'/lib/framework.php',                      // Css framework related stuff (content width, nav walker class, comments, pagination, etc.)
	'/lib/theme-support.php',                  // Theme support options
	'/lib/template-tags.php',                  // Custom template tags
	'/lib/menu-areas.php',                     // Menu areas
	'/lib/widget-areas.php',                   // Widget areas
	'/lib/vc_shortcodes.php',                  // Visual Composer shortcod
	'/lib/customizer.php',                     // Theme customizeres
	'/lib/jetpack.php',                        // Jetpack compatibility file
	'/lib/acf_field_groups_type.php',          // ACF Field Groups Organizer
	'/lib/wp_dashboard_customizer.php',        // WP Dashboard customizer
	'/lib/woo-customizations/woo-brands-tax.php',        // brands
	'/lib/woo-customizations/woo-countries-tax.php',        // countries
	'/lib/woo-customizations/woo-type-product-tax.php',        // product types
	'/lib/woo-customizations/woo-product.php',        // product customization
	'/lib/woo-customizations/woo-account.php',        // Account customization
	'/lib/woo-customizations/woo-mini-cart.php',        // Ajax mini cart
	'/lib/woo-customizations/woo-archive.php',        // archive page
	'/lib/woo-customizations/woo-filters.php',        // ajax filters handler
	'/lib/woo-customizations/woo-cart.php',        // Cart gift customizer
);

foreach ($theme_includes as $file) {
	if (!locate_template($file)) {
		/* translators: %s error*/
		trigger_error(esc_html(sprintf(esc_html(__('Error locating %s for inclusion', 'cosmedoc')), $file)), E_USER_ERROR); // phpcs:ignore
		continue;
	}

	require_once locate_template($file);
}
unset($file, $filepath);


/**
 * wp_has_sidebar Add body class for active sidebar
 *
 * @param array $classes - classes
 * @return array
 */
function wp_has_sidebar($classes)
{
	if (is_active_sidebar('sidebar')) {
		// add 'class-name' to the $classes array
		$classes[] = 'has_sidebar';
	}
	return $classes;
}

add_filter('body_class', 'wp_has_sidebar');

// Remove the version number of WP
// Warning - this info is also available in the readme.html file in your root directory - delete this file!
remove_action('wp_head', 'wp_generator');


/**
 * Obscure login screen error messages
 *
 * @return string
 */
function wp_login_obscure()
{
	return '<strong>Error</strong>: wrong username or password';
}

add_filter('login_errors', 'wp_login_obscure');


// Disable the theme / plugin text editor in Admin
define('DISALLOW_FILE_EDIT', true);

if (function_exists('acf_add_options_page')) {

	acf_add_options_page();

}
if (function_exists('acf_set_options_page_title')) {
	acf_set_options_page_title(__('Theme Options'));
}


//custom image sizes
add_image_size('cat_tile', 323, 323, false);

//function mailtrap($phpmailer)
//{
//	$phpmailer->isSMTP();
//	$phpmailer->Host = 'smtp.mailtrap.io';
//	$phpmailer->SMTPAuth = true;
//	$phpmailer->Port = 2525;
//	$phpmailer->Username = 'fd0415609b8d04';
//	$phpmailer->Password = 'd2cf4436c308f1';
//}
//
//add_action('phpmailer_init', 'mailtrap');
function kriesi_pagination($pages = '', $range = 2)
{
	$showitems = ($range * 2)+1;

	global $paged;
	if(empty($paged)) $paged = 1;

	if($pages == '')
	{
		global $wp_query;
		$pages = $wp_query->max_num_pages;
		if(!$pages)
		{
			$pages = 1;
		}
	}

	if(1 != $pages)
	{
		echo "<ul class='pagination-product__list'>";
		if($paged > 1 && $showitems < $pages) echo "<a href='".get_pagenum_link($paged - 1)."'>&lsaquo;</a>";

		for ($i=1; $i <= $pages; $i++)
		{
			if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
			{
				echo ($paged == $i)? "<li data-num=".$i."><span class='current'>".$i."</span></li>":"<li data-num='".$i."'><a href='".get_pagenum_link($i)."' class='page-numbers inactive' >".$i."</a></li>";
			}
		}

		if ($paged < $pages && $showitems < $pages) echo "<li data-num='".$i."'><a class='page-numbers' href='".get_pagenum_link($paged + 1)."'>&rsaquo;</a></li>";
		echo "</ul>\n";
	}
}
