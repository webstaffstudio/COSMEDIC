// import external dependencies

import "jquery";
import slick from "slick-carousel";
// Import everything from autoload
import "./autoload/**/*";

jQuery(window).load(function() {
  console.log(slick);
  $("#preloader").fadeOut(1000);
  $(".woocommerce-product-gallery__wrapper").slick({
    dots: true,
    arrows: false,
  });
});
jQuery(document).ready(() => {});
