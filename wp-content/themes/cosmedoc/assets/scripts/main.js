// import external dependencies

import "jquery";
import "slick-carousel";
import 'jquery-match-height';
// Import everything from autoload
import "./autoload/**/*";

jQuery(window).load(function () {
	$("#preloader").fadeOut(1000);
	$(".woocommerce-product-gallery__wrapper").slick({
		dots: true,
		arrows: false,
	});

	$('.product-list-slider').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		arrows: true,
	});

	$(".hero-slider").slick({
		dots: true,
		arrows: false,
		fade: true,
		cssEase: "linear",
	});
	$('.cross-sale__list--product .product__title').matchHeight();
});
jQuery(document).ready(() => {
});
