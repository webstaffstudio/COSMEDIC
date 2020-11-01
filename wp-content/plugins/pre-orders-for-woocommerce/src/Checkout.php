<?php

namespace Woocommerce_Preorders;

class Checkout
{
    private $preordersMode;
    private $cart;
    private $emailIds;

    public function __construct()
    {
        $this->preordersMode = get_option('wc_preorders_mode');

        $this->cart = new Cart();
        if ('either' === $this->preordersMode) {
            add_filter('woocommerce_add_to_cart_validation', [$this->cart, 'allowOneTypeOnly'], 99, 2);
        }

        add_filter('woocommerce_billing_fields', [$this, 'addShippingDateField']);

        if (!\in_array(get_option('wc_preorders_mode'), ['whole', 'either'], true)) {
            add_action('woocommerce_thankyou', [$this, 'purgePreOrderedItems'], 9999, 1);
        } else {
            add_action('woocommerce_thankyou', [$this, 'checkGeneratedOrderStatus'], 9999, 1);
        }

        add_action('woocommerce_checkout_update_order_meta', [$this, 'managePreOrders'], 10, 2);
        
        // Unhook and remove WooCommerce default emails.
        add_action( 'woocommerce_email', [$this, 'unhook_woocommerce_original_emails'] );

        // New order notification only for "Pending" Order status
        add_action( 'woocommerce_order_status_pre-ordered', [$this, 'newPreOderNotification'] );
        
        /**
         * Sends a normal order email when the user gets to the thankyou page.
         * The normal send order email is attached to the woocommerce_thankyou action
         * because the normal order gets updated even after managePreorders is called. 
         * This way we're able to show the correct email containing the correct items
         * for the order. 
         * 
         * TODO: This poses an unintended behavior though because if the user 
         * TODO: refreshes the page, the woocommerce_thankyou action will fire again sending another
         * TODO: email, giving the user the wrong impression that another order has been placed.
         */
        add_action( 'woocommerce_thankyou', [$this, 'sendOrderEmail'], 9999, 1 );


        // We don't need this feature for now
        //add_filter('woocommerce_package_rates', [$this, 'manageShippingCosts'], 10, 2);
    }

    /**
     * Send Pre-Order emails fired by an action - preorder_email at the end of the switch statement in the managePreOrders() method. 
    */
    public function newPreOderNotification( $order_id ) {

        // Send "New Email" notification (to customer)      
        WC()->mailer()->get_emails()['WC_Email_Customer_Invoice']->trigger( $order_id );
        WC()->mailer()->get_emails()['WC_Email_New_Order']->trigger( $order_id );

    }

    /**
     * Sends normal order and invoice email to the customer when the user arrives to the thank you page. 
     */
    public function sendOrderEmail($orderId) {

        $orderObj = wc_get_order($orderId);
        $email_new_order = WC()->mailer()->get_emails()['WC_Email_New_Order'];
        $email_customer_invoice = WC()->mailer()->get_emails()['WC_Email_Customer_Invoice'];

        $hasPreorderedProductsOnly = count($orderObj->get_items()) === count($this->getPreorderedProducts($orderObj));

        // We're only firing these emails if there's only a non-preordered product present.
        if (!$hasPreorderedProductsOnly) {
            $email_new_order->trigger( $orderId );
            $email_customer_invoice->trigger( $orderId );
        }
    }

