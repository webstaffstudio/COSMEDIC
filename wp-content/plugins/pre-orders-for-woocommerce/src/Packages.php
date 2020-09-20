<?php

namespace Woocommerce_Preorders;


class Packages
{
    public function __construct()
    {
        add_filter('woocommerce_cart_shipping_packages', array( &$this, 'generateVendors'));
    }

    public function generateVendors($packages)
    {
        /*
         * Needs refactor
         */
        if (get_option('wc_preorders_mode')  == 'individual') {
            $packages = [];
            $i=1;
            foreach (WC()->cart->get_cart() as $item) {
                $productId = isset($item['variation_id']) && 0 !== $item['variation_id'] ? $item['variation_id'] : $item['product_id'];
                $p = new Product($productId);
                
                if( $p->isPreOrder()){
                    $vendors[$i][] = $item;
                    $i++;
                } else {
                    $vendors[0][] = $item;
                }
            }
            foreach ($vendors as $key => $vendor_items) {
                $packages[] = array(
                    'contents' => $vendor_items,
                    'contents_cost' => array_sum(wp_list_pluck($vendor_items, 'line_total')),
                    'applied_coupons' => WC()->cart->applied_coupons,
                    'destination' => array(
                        'country' => WC()->customer->get_shipping_country(),
                        'state' => WC()->customer->get_shipping_state(),
                        'postcode' => WC()->customer->get_shipping_postcode(),
                        'city' => WC()->customer->get_shipping_city(),
                        'address' => WC()->customer->get_shipping_address(),
                        'address_2' => WC()->customer->get_shipping_address_2()
                    )
                );
            }
        } else if(get_option('wc_preorders_mode') == 'partial') {
            $packages = [];;
            foreach (WC()->cart->get_cart() as $item) {
                $productId = isset($item['variation_id']) && 0 !== $item['variation_id'] ? $item['variation_id'] : $item['product_id'];
                $p = new Product($productId);
                
                if( $p->isPreOrder()){
                    $vendors[0][] = $item;
                } else {
                    $vendors[1][] = $item;
                }
            }
            foreach ($vendors as $key => $vendor_items) {
                $packages[] = array(
                    'contents' => $vendor_items,
                    'contents_cost' => array_sum(wp_list_pluck($vendor_items, 'line_total')),
                    'applied_coupons' => WC()->cart->applied_coupons,
                    'destination' => array(
                        'country' => WC()->customer->get_shipping_country(),
                        'state' => WC()->customer->get_shipping_state(),
                        'postcode' => WC()->customer->get_shipping_postcode(),
                        'city' => WC()->customer->get_shipping_city(),
                        'address' => WC()->customer->get_shipping_address(),
                        'address_2' => WC()->customer->get_shipping_address_2()
                    )
                );
            }
        }


                
        return $packages;
    }
}
