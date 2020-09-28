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
$cross_sale = get_field('cross_sale');
global $product;
?>

	<div class="product-attr-section">
		<div class="about-product"><?php the_content(); ?></div>
		<?php if ($product_attributes): ?>
			<div class="product-attr">
				<?php foreach ($product_attributes as $product_attribute_key => $product_attribute) : ?>
					<?= ($product_attribute['value']) ? wp_kses_post($product_attribute['value']) : ''; ?>
				<?php endforeach; ?>
			</div>
		<?php endif; ?>
		<?= '<span class="sku">' . __('Артикул: ', THEME_TD) . $product->get_sku() . '</span>'; ?>
		<a href="#about_product" class="cosmedoc-btn" id="about_anchor"><?= __('Подробнее о товаре', THEME_TD); ?></a>
	</div>

<?php if ($cross_sale): ?>
	<h2 class="cosmedoc-title"><?= __('С этим покупают', THEME_TD); ?></h2>
	<div class="cross-sale">
		<div class="cross-sale__list product-list-slider">
			<?php foreach ($cross_sale as $cross_product):
				$id = $cross_product->ID;
				$title = $cross_product->post_title;
				$brand_terms = get_the_terms($id, 'cos_brands');
				$product = wc_get_product($id);
				$product_thumb = wp_get_attachment_image_src(get_post_thumbnail_id($id), 'single-post-thumbnail');
				$link = get_the_permalink($id);
				?>
				<div class="cross-sale__list--product product">
					<a href="<?= $link; ?>" class="link product__thumbnail">
						<img src="<?= $product_thumb[0]; ?>" alt=""/>
					</a>
					<div class="product-descr">
						<?= (isset($brand_terms[0]->name)) ? '<div class="product__brand">' . $brand_terms[0]->name . '</div>' : ''; ?>
						<a class="product__title" href="<?= $link; ?>"><h3><?= $title; ?></h3></a>
						<div class="product__price">
							<?php if (!empty($product->get_sale_price())): ?>
								<span class="regular has-sale"><?= $product->get_regular_price(); ?><span
										class="currency"><?= show_currency_symbol(); ?></span></span>
								<span class="sale"><?= $product->get_sale_price(); ?><span
										class="currency"><?= show_currency_symbol(); ?></span></span>
							<?php else: ?>
								<span class="regular"><?= $product->get_regular_price() ?><span
										class="currency"><?= show_currency_symbol(); ?></span></span>
							<?php endif; ?>
						</div>
						<a class="cosmedoc-btn"
						   href="<?= $product->add_to_cart_url(); ?>"><?= __('Добавить в корзину', THEME_TD); ?></a>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
<?php endif; ?>
<?php get_template_part('/woocommerce/single-product/about-accordeon');
