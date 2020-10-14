<?php
if (is_front_page()):
	$product_select = 'slider_products';
else:
	$product_select = 'cross_sale';
endif;

$cross_sale = get_field($product_select);
?>

<?php if ($cross_sale): ?>
	<?= (!is_front_page()) ? '<h2 class="cosmedoc-title">' . __('С этим покупают', THEME_TD) . '</h2>' : ''; ?>
	<section class="cross-sale">
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
	</section>
<?php endif; ?>
