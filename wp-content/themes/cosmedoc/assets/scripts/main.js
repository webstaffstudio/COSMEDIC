// import external dependencies

import "jquery";
import "slick-carousel";
import "jquery-match-height";
import "./modules/filters-shop";
import "./modules/sticky-sidebar";
// Import everything from autoload
import "./autoload/**/*";
import "sticky-kit/dist/sticky-kit";

let windowWidth = $(window).width(),
	scrollPos = 0;

jQuery(window).load(function () {
	/* Sticky SideBar Cart */
	const makeSticky = () => {
		$(".cart-sidebar").stick_in_parent({
			offset_top: 80,
		});
	};

	let windowWidth = $(window).width();

	if (windowWidth < 1024) {
		$(".cart-sidebar").trigger("sticky_kit:detach");
	} else {
		makeSticky();
	}

	$(window).resize(function () {
		windowWidth = $(window).width();

		if (windowWidth < 1024) {
			$(".cart-sidebar").trigger("sticky_kit:detach");
		} else {
			makeSticky();
		}
	});

	$("#main-menu").on("show.zf.dropdownmenu", function () {
		let dropdown = $(this).find(".is-dropdown-submenu");
		dropdown.css("display", "none");
		dropdown.fadeIn(300);
	});
	$("#main-menu").on("hide.zf.dropdownmenu", function () {
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
});

jQuery(function ($) {
	let timeout;

	$(".woocommerce").on("change", "input.qty", function () {
		if (timeout !== undefined) {
			clearTimeout(timeout);
		}

		timeout = setTimeout(function () {
			$("[name='update_cart']").trigger("click");
		}, 1000); // 1 second delay, half a second (500) seems comfortable too
	});

	$(document).on("change", ".header-mini-cart input.qty", function () {
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
				success: function (response) {
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
				success: function (data) {
					$(".header-cart-count").html(data);
				},
			});
		}

		qty_cart();
	});
});

jQuery(document).ready(() => {
	$(document).on("click", ".plus", function () {
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
	$(document).on("click", ".minus", function () {
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

	$(".link-search").on("click", function (e) {
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

	trigger.click(function () {
		burgerTime();
	});

	let triggerCart = $(".link-cart");

	triggerCart.click(function (e) {
		e.preventDefault();
		$(this).toggleClass("cart-opened");
	});

	/**
	 * Animations for added product to mini-cart
	 */
	let notShow = false;

	$("body").on("added_to_cart", function () {
		if (!notShow) {
			setTimeout(function () {
				$(".link-cart").addClass("cart-opened");
			}, 1);

			setTimeout(function () {
				$(".link-cart").removeClass("cart-opened");
			}, 3000);
		}
		$(".link-cart").addClass("scale");
		setTimeout(function () {
			$(".link-cart").removeClass("scale");
		}, 500);
		notShow = true;
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

$(document).keydown(function (e) {
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