    /**
     * Removes woocommerce original emails so they don't clash with our preorder emails logic. 
     */
    public function unhook_woocommerce_original_emails( $emailClass ) {

		/**
		 * Hooks for sending emails during store events - After more testing this can be removed if it doesn't conflict with the logic. 
		 **/
		remove_action( 'woocommerce_low_stock_notification', array( $emailClass, 'low_stock' ) );
		remove_action( 'woocommerce_no_stock_notification', array( $emailClass, 'no_stock' ) );
		remove_action( 'woocommerce_product_on_backorder_notification', array( $emailClass, 'backorder' ) );
		
		//New order emails
        remove_action( 'woocommerce_order_status_pending_to_processing_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
		remove_action( 'woocommerce_order_status_pending_to_completed_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
		remove_action( 'woocommerce_order_status_pending_to_on-hold_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
		remove_action( 'woocommerce_order_status_failed_to_processing_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
		remove_action( 'woocommerce_order_status_failed_to_completed_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
        remove_action( 'woocommerce_order_status_failed_to_on-hold_notification', array( $emailClass->emails['WC_Email_New_Order'], 'trigger' ) );
	
		// Processing order emails
		remove_action( 'woocommerce_order_status_pending_to_processing_notification', array( $emailClass->emails['WC_Email_Customer_Processing_Order'], 'trigger' ) );
		remove_action( 'woocommerce_order_status_pending_to_on-hold_notification', array( $emailClass->emails['WC_Email_Customer_Processing_Order'], 'trigger' ) );
		
		// Completed order emails - After more testing this can be removed if it doesn't conflict with the logic. 
		remove_action( 'woocommerce_order_status_completed_notification', array( $emailClass->emails['WC_Email_Customer_Completed_Order'], 'trigger' ) );
			
		// Note emails - After more testing this can be removed if it doesn't conflict with the logic. 
		remove_action( 'woocommerce_new_customer_note_notification', array( $emailClass->emails['WC_Email_Customer_Note'], 'trigger' ) );
    }

    public function addShippingDateField($fields)
    {
        if (!is_checkout() && !is_cart()) {
            return $fields;
        }
        if ('no' === get_option('wc_preorders_always_choose_date')) {
            $class = ['disabled-input', 'form-row-wide'];
        } else {
            $class = ['form-row-wide'];
        }
        global $woocommerce;
        $cart = $woocommerce->cart->get_cart();
        $this->cart->checkPreOrderProducts($cart);
        if (\count($this->cart->getPreOrderProducts()) > 0) {
            $fields['preorder_date'] = [
                'label' => __('Pre order Date', 'preorders'),
                'type' => 'text',
                'class' => $class,
                'description' => __('Please enter the date when you want to receive your order', 'preorders'),
                // 'input_class'   => 'datepicker',
                'priority' => 35,
                'required' => true,
                'default' => $this->cart->getOldestDate(),
                'custom_attributes' => ['data-pre_order_date' => $this->cart->getOldestDate()],
            ];
        }

        return $fields;
    }

    public function manageShippingCosts($rates, $package)
    {
        $factor = 1;
        if ('individual' === $this->preordersMode) {
            /*
            * If we are on "individual" mode, then we will have to multiply it by the number of
            * orders that we are going to generate.
            */
            global $woocommerce;
            $cart = $woocommerce->cart->get_cart();
            $this->cart->checkPreOrderProducts($cart);
            if (\count($this->cart->getPreOrderProducts()) > 0) {
                $factor = 1 + \count($this->cart->getPreOrderProducts());
            }
        } elseif ('partial' === $this->preordersMode) {
            /*
            * If we are in partial mode and the "multiply shipping" option is enabled,
            * then we will have to multiply our shipping costs by 2
            */
            $factor = 2;
        }
        foreach ($rates as $id => $rate) {
            $rates[$id]->cost *= $factor;
        }

        return $rates;
    }

    public function managePreOrders( $orderId, $data )
    {
        $order = wc_get_order($orderId);

        // Calculate shipping split factor
        $factor = $this->getSplitShippingFactor($order);

        
        /*
        * Case #1: treat the whole order as a pre-order
        * Check if the order is of type partial or individual, and if not set the whole order as pre-ordered
        */
        if (isset($data['preorder_date'])) {
            update_post_meta( $orderId, '_preorder_date', esc_attr( $data['preorder_date'] ) );
            $order->set_status('wc-pre-ordered');
        }

        /**
         * Option number 4 is treated as a whole but only with preordered products, we're checking here
         * if we're only having preordered products whether we're on the 1st or 4th option as 
         * both are treated as whole orders, the difference being having mixed products with the first option.
         */
        if ( $this->orderHasOnlyPreorderedProducts( $order, $this->cart ) ) {
            $this->emailIds['preorderIds'][] = $orderId;
        }

             

        // main action firing emails. 
        do_action('preorder_email', $this->emailIds);
    }

    public function orderHasOnlyPreorderedProducts($orderObj, $cartObj) {
        return count( $orderObj->get_items()) === count( $cartObj->getPreOrderProducts() );
    }

    public function checkGeneratedOrderStatus($order_id)
    {
        $order = wc_get_order($order_id);
        $items = $order->get_data();
        $this->cart->checkPreOrderProducts($items);
        if (\count($this->cart->getPreOrderProducts()) > 0) {
            $order->update_status('pre-ordered');
        }
    }

    /*
     * Check generated order and look for pre-order items.
     * If we are using case #2, then we must first check if all items are pre-ordered, and if so just change the order status.
     * Otherwise, if we are using case #3, we will have to remove the parent order.
     */
    public function purgePreOrderedItems($orderId)
    {
        $order = wc_get_order($orderId);

        if(count($order->get_items()) === count($this->getPreorderedProducts($order)))
            return;
            
        $order = wc_get_order($orderId);
        $items = $order->get_items();
        $diff = 0;
        foreach ($items as $key => $product) {
            if (('yes' === get_post_meta($product->get_product_id(), '_is_pre_order', true) && strtotime(get_post_meta($product->get_product_id(), '_pre_order_date', true)) > time()) || 'yes' === get_post_meta($product->get_variation_id(), '_is_pre_order', true) && strtotime(get_post_meta($product->get_variation_id(), '_pre_order_date', true)) > time()) {
                $deleteKeys[] = wc_delete_order_item($key);
                $diff += $product->get_total();
            }
        }
        $newTotal = $order->calculate_totals() - $diff;

        $order->set_total($newTotal);
        $order->save();
    }


    public function checkWholeOrders($order_id)
    {
        if (get_post_meta($order_id, '_pre_order_date', true)) {
            $order = wc_get_order($order_id);
            $order->set_status('wc-pre-ordered');
            $order->save();
        }
    }

    private function getPreorderedProducts($order)
    {
        $preorderedProducts = [];
        foreach ($order->get_items() as $item) {
            $productId = 0 !== $item->get_variation_id() ? $item->get_variation_id() : $item->get_product_id();
            $isPreOrder = get_post_meta($productId, '_pre_order_date', true);
            if ($isPreOrder && strtotime($isPreOrder) > time()) {
                $preorderedProducts[] = $item;
            }
        }

        return $preorderedProducts;
    }

    // Get the shipping total and split it into the amount of orders generated
    private function getSplitShippingFactor($order)
    {
        if ('yes' !== get_option('wc_preorders_multiply_shipping')) {
            return 1;
        }

        // If we are working on partial mode, then we will split it in 2 halves
        if ('partial' === $this->preordersMode) {
            return 2;
            // Otherwise we will have to split it by the amount of orders that we have
        }
        if ('individual' === $this->preordersMode) {
            return 1 + \count($this->getPreorderedProducts($order));
        }

        return 1;
    }

    private function getFilteredFields($prefix, $fields)
    {
        return $this->stripFieldsPrefix($prefix, $this->filterFields($prefix, $fields));
    }

    private function stripFieldsPrefix($prefix, $fields)
    {
        return array_combine(
            array_map(
                function ($k) use ($prefix) {
                    return str_replace($prefix, '', $k);
                },
                array_keys($fields)
            ),
            array_values($fields)
        );
    }

    private function filterFields($prefix, $fields)
    {
        return array_filter($fields, function ($key) use ($prefix) {
            return 0 === strpos($key, $prefix);
        }, ARRAY_FILTER_USE_KEY);
    }
}
