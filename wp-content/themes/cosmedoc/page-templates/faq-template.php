<?php
/**
 * Template Name: FAQ Page Template
 *
 * @package cosmedoc
 */
$fields_faq = get_fields(get_the_ID());

get_header(); ?>

	<div id="primary" class="content-area">
		<section id="main" class="faq-template" role="main">
			<div class="grid-container">
				<h1 class="faq-template-title"><?php the_title(); ?></h1>
				<?php if (isset($fields_faq['faq']) && $fields_faq['faq']): ?>
					<ul class="accordion" data-accordion data-allow-all-closed="true">
						<?php foreach ($fields_faq['faq'] as $item): ?>
							<li class="accordion__item" data-accordion-item>
								<a href="#" class="accordion__item--title"><?= $item['title']; ?></a>
								<div style="display: none;" class="accordion__item--content" data-tab-content>
									<?= $item['description']; ?>
								</div>
							</li>
						<?php endforeach; ?>
					</ul>
				<?php endif; ?>
				<?php if (isset($fields_faq['contacts']) && $fields_faq['contacts']): ?>
					<div class="faq-template-contacts">
						<?= $fields_faq['contacts']; ?>
					</div>
				<?php endif; ?>
			</div>
		</section><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
