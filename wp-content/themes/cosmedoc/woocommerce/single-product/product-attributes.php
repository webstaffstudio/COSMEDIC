<?php
/**
 * Product attributes
 *
 * Used by list_attributes() in the products class.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/product-attributes.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined('ABSPATH') || exit;

global $product;
$countries_terms = get_the_terms(get_the_ID(),'cos_countries');
?>

<div class="product-attr-section">
	<div class="about-product"><?php the_content(); ?></div>
	<?php if ($product_attributes): ?>
		<div class="product-attr">
			<?php if ($countries_terms): ?>
				<?php foreach ($countries_terms as $country) : ?>
					<p><?= $country->name; ?>, </p>
				<?php endforeach; ?>
			<?php endif; ?>
			<?php foreach ($product_attributes as $product_attribute_key => $product_attribute) : ?>
				<?= ($product_attribute['value']) ? wp_kses_post($product_attribute['value']) : ''; ?>
			<?php endforeach; ?>
		</div>
	<?php endif; ?>
	<?= '<span class="sku">' . __('Артикул: ', THEME_TD) . $product->get_sku() . '</span>'; ?>
</div>
<?php get_template_part('/woocommerce/single-product/about-accordeon'); ?>

