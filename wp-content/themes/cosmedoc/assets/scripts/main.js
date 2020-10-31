// import external dependencies

import "jquery";
import "slick-carousel";
import "jquery-match-height";
import "./modules/filters-shop";
// import "./modules/autocomplete-address";
import "./modules/sticky-sidebar";
import "jquery-validation";
import "./modules/checkout";
import AOS from "aos/dist/aos";
// Import everything from autoload
import "./autoload/**/*";
import "sticky-kit/dist/sticky-kit";

let windowWidth = $(window).width(),
  scrollPos = 0;

jQuery(window).load(function() {
  $(".single-product .cross-sells .cart-cross-sells").slick({
    dots: false,
    arrows: true,
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplaySpeed: 3000,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
        },
      },
      {
        breakpoint: 771,
        settings: {
          slidesToShow: 2,
          dots: true,
          arrows: false,
        },
      },
      {
        breakpoint: 540,
        settings: {
          slidesToShow: 1,
          dots: true,
          arrows: false,
        },
      },
    ],
  });
  AOS.init({
    useClassNames: true,
    mirror: true,
    initClassName: false,
    animatedClassName: "animated",
  });
  $(".cart-cross-sells .woocommerce-loop-product__title").matchHeight();
  $(".cart-cross-sells .brand").matchHeight();
  $(".cart-cross-sells .price").matchHeight();
  $(".wishlist_item .product-name").matchHeight();
  /* Sticky SideBar Cart */
  const makeSticky = () => {
    $(".cart-sidebar").stick_in_parent({
      offset_top: 80,
    });
  };
  const stickySidebar = () => {
    $(".sidebar-shop").stick_in_parent({
      offset_top: 80,
    });
  };

  let windowWidth = $(window).width();

  if (windowWidth < 1024) {
    $(".cart-sidebar").trigger("sticky_kit:detach");
    $(".sidebar-shop").trigger("sticky_kit:detach");
  } else {
    makeSticky();
    stickySidebar();
  }

  $(window).resize(function() {
    windowWidth = $(window).width();

    if (windowWidth < 1024) {
      $(".cart-sidebar").trigger("sticky_kit:detach");
      $(".sidebar-shop").trigger("sticky_kit:detach");
    } else {
      makeSticky();
      stickySidebar();
    }
  });

  $("#main-menu").on("show.zf.dropdownmenu", function() {
    let dropdown = $(this).find(".is-dropdown-submenu");
    dropdown.css("display", "none");
    dropdown.fadeIn(300);
  });
  $("#main-menu").on("hide.zf.dropdownmenu", function() {
    let dropdown = $(this).find(".is-dropdown-submenu");
    dropdown.css("display", "flex");
    dropdown.fadeOut(300);
  });
  $("#preloader").fadeOut(1000);
  $(".woocommerce-product-gallery__wrapper").slick({
    dots: true,
    arrows: false,
  });

  $(".product-list-slider").slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    arrows: true,
    appendArrows: ".cross-sale__list",
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          arrows: false,
        },
      },
      {
        breakpoint: 550,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          dots: true,
        },
      },
    ],
  });

  $(".hero-slider").slick({
    dots: true,
    arrows: false,
    fade: true,
    cssEase: "linear",
    autoplay: true,
    autoplaySpeed: 3000,
  });
  $(".cross-sale__list--product .product__title").matchHeight();
  $(".products .product .woocommerce-loop-product__title").matchHeight();
  $(".product-list-slider").slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    arrows: true,
  });
  $(".hero-slider").slick({
    dots: true,
    arrows: false,
    fade: true,
    cssEase: "linear",
    autoplay: true,
    autoplaySpeed: 3000,
  });
  $(".product-list-slider").slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    arrows: true,
  });
  $(".cross-sale__list--product .product__title").matchHeight();
  $(".products .product .woocommerce-loop-product__title").matchHeight();
});

/**
 * Updated foundation js and Sticky-Kit for sidebar
 */
$(document).ajaxSuccess(function(event, xhr, options) {
  if (options.url === "/?wc-ajax=get_refreshed_fragments") {
    let stickTarget = $(".cart-sidebar");
    if (stickTarget.length > 0) {
      $(".cart-cross-sells .woocommerce-loop-product__title").matchHeight();
      $(".cart-cross-sells .brand").matchHeight();
      $(".cart-cross-sells .price").matchHeight();
      $(".cross-sells .cart-cross-sells").slick({
        dots: true,
        arrows: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplaySpeed: 3000,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
            },
          },
          {
            breakpoint: 771,
            settings: {
              slidesToShow: 2,
            },
          },
        ],
      });
      $(document).foundation();
      const makeSticky = () => {
        stickTarget.stick_in_parent({
          offset_top: 80,
        });
      };
      if (windowWidth < 1024) {
        $(".cart-sidebar").trigger("sticky_kit:detach");
      } else {
        makeSticky();
      }
      $(".gift-products-slider").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: "linear",
      });

      $("div.cosmedoc-btn-gift").on("click", function() {
        let $this = $(this);
        let $product_id = $(this).attr("data-id");
        $.ajax({
          url: themeVars.ajaxUrl,
          type: "POST",
          data: {
            action: "add_gift_product",
            product: $product_id,
          },
          success: function() {
            $("div.cosmedoc-btn-gift").removeClass("checked");
            $this.addClass("checked");
            $("[name='update_cart']").prop("disabled", false);
            setTimeout(function() {
              $("[name='update_cart']").trigger("click");
            }, 500);
          },
        });
      });
    }
  }
});

