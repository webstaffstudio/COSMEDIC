<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 * @package cosmedoc
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<section id="main" class="site-main" role="main">

			<section class="error-404 not-found">


				<div class="page-content">
					<div class="noroute">

						<h1><?php _e('Извините, страница не найдена', THEME_TD);?></h1>
						<p><?php _e('Приносим свои извинения. Попробуйте обновить страницу или проверьте корректность набранной ссылки.', THEME_TD);?></p>
						<p style="margin-bottom: 50px"><?php _e('Пожалуйста, воспользуйтесь навигацией или формой поиска, чтобы найти интересующую Вас информацию.', THEME_TD);?></p>
						<a href="<?php echo esc_url( home_url() ); ?>" class="home-link"><?php esc_html_e( 'Вернутся на главную', THEME_TD ); ?></a>
					</div>


				</div><!-- .page-content -->
			</section><!-- .error-404 -->

		</section><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
