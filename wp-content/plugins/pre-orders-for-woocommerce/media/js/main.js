jQuery( ".single_variation_wrap" ).on( "show_variation", function ( event, variation ) {
    if(variation.is_pre_order == true){
	    jQuery('.single_add_to_cart_button').html(DBData.preorders_add_to_cart_text);
    } else {
        jQuery('.single_add_to_cart_button').html(DBData.default_add_to_cart_text);
    }
});