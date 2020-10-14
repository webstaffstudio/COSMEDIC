<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 * @package cosmedoc
 */
$fields = get_fields( 'option' );

?>

</main><!-- #content -->

<footer class="site-footer home-page-footer" role="contentinfo">
	<div class="grid-container">
	<div class="site-footer__info">
		<?php
		$phone     = $fields['phone_number'];
		$phone     = preg_replace( "/[^0-9]/", "", $phone );
		$copyright = $fields['copyright'];
		if ( isset( $copyright ) && $copyright ):?>
		<div class="site-footer__info__copyright">
			<p><?php echo $copyright; ?></p>
		</div>
		<?php endif;
		if ( isset( $phone ) && $phone ):?>
			<div class="site-footer__info__phone">
				<a class="simple font-U" href="tel:+<?= $phone; ?>"><?php echo $fields['phone_number']; ?></a>
			</div>
		<?php endif;?>
	</div>
	</div>
</footer><!-- #colophon -->
<?php wp_footer(); ?>
</body>
</html>
