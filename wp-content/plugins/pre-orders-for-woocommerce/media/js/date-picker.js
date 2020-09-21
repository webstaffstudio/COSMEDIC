jQuery(document).ready(function($) {

    /*
     * Initialize datepicker
     */
    $('.datepicker').datepicker({
        'dateFormat': 'yy-mm-dd 00:00:00'
    });

    // Datepicker for variation forms loaded using AJAX
     $('#variable_product_options').delegate('.wc-metabox','click',
         function() {
            $('.datepicker').datepicker({
                'dateFormat': 'yy-mm-dd 00:00:00'
            });
        }
     );

     // Datepicker for checkout form
     $('#preorder_date').datepicker({
        'dateFormat': 'yy-mm-dd 00:00:00',
        'minDate': $('#preorder_date').data('pre_order_date')
    });     
});