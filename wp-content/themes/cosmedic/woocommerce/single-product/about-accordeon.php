<?php
$about = get_field('about_product');
$mode_of_application = get_field('mode_of_application');
$composition = get_field('composition');
?>
<?php if ($about || $mode_of_application || $composition): ?>
	<h2 class="about-title"><?= __('О товаре', THEME_TD); ?></h2>
	<ul class="accordion" data-accordion="owy3ap-accordion" data-allow-all-closed="true" role="tablist">
		<?php if ($about): ?>
			<li class="accordion__item" data-accordion-item="" role="presentation">
				<a href="#" class="accordion__item--title" aria-controls="4v42sh-accordion" role="tab"
				   id="4v42sh-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('О продукте', THEME_TD); ?></a>
				<div class="accordion__item--content" data-tab-content="" role="tabpanel"
					 aria-labelledby="4v42sh-accordion-label" aria-hidden="true" id="4v42sh-accordion"
					 style="display: none;">
					<?= ($about); ?>
				</div>
			</li>
		<?php endif; ?>
		<?php if ($mode_of_application): ?>
			<li class="accordion__item" data-accordion-item="" role="presentation">
				<a href="#" class="accordion__item--title" aria-controls="dsnq49-accordion" role="tab"
				   id="dsnq49-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Способ применения', THEME_TD); ?></a>
				<div class="accordion__item--content" data-tab-content="" role="tabpanel"
					 aria-labelledby="dsnq49-accordion-label" aria-hidden="true" id="dsnq49-accordion"
					 style="display: none;">
					<?= $mode_of_application; ?>
				</div>
			</li>
		<?php endif; ?>
		<?php if ($composition): ?>
			<li class="accordion__item" data-accordion-item="" role="presentation">
				<a href="#" class="accordion__item--title" aria-controls="l4bcoa-accordion" role="tab"
				   id="l4bcoa-accordion-label" aria-expanded="false"
				   aria-selected="false"><?= __('Состав продукта', THEME_TD); ?></a>
				<div class="accordion__item--content" data-tab-content="" role="tabpanel"
					 aria-labelledby="l4bcoa-accordion-label" aria-hidden="true" id="l4bcoa-accordion"
					 style="display: none;">
					<?= $composition; ?>
				</div>
			</li>
		<?php endif; ?>
	</ul>
<?php endif; ?>
