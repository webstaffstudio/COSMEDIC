<?php
/**
 * Single Product title
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/title.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see        https://docs.woocommerce.com/document/template-structure/
 * @package    WooCommerce/Templates
 * @version    1.6.4
 */

if (!defined('ABSPATH')) {
	exit; // Exit if accessed directly.
}
$id = get_the_ID();
$term_brand = wp_get_post_terms($id, 'cos_brands');
?>
<?php if ($term_brand && !empty($term_brand)): ?>
	<div class="brands">
		<?php foreach ($term_brand as $brand): ?>
			<a class="brand" href="<?= get_term_link($brand->term_id, 'cos_brands');?>"><span># <?= $brand->name;?></span></a>
		<?php endforeach; ?>
	</div>
<?php endif; ?>
<?php
the_title('<h1 class="product_title entry-title">', '</h1>');
