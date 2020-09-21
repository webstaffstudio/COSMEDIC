<?php
/**
 * Plugin Name: Preorders for WooCommerce
 * Plugin URI: https://brightplugins.com/
 * Description: Ultimate Preorders Plugin for WooCommerce.
 * Version: 1.0.8
 * Author: Bright Plugins
 * Author URI: https://brightplugins.com
 * Text Domain: preorders
 * Domain Path: /etc/i18n/languages/.
 */

defined('ABSPATH') || exit;

// Define WCPO_PLUGIN_DIR.
if (!defined('WCPO_PLUGIN_DIR')) {
    define('WCPO_PLUGIN_DIR', __DIR__);
}
if (!defined('WCPO_PLUGIN_BASE')) {
    define('WCPO_PLUGIN_BASE', plugin_basename(__FILE__));
}


use Woocommerce_Preorders\Bootstrap;
use Woocommerce_Preorders\Packages;

// Check if WooCommerce is active
if (in_array('woocommerce/woocommerce.php', apply_filters('active_plugins', get_option('active_plugins')), true)) {
    // Put your plugin code here

    add_action('woocommerce_loaded', function () {
        require_once WCPO_PLUGIN_DIR.'/vendor/autoload.php';
        require_once WCPO_PLUGIN_DIR.'/etc/conf.php';

        $bootstrap = new Bootstrap();
        register_activation_hook(__FILE__, [$bootstrap, 'defaultOptions']);

        $package = new Packages();
    });

} else {
    add_action('admin_notices', function () {
        $class = 'notice notice-error';
        $message = __('Oops! looks like WooCommerce is disabled. Please, enable it in order to use WooCommerce Pre-Orders.', 'preorders');
        printf('<div class="%1$s"><p>%2$s</p></div>', esc_attr($class), esc_html($message));
    });
}
