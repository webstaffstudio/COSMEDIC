<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 * @package cosmedoc
 */
$fields = get_fields('option');


?>

</main><!-- #content -->

<footer id="footer-container" class="site-footer other-pages" role="contentinfo">
	<div class="grid-container">
		<div class="site-footer__subscribe">
			<div class="newsletter-title">
				<?php if (isset($fields['subscribe_title']) && $fields['subscribe_title']): ?>
					<h6 class="title"><?php echo $fields['subscribe_title']; ?></h6>
				<?php endif; ?>
				<?php if (isset($fields['subscribe_description']) && $fields['subscribe_description']): ?>
					<p class="description"><?php echo $fields['subscribe_description']; ?></p>
				<?php endif; ?>
			</div>
			<div class="newsletter-form">
				<?php echo do_shortcode('[contact-form-7 id="89" title="Подписка"]'); ?>
			</div>
		</div>
		<div class="site-footer__links grid-x">
			<nav class="nav-footer cell medium-9">
				<?php
				if (has_nav_menu('footer_menu')) :
					wp_nav_menu(
							array(
									'theme_location' => 'footer_menu',
									'menu_id' => 'footer-menu',
									'walker' => new cosmedoc_navwalker(),
							)
					);
				endif;
				?>
			</nav><!-- .nav-primary -->
			<div class="site-footer__links__social cell medium-3">
				<?php
				$socials = $fields['social_links'];
				if ($socials) : ?>
					<ul class="social_links">
						<?php foreach ($socials as $links) : ?>
							<?php if ($links['link']): ?>
								<li><a class="link" target="_blank" href="<?php echo $links['link']; ?>"></a></li>
							<?php endif; ?>
						<?php endforeach; ?>
					</ul>
				<?php endif; ?>
				<?php if (isset($fields['footer_description']) && $fields['footer_description']): ?>
					<div class="footer-description"><?php echo $fields['footer_description']; ?></div>
				<?php endif; ?>
			</div>
		</div>


		<div class="site-footer__info">
			<?php
			$phone = $fields['phone_number'];
			$phone = preg_replace("/[^0-9]/", "", $phone);
			$copyright = $fields['copyright'];
			if (isset($copyright) && $copyright):?>
				<div class="site-footer__info__copyright">
					<p><?php echo $copyright; ?></p>
				</div>
			<?php endif;
			if (isset($phone) && $phone):?>
				<div class="site-footer__info__phone">
					<a class="simple" href="tel:+<?= $phone; ?>"><?php echo $fields['phone_number']; ?></a>
				</div>
			<?php endif; ?>
		</div>

	</div>

</footer><!-- #colophon -->


<?php wp_footer(); ?>
</body>
</html>
