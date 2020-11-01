<?php
/**
 * The sidebar containing the main widget area.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 * @package cosmedoc
 */

if (!is_active_sidebar('sidebar-1')) {
	return;
}
?>

<aside id="secondary" class="widget-area" role="complementary" >
	<?php dynamic_sidebar('sidebar-1'); ?>
	<form action="" class="filters-shop">

		<ul class="filters" data-accordion="owy3ap-accordion" data-allow-all-closed="true" role="tablist">
			<li class="clearall">
				<div  class="clear-btn cosmedoc-btn" id="clearFilters"><?=__('Очистить все', THEME_TD);?></div>
			</li>
			<?php
			$product_type = get_terms([
				'taxonomy' => 'cos_product_types',
				'hide_empty' => false,
			]);
			?>
			<li class="filters__item" data-accordion-item="" role="presentation">
				<a href="#" class="filters__item--title" aria-controls="types-accordion" role="tab"
				   id="types-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Продукт', THEME_TD); ?></a>
				<ul class="filters__item--content" data-tab-content="" role="tabpanel"
					aria-labelledby="types-accordion-label" aria-hidden="true" id="types-accordion"
					style="display: none;">
					<?php foreach ($product_type as $type):
						$term_id = $type->term_id; ?>
					<?php if ($term_id !== 75): //exclude gifts ?>
						<li id="type-box">
							<label for="type_<?= $term_id; ?>">
								<input class="filter-item" data-filterbox="product_type" type="checkbox" name="type_<?= $term_id; ?>" value="<?= $term_id ?>"
									   id="type_<?= $term_id ?>">
								<span class="name"><?= $type->name; ?></span>
								<span class="count">(<?= $type->count; ?>)</span>
							</label>
						</li>
					<?php endif; ?>
					<?php endforeach; ?>
				</ul>
			</li>
			<?php
			$brands = get_terms([
				'taxonomy' => 'cos_brands',
				'hide_empty' => false,
			]);
			?>
			<li class="filters__item" data-accordion-item="" role="presentation">
				<a href="#" class="filters__item--title" aria-controls="dsnq49-accordion" role="tab"
				   id="dsnq49-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Бренд', THEME_TD); ?></a>
				<ul class="filters__item--content" data-tab-content="" role="tabpanel"
					aria-labelledby="dsnq49-accordion-label" aria-hidden="true" id="dsnq49-accordion"
					style="display: none;">
					<?php foreach ($brands as $brand):
						$term_id = $brand->term_id; ?>
						<li class="brand-box" data-action="brand" data-term="<?= $term_id; ?>">
							<label for="brand_<?= $term_id; ?>">
								<input class="filter-item" data-filterbox="brand" type="checkbox" name="brand_<?= $term_id; ?>" value="<?= $term_id ?>"
									   id="brand_<?= $term_id ?>">
								<span class="name"><?= $brand->name; ?></span>
								<span class="count">(<?= $brand->count; ?>)</span>
							</label>
						</li>
					<?php endforeach; ?>
				</ul>
			</li>
			<li class="filters__item" data-accordion-item="" role="presentation">
				<a href="#" class="filters__item--title" aria-controls="l4bcoa-accordion" role="tab"
				   id="l4bcoa-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Страна производства', THEME_TD); ?></a>
				<ul class="filters__item--content" data-tab-content="" role="tabpanel"
					aria-labelledby="l4bcoa-accordion-label" aria-hidden="true" id="l4bcoa-accordion"
					style="display: none;">
					<?php
					global $product;
					$country_terms = get_terms([
						'taxonomy' => 'cos_countries',
						'hide_empty' => false,
					]);
					foreach ($country_terms as $country):
						$term_id = $country->term_id; ?>
						<li id="country-box" >
							<label for="country_<?= $term_id; ?>">
								<input class="filter-item" type="checkbox" data-filterbox="country" name="country_<?= $term_id; ?>" value="<?= $term_id ?>"
									   id="country_<?= $term_id ?>">
								<span class="name"><?= $country->name; ?></span>
								<span class="count">(<?= $country->count; ?>)</span>
							</label>
						</li>
					<?php endforeach; ?>
				</ul>
			</li>
			<li class="filters__item" data-accordion-item="" role="presentation">
				<a href="#" class="filters__item--title" aria-controls="l4bcoa-accordion" role="tab"
				   id="l4bcoa-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Статус наличия', THEME_TD); ?></a>
				<ul class="filters__item--content" data-tab-content="" role="tabpanel"
					aria-labelledby="l4bcoa-accordion-label" aria-hidden="true" id="l4bcoa-accordion"
					style="display: none;">
					<li id="stock-box">
						<label for="stock_status">
							<input type="checkbox" name="stock_status" value="instock"
								   id="stock_status">
							<span class="name"><?= __('В наличии', THEME_TD) ?></span>
							<span class="count">()</span>
						</label>
					</li>
				</ul>
			</li>
		</ul>
	</form>
</aside><!-- #secondary -->
