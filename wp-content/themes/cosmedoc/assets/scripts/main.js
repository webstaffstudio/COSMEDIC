// import external dependencies

import "jquery";
import "slick-carousel";
// Import everything from autoload
import "./autoload/**/*";

jQuery(window).load(function() {
  $("#preloader").fadeOut(1000);
  $(".woocommerce-product-gallery__wrapper").slick({
    dots: true,
    arrows: false,
  });

  $(".hero-slider").slick({
    dots: true,
    arrows: false,
    fade: true,
    cssEase: "linear",
  });
});
jQuery(document).ready(() => {});
