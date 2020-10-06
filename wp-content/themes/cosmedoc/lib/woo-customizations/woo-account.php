<?php
add_shortcode('wc_reg_form_wss', 'wss_separate_registration_form');

function wss_separate_registration_form()
{
	if (is_admin()) return;
	if (is_user_logged_in()) return;
	ob_start();

	do_action('woocommerce_before_customer_login_form');

	?>
	<div class="register-form">

		<h2><?php esc_html_e('Регистрация', 'woocommerce'); ?></h2>

		<form method="post"
			  class="woocommerce-form woocommerce-form-register register" <?php do_action('woocommerce_register_form_tag'); ?> >

			<?php do_action('woocommerce_register_form_start'); ?>

			<?php if ('no' === get_option('woocommerce_registration_generate_username')) : ?>

				<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
					<label for="reg_username"><em
								class="required">*</em> <?php esc_html_e('Username', 'woocommerce'); ?></label>
					<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username"
						   id="reg_username" autocomplete="username"
						   value="<?php echo (!empty($_POST['username'])) ? esc_attr(wp_unslash($_POST['username'])) : ''; ?>"/><?php // @codingStandardsIgnoreLine ?>
				</p>

			<?php endif; ?>

			<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
				<label for="reg_email"><em class="required">*</em> <?php esc_html_e('E-mail', 'woocommerce'); ?></label>
				<input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email"
					   id="reg_email" autocomplete="email"
					   value="<?php echo (!empty($_POST['email'])) ? esc_attr(wp_unslash($_POST['email'])) : ''; ?>"/><?php // @codingStandardsIgnoreLine
				?>
			</p>

			<?php if ('no' === get_option('woocommerce_registration_generate_password')) : ?>

				<p class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first">
					<label for="reg_password"><em class="required">*</em> <?php esc_html_e('Пароль', 'woocommerce'); ?></label>
					<span class="password-input">
					<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password"
						   id="reg_password" autocomplete="new-password"/>
						</span>
				</p>

				<p class="woocommerce-form-row woocommerce-form-row--last form-row form-row-last">
					<label for="reg_password2"><em class="required">*</em> <?php _e('Подтвердите пароль', 'woocommerce'); ?></label>
					<span class="password-input">
		<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password2"
			   id="reg_password2"
			   value="<?php if (!empty($_POST['password2'])) echo esc_attr($_POST['password2']); ?>"/>
			</span>
				</p>
				<div class="clear"></div>
			<?php else : ?>

				<p><?php esc_html_e('A password will be sent to your email address.', 'woocommerce'); ?></p>

			<?php endif; ?>
			<?php $url = get_privacy_policy_url(); ?>
			<div class="control">
				<input type="checkbox" name="terms" <?php checked( apply_filters( 'woocommerce_terms_is_checked_default', isset( $_POST['terms'] ) ), true ); ?> class="checkbox">
				<label for="terms" class="required"><em class="required">*</em> <?php _e('Я согласен с', THEME_TD);?> <a href="<?= $url ?: '#'; ?>" target="_blank"><?php _e('обработкой персональных данных', THEME_TD);?></a></label>
			</div>

			<div class="control">
				<input type="checkbox" name="newsletter" value="" title="" id="newsletter" class="checkbox">
				<label for="newsletter"><?php _e('Подписаться на новости', THEME_TD);?></label>
			</div>

			<p class="woocommerce-form-row form-row register-button">
				<?php wp_nonce_field('woocommerce-register', 'woocommerce-register-nonce'); ?>
				<button type="submit"
						class="cosmedoc-btn"
						name="register"
						value="<?php esc_attr_e('Register', 'woocommerce'); ?>"><?php esc_html_e('Зарегистрироваться', 'woocommerce'); ?></button>
			</p>

			<p class="form-or">
				<?php echo __('ИЛИ', THEME_TD); ?>
			</p>
			<p class="form-register">
				<a class="cosmedoc-btn"
				   href="<?php echo get_permalink(wc_get_page_id('myaccount')); ?>"><?php esc_html_e('Уже зарегистрированы? Войти', THEME_TD); ?></a>
			</p>


			<?php error_log(print_r($_POST, true));;?>

			<?php do_action('woocommerce_register_form_end'); ?>

		</form>

	</div>

	<?php

	return ob_get_clean();
}


