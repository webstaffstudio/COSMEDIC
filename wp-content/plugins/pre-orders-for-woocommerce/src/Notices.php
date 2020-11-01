<?php

namespace Woocommerce_Preorders;

class Notices
{
    public function __construct()
    {
        // if(get_option('woocommerce_preorders_show_individual_cart_notices') == 'yes')
            add_action('woocommerce_after_cart_item_name', [$this,'addPreorderNotice'], 10, 2);

        if(get_option('woocommerce_preorders_show_general_cart_notice') == 'yes'){
            add_action('woocommerce_before_cart', [$this, 'addPreorderNotices']);
        }
            

        if(get_option('wc_preorders_is_pro') == 'no'){
            add_action( 'admin_notices', [$this,'addBuyProNotice'] );
        }
          

    }

    public function addPreorderNotice($cartItem, $cartItemKey)
    {
        $product = $cartItem['data'];
        if(get_post_meta($product->get_id(),'_pre_order_date',true) !== null){
            $availableFrom = new \DateTime(get_post_meta($product->get_id(), '_pre_order_date', true));
            $now = new \DateTime();

            $diff = $now->diff($availableFrom)->format('%a');

            if($availableFrom > $now && $diff > 0) {
                echo '<br/><small style="color:red"> '.sprintf(__("Note: this item will be available for shipping in %s days</small>",'preorders'),$diff).'</small>';
            }
        }
    }

    public function addPreorderNotices()
    {
        global $woocommerce;
        $actualCart = $woocommerce->cart->get_cart();

        $cart = new Cart();

        $cart->checkPreOrderProducts($actualCart);
        if (count($cart->getPreOrderProducts()) > 0) {
            wc_add_notice(__('Warning! you have selected certain products which are not available right now. You will have to choose a shipping date before you can place your order.','preorders'),'notice');
        }
    }

    public function addBuyProNotice(){
        echo '<div class="error notice"><p>'.__( '<strong>Hey there!</strong><br>You are currently using a free version of our awesome plugin WooCommerce Preorders. If you want to activate all the functionalities, please <a target="_blank" href="https://brightplugins.com/woocommerc-preorder-plugin/">click here</a> to buy a license. We also offer awesome support and customizations!.', 'preorders' ).'</p></div>';
    }

}