jQuery(function($) {
  let timeout;

  $(".woocommerce").on("change", "input.qty", function() {
    if (timeout !== undefined) {
      clearTimeout(timeout);
    }

    timeout = setTimeout(function() {
      $("[name='update_cart']").trigger("click");
    }, 500); // 1 second delay, half a second (500) seems comfortable too
  });

  $(document).on("change", ".header-mini-cart input.qty", function() {
    let item_hash = $(this)
      .attr("name")
      .replace(/cart\[([\w]+)\]\[qty\]/g, "$1");
    let item_quantity = $(this).val();
    let currentVal = parseFloat(item_quantity);

    function qty_cart() {
      $.ajax({
        type: "POST",
        url: themeVars.ajaxUrl,
        data: {
          action: "qty_cart",
          hash: item_hash,
          quantity: currentVal,
        },
        success: function(response) {
          $(".order-total-sum").html(response);
          cart_items();
        },
      });
    }

    function cart_items() {
      $.ajax({
        type: "POST",
        url: themeVars.ajaxUrl,
        data: {
          action: "cart_items",
        },
        success: function(data) {
          $(".header-cart-count").html(data);
        },
      });
    }

		qty_cart();
	});
});

jQuery(document).ready(() => {
  $("div.cosmedoc-btn-gift").on("click", function() {
    let $this = $(this);
    let $product_id = $(this).attr("data-id");
    $.ajax({
      url: themeVars.ajaxUrl,
      type: "POST",
      data: {
        action: "add_gift_product",
        product: $product_id,
      },
      success: function() {
        $("div.cosmedoc-btn-gift").removeClass("checked");
        $this.addClass("checked");
        $("[name='update_cart']").prop("disabled", false);
        setTimeout(function() {
          $("[name='update_cart']").trigger("click");
        }, 500);
      },
    });
  });
  $(document).on("click", ".plus", function() {
    let $input = $(this).prev("input.qty");
    let val = parseInt($input.val());
    let step = $input.attr("step");
    let max = $input.attr("max") > 0 ? $input.attr("max") : 100;
    step = "undefined" !== typeof step ? parseInt(step) : 1;
    if (val + step <= max) {
      $input.val(val + step).change();
    }

    if (val > max) {
      val = max;
      $input.val(val).change();
    }
  });
  $(document).on("click", ".minus", function() {
    let $input = $(this).next("input.qty");
    let val = parseInt($input.val());
    let step = $input.attr("step");
    step = "undefined" !== typeof step ? parseInt(step) : 1;
    if (val > 1) {
      $input.val(val - step).change();
    }
  });

  /* Humburger start */
  const trigger = $("#hamburger"),
    menuContainer = $(".menu-wrap");

  let isClosed = true;

  $(".link-search").on("click", function(e) {
    e.preventDefault();
    $(".header__search").toggleClass("is-opened");
  });

  const burgerTime = () => {
    if (isClosed == true) {
      trigger.removeClass("is-open");
      trigger.addClass("is-closed");
      menuContainer.removeClass("is-open");
      menuContainer.addClass("is-closed");

      $("body").css({
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

      $("body").css({
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

  let triggerCart = $(".link-cart");

  triggerCart.click(function(e) {
    e.preventDefault();
    $(this).toggleClass("cart-opened");
  });

  /**
   * Animations for added product to mini-cart
   */
  let notShow = false;

  $("body").on("added_to_cart", function() {
    if (!notShow) {
      setTimeout(function() {
        $(".link-cart").addClass("cart-opened");
      }, 1);

      setTimeout(function() {
        $(".link-cart").removeClass("cart-opened");
      }, 3000);
    }
    $(".link-cart").addClass("scale");
    setTimeout(function() {
      $(".link-cart").removeClass("scale");
    }, 500);
    notShow = true;
  });

  $(window).on("resize ", () => {
    $(".cart-cross-sells .woocommerce-loop-product__title").matchHeight();
    $(".cart-cross-sells .brand").matchHeight();
    $(".cart-cross-sells .price").matchHeight();
    // Check window width has actually changed and it's not just iOS triggering a resize event on scroll
    if ($(window).width() != windowWidth) {
      // Update the window width for next time
      isClosed = true;
      burgerTime();
    }
  });

  /* Humburger end */
});

$(document).keydown(function(e) {
  const code = e.keyCode || e.which;
  if (code === 27) {
    $(".header__search").removeClass("is-opened");
    $(".link-cart").removeClass("cart-opened");
    $("body").css({
      overflow: "",
      position: "",
      width: "",
      height: "",
      top: "",
    });
  }
});
