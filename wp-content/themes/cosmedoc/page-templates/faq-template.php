<?php
/**
 * Template Name: FAQ Page Template
 *
 * @package cosmedoc
 */
$fields_faq = get_fields(get_the_ID());

get_header(); ?>

	<div id="primary" class="content-area">
		<section id="main" class="site-main" role="main">
			<h1><?php the_title();?></h1>


		</section><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
