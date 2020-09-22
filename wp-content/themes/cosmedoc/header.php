<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 * @package cosmedoc
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php wp_head(); ?>
</head>
<div id="preloader">
	<div id="loader"></div>
</div>
<body <?php body_class(); ?>>
	<header class="header">
		<div class="header__row">

			<a class="header__logo" href="<?php echo esc_url( home_url() ); ?>">
				<?php if ( get_header_image() ) : ?>
					<img class="brand__img" src="<?php echo( get_header_image() ); ?>" alt="<?php bloginfo( 'name' ); ?>"/>
					<?php
				else :?>
				<span class="header__brand brand">
					<?php bloginfo( 'name' );?>
				</span>
				<?php endif;?>
			</a><!-- /.brand -->

			<nav class="nav-primary header__nav">

				<div class="nav-primary__toggle title-bar" data-responsive-toggle="primary-menu" data-hide-for="large">
					<button class="menu-icon" type="button" data-toggle="primary-menu"></button>
					<div class="title-bar-title">Menu</div>
				</div><!-- /.nav-primary__toggle -->

				<?php
				if ( has_nav_menu( 'primary' ) ) :
					wp_nav_menu(
						[
							'theme_location'  => 'primary',
							'menu_id'         => 'primary-menu',
							'menu_class'      => 'nav-primary__menu menu',
							'items_wrap'      => '<ul id="%1$s" class="%2$s" data-responsive-menu="drilldown large-dropdown" data-parent-link="true">%3$s</ul>',
							'walker'          => new cosmedoc_Navwalker(),
						]
					);
				endif;
				?>
			</nav><!-- /.nav-primary -->

			<div class="header__links">
				<a href="#" class="header__links-link link link-search">
					<span class="icon"></span>
				</a>
				<a href="#" class="header__links-link link link-account">
					<span class="icon"></span>
				</a>
				<a href="#"  class="header__links-link link link-cart  no-count">
					<span class="icon"><span class="count">0</span></span>

				</a>
			</div>
		</div><!-- /.header__row -->
	</header><!-- /.header -->
	<main id="content" class="site-content">
