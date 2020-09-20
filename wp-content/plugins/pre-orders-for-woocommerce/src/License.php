<?php
namespace Woocommerce_Preorders;

use Zttp\Zttp;

class License
{
    public function isValid()
    {
        $response = Zttp::asJson()->post(WCPO_LICENSE_SERVER.'api/check', [
            'email' => get_option('wc_preorders_license_email'),
            'key' => get_option('wc_preorders_license_key'),
            'plugin' => 'preorders-for-woocommerce'
        ]);
        
        return $response->isSuccess();
    }
}
