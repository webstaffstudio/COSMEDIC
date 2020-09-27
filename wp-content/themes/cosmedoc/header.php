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
<header class="header show-for-large">
	<div class="header__row">

		<a class="header__logo" href="<?php echo esc_url(home_url()); ?>">
			<?php if (get_header_image()) : ?>
				<img class="brand__img" src="<?php echo(get_header_image()); ?>" alt="<?php bloginfo('name'); ?>"/>
			<?php
			else :?>
				<span class="header__brand brand">
					<?php bloginfo('name'); ?>
				</span>
			<?php endif; ?>
		</a><!-- /.brand -->

		<nav class="nav-primary header__nav">
			<?php
			if (has_nav_menu('primary')) :
				wp_nav_menu(
						array(
								'theme_location' => 'primary',
								'menu_id' => 'primary-menu',
								'menu_class' => 'nav-primary__menu menu',
								'items_wrap' => '<ul id="%1$s" class="%2$s" data-responsive-menu="drilldown large-dropdown" data-parent-link="true">%3$s</ul>',
								'walker' => new cosmedoc_Navwalker(),
						)
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
			<a href="#" class="header__links-link link link-cart  no-count">
				<span class="icon"><span class="count">0</span></span>
			</a>
		</div>
	</div><!-- /.header__row -->
</header><!-- /.header -->


<header class="header header__mobile hide-for-large">
	<span id="hamburger" class="toggle-button is-closed">
     <div class="menu-bar menu-bar-top"></div>
     <div class="menu-bar menu-bar-middle"></div>
     <div class="menu-bar menu-bar-bottom"></div>
	</span>
	<a href="#" class="header__links-link link link-search">
		<span class="icon"></span>
	</a>
	<a class="header__logo" href="<?php echo esc_url(home_url()); ?>">
		<?php if (get_header_image()) : ?>
			<img class="brand__img" src="<?php echo(get_header_image()); ?>" alt="<?php bloginfo('name'); ?>"/>
		<?php
		else :?>
			<span class="header__brand brand">
					<?php bloginfo('name'); ?>
				</span>
		<?php endif; ?>
	</a><!-- /.brand -->
	<div class="header__links">
		<a href="<?php echo wc_get_cart_url(); ?>" class="header__links-link link link-cart  no-count">
			<span class="icon"><span class="count">0</span></span>
		</a>
	</div>
	<div class="menu-wrap is-closed">
		<div class="menu-wrap__header">
			<a href="#" class="header__links-link link link-account">
				<span class="icon"></span>
			</a>
			<a href="#" class="header__links-link link link-wishlist">
				<span class="icon"></span>
			</a>
		</div>

		<?php $locations = get_nav_menu_locations();
		if (isset($locations['mobile_menu'])):
			$items = wp_get_nav_menu_object($locations['mobile_menu']);
			$image = get_field('menu_image', $items);
			$title = get_field('menu_title', $items);
			?>
			<div class="menu-wrap__intro"
				 style="background-image: url(<?php echo wp_get_attachment_image_src($image['ID'], 'full')[0]; ?>)">
				<?php if (isset($title) && $title): ?>
					<h3><?php echo $title; ?></h3>
				<?php endif; ?>
			</div>
		<?php endif; ?>

		<div class="menu__content">
			<?php
			if (has_nav_menu('mobile_menu')) :
				wp_nav_menu(array(
						'theme_location' => 'mobile_menu',
						'container'=> false,
						'menu_class' => 'mobile_menu menu',
						'items_wrap' => '<ul id="%1$s" class="%2$s" data-back-button="<li class='.'js-drilldown-back'.'><a tabindex=0>'.__('Назад в меню', THEME_TD).'</a>" data-responsive-menu="vertical menu drilldown large-dropdown" data-drilldown data-parent-link="true">%3$s</ul>',
						'walker' => new cosmedoc_Navwalker()
				));
			endif;
			?>
			<a href="#" class="cosmedoc-btn" title="Login in account"><?php echo __('Вход в аккаунт', THEME_TD);?></a>
		</div>
	</div>
</header>


<main id="content" class="site-content">
