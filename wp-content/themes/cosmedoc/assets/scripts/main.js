// import external dependencies

import "jquery";
import "slick-carousel";
// Import everything from autoload
import "./autoload/**/*";

let windowWidth = $(window).width(),
  scrollPos = 0;

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
jQuery(document).ready(() => {
  /* Humburger start */
  const trigger = $("#hamburger"),
    menuContainer = $(".menu-wrap");

  let isClosed = true;

  const burgerTime = () => {
    if (isClosed == true) {
      trigger.removeClass("is-open");
      trigger.addClass("is-closed");
      menuContainer.removeClass("is-open");
      menuContainer.addClass("is-closed");

      $("body")
        .removeClass("overflow")
        .css({
          overflow: "",
          width: "",
          position: "",
          top: "",
        });
      if (scrollPos != 0) {
        $(window).scrollTop(scrollPos);
      }
      isClosed = false;
    } else {
      trigger.removeClass("is-closed");
      trigger.addClass("is-open");
      menuContainer.removeClass("is-closed");
      menuContainer.addClass("is-open");
      scrollPos =
        pageYOffset ||
        (document.documentElement.clientHeight
          ? document.documentElement.scrollTop
          : document.body.scrollTop);

      $("body")
        .addClass("overflow")
        .css({
          overflow: "hidden",
          width: "100%",
          position: "fixed",
          top: -scrollPos,
        });
      isClosed = true;
    }
  };
  burgerTime();

  trigger.click(function() {
    burgerTime();
  });

  $(window).on("resize ", () => {
    // Check window width has actually changed and it's not just iOS triggering a resize event on scroll
    if ($(window).width() != windowWidth) {
      // Update the window width for next time
      isClosed = true;
      burgerTime();
    }
  });

  /* Humburger end */
});
