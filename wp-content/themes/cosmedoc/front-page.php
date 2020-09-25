<?php get_header();
$fields = get_fields(get_the_ID());
$slider = ($fields['slider']) ? $fields['slider'] : null;
?>

	<div class="front-page">
		<section class="hero-section">
			<?php if ($slider && is_array($slider)): ?>
			<div class="hero-slider">
				<?php foreach ($slider as $slide):?>
				<a class="hero-slider__content" href="<?= (isset($slide['link']['url'])&&$slide['link']['url'])?$slide['link']['url']:'#' ?>" <?= ( isset($slide['link']['target'] )&&$slide['link']['target'] ) ? 'target="_blank"' : 'target="_self"'; ?> style="background-image: url(<?php echo wp_get_attachment_image_url($slide['image']['id'], 'full'); ?>);">
					<?php if ($slide['title']): ?>
						<h3 class="hero-slider__title">
							<?= $slide['title']; ?>
						</h3>
					<?php endif; ?>
					<?php if ($slide['description']): ?>
						<p class="hero-slider__description">
							<?= $slide['description']; ?>
						</p>
					<?php endif; ?>
					<?php if ( $slide['link'] ): ?>
						<div class="hero-section__slider__link">
							<div class="cosmedoc-btn"><span><?= $slide['link']['title'] ?></span></div>
						</div>
					<?php endif; ?>

				</a>
				<?php endforeach; ?>
			</div>
			<?php endif; ?>
			<!-- /.hero-section__slider -->
		</section>

		<section class="product-category">
			<?php
			$terms = $fields['products_cat'];
			if( $terms ): ?>
				<ul class="store-grid">
					<li>
						<a href="<?php echo esc_url( home_url('/store') ); ?>">
							<img src="<?php echo wp_get_attachment_image_src($fields['image_for_all_product'], 'full')[0];?>" alt="">
							<p class="item-name"><?php _e('Все товары', THEME_TD);?></p>
						</a>
					</li>
					<?php foreach( $terms as $term ):
						$thumb_id = get_term_meta( $term->term_id, 'thumbnail_id', true );
						$term_img = wp_get_attachment_image_src(  $thumb_id, 'full' );?>
					<li>
						<a class="product-item" href="<?php echo esc_url( get_term_link( $term ) ); ?>">
							<img src="<?php echo $term_img[0];?>" alt="product-image">
						<p class="item-name"><?php echo esc_html( $term->name ); ?></p>
						</a>
					</li>
					<?php endforeach; ?>
				</ul>
			<?php endif; ?>
		</section>
		<!-- /.hero-section -->
	</div>
<?php
get_footer('home-page');