// 1. ADD FIELDS

add_action('woocommerce_register_form_start', 'wss_add_name_woo_account_registration');

function wss_add_name_woo_account_registration()
{
	?>

	<p class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first">
		<label for="reg_billing_first_name"><em class="required">*</em> <?php _e('Имя', 'woocommerce'); ?></label>
		<input placeholder="<?php _e('Имя', 'woocommerce'); ?>" type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="billing_first_name"
			   id="reg_billing_first_name"
			   value="<?php if (!empty($_POST['billing_first_name'])) esc_attr_e($_POST['billing_first_name']); ?>"/>
	</p>

	<p class="woocommerce-form-row woocommerce-form-row--last form-row form-row-last">
		<label for="reg_billing_last_name"><em class="required">*</em> <?php _e('Фамилия', 'woocommerce'); ?></label>
		<input placeholder="<?php _e('Фамилия', 'woocommerce'); ?>" type="text" class="input-text" name="billing_last_name" id="reg_billing_last_name"
			   value="<?php if (!empty($_POST['billing_last_name'])) esc_attr_e($_POST['billing_last_name']); ?>"/>
	</p>

	<div class="clear"></div>

	<?php
}

///////////////////////////////
// 2. VALIDATE FIELDS

add_filter('woocommerce_registration_errors', 'wss_validate_name_fields', 10, 4);

function wss_validate_name_fields($errors, $username, $email)
{
	if (isset($_POST['billing_first_name']) && empty($_POST['billing_first_name'])) {
		$errors->add('billing_first_name_error', __('First name is required!', 'woocommerce'));
	}
	if (isset($_POST['billing_last_name']) && empty($_POST['billing_last_name'])) {
		$errors->add('billing_last_name_error', __('Last name is required!.', 'woocommerce'));
	}

	if (strcmp($_POST['password'], $_POST['password2']) !== 0) {
		$errors->add('billing_last_name_error', __('Passwords do not match.', 'woocommerce'));
	}
	return $errors;
}

///////////////////////////////
// 3. SAVE FIELDS

add_action('woocommerce_created_customer', 'wss_save_name_fields');

function wss_save_name_fields($customer_id)
{
	if (isset($_POST['billing_first_name'])) {
		update_user_meta($customer_id, 'billing_first_name', sanitize_text_field($_POST['billing_first_name']));
		update_user_meta($customer_id, 'first_name', sanitize_text_field($_POST['billing_first_name']));
	}
	if (isset($_POST['billing_last_name'])) {
		update_user_meta($customer_id, 'billing_last_name', sanitize_text_field($_POST['billing_last_name']));
		update_user_meta($customer_id, 'last_name', sanitize_text_field($_POST['billing_last_name']));
	}

}


// Add term and conditions check box on registration form
add_action( 'woocommerce_register_form', 'add_terms_and_conditions_to_registration', 20 );
function add_terms_and_conditions_to_registration() {

	if ( wc_get_page_id( 'terms' ) > 0 && is_account_page() ) {
		?>
		<p class="form-row terms wc-terms-and-conditions">
			<label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
				<input type="checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" name="terms" <?php checked( apply_filters( 'woocommerce_terms_is_checked_default', isset( $_POST['terms'] ) ), true ); ?> id="terms" /> <span><?php printf( __( 'I&rsquo;ve read and accept the <a href="%s" target="_blank" class="woocommerce-terms-and-conditions-link">terms &amp; conditions</a>', 'woocommerce' ), esc_url( wc_get_page_permalink( 'terms' ) ) ); ?></span> <span class="required">*</span>
			</label>
			<input type="hidden" name="terms-field" value="1" />
		</p>
		<?php
	}
}

// Validate required term and conditions check box
add_action( 'woocommerce_register_post', 'terms_and_conditions_validation', 20, 3 );
function terms_and_conditions_validation( $username, $email, $validation_errors ) {
	if ( ! isset( $_POST['terms'] ) )
		$validation_errors->add( 'terms_error', __( 'Please read privacy policy.', 'woocommerce' ) );

	return $validation_errors;
}


function custom_registration_redirect()
{
	$redirection_url = get_permalink(wc_get_page_id('myaccount'));
	return $redirection_url;
}

add_action('woocommerce_registration_redirect', 'custom_registration_redirect', 2);



