<?php
define('DB_NAME', getenv('DB_NAME'));
define('DB_USER', getenv('DB_USER'));
define('DB_PASSWORD', getenv('DB_PASSWORD'));
define('DB_HOST', getenv('DB_HOST'));
define('DB_CHARSET', 'utf8mb4');
define('DB_COLLATE', '');
define('WP_HOME', getenv('WP_HOME'));
define('WP_SITEURL', getenv('WP_SITEURL'));
define('FS_METHOD', 'direct');
define('AUTH_KEY',         'a^`ss?%;rHpT_hz/ydt+P=+1_8EeQ^*qDZ$iIF~)sjK,f8#j[#n&El%;X|xg$%w!');
define('SECURE_AUTH_KEY',  'u}u{jx(@jn}ju$Y--8D;/)q+&XBZsJ0sC2NC@i>H|CvjV+=KM-J+m1S&=b7^D-)r');
define('LOGGED_IN_KEY',    'Vi(s-iv&[L}b[+pKldB5yVmFu,aO@!R`qE>%39`S9>]~jv#T}*6t6UW>r>FR1OH ');
define('NONCE_KEY',        '{R]i+TbECN.A?0d@8U+m-[jt){41/*4cE#5?L]/tbVx5S6:&pi$62<ETzZ;t&=Bw');
define('AUTH_SALT',        'uc-d}`K@s|y-/+WPd<BG|o=- *b8?A)SFm!R$m~L+t(NbrNV)3fH+,.,eQAJGqC&');
define('SECURE_AUTH_SALT', 'kZi,5RC&t<$(+ PqmnvL6Hx%StvPRuGjJf8wJE>]3@o}vEj6x{)6u|&xn8g-yfaK');
define('LOGGED_IN_SALT',   '&*IzDywt&nmj:YuEeURMoo+_zts))xB2~SEzyr{AHouJT2b SgllrkY{EeR>EbS@');
define('NONCE_SALT',       '3e*TTuwo!Nc;1mF2ULM)V Stf/DUY0Q#x,0&M+i[6w!bIF?CQn!V&SSwGH=rfPJ?');


$table_prefix  = 'fxgpk_';
define('WP_DEBUG', true);
if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
$_SERVER['HTTPS'] = 'on';
}
if ( !defined('ABSPATH') )
define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');