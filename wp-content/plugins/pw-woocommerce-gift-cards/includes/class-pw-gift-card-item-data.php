<?php

defined( 'ABSPATH' ) or exit;

if ( ! class_exists( 'PW_Gift_Card_Item_Data' ) ) :

class PW_Gift_Card_Item_Data {

    // For compatibility with a bug in "WooCommerce PDF Invoice Builder" by RedNao
    function get_id() {
        return 0;
    }
}

endif;
