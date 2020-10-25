<?php

namespace DgoraWcas\Integrations\Plugins\WooCommerceWholeSalePricesIntegration;

/**
 * Integration with WooCommerce Wholesale Prices
 *
 * Plugin URL: https://wholesalesuiteplugin.com
 * Author: Rymera Web Co
 */
class WooCommerceWholeSalePricesIntegration {
	public function init() {
		if ( ! class_exists( 'WooCommerceWholeSalePricesPremium' ) ) {
			return;
		}
		if ( version_compare( \WooCommerceWholeSalePricesPremium::VERSION, '1.24.4' ) < 0 ) {
			return;
		}

		add_filter( 'dgwt/wcas/tnt/search_results/ids', array( $this, 'filter_search_results' ) );
	}

	/**
	 * Store visible product ids in session and filter search result
	 */
	public function filter_search_results( $post_ids ) {
		global $wc_wholesale_prices_premium;

		if ( ! current_user_can( 'manage_options' ) ) {
			$args = array(
				'post_type'      => 'product',
				'post_status'    => 'publish',
				'posts_per_page' => - 1,
				'fields'         => 'ids',
			);
			$args = $wc_wholesale_prices_premium->wwpp_query->pre_get_posts_arg( $args );
			// IDs of visible products
			$visible_products = isset( $args['post__in'] ) ? $args['post__in'] : array();
			// Filtering found products for their visibility
			$post_ids = array_intersect( $post_ids, $visible_products );

			if ( ! session_id() ) {
				session_start();
			}

			if (
				! isset( $_SESSION['dgwt-wcas-wcwsp-visible-products'] ) ||
				( isset( $_SESSION['dgwt-wcas-wcwsp-visible-products'] ) && $_SESSION['dgwt-wcas-wcwsp-visible-products'] !== $visible_products )
			) {
				$_SESSION['dgwt-wcas-wcwsp-visible-products'] = $visible_products;
			}
		}

		return $post_ids;
	}
}
