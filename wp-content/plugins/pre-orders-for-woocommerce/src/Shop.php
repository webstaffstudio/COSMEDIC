<?php

namespace Woocommerce_Preorders;

class Shop
{
    public function __construct()
    {
        add_filter('woocommerce_product_add_to_cart_text', [$this,'changeButtonText'], 10, 2);
        add_filter('woocommerce_product_single_add_to_cart_text', [$this,'changeButtonText'], 10, 2);
        add_filter('woocommerce_available_variation', [$this,'changeButtonTextForVariableProducts'], 10, 3);
    }

    public function changeButtonTextForVariableProducts($data, $product, $variation)
    {
        if (get_post_meta($variation->get_id(), '_is_pre_order', true) == 'yes') {
            $data['is_pre_order'] = true;
        }
        return $data;
    }
        


    public function changeButtonText($text, $instance)
    {
        global $product;
        if($product !== null){
            if ('yes' == get_post_meta($product->get_id(), '_is_pre_order', true) && strtotime(get_post_meta($product->get_id(), '_pre_order_date', true)) > time()) {
                return get_option('wc_preorders_button_text');
            }
        }
        

        return $text;
    }
}
