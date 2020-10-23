jQuery(document).ready(function () {
	let currentPage = themeVars.current_page;
	const filterForm = $(".filters-shop");
	let dataObj = {
		brands: [],
		country: [],
		product_type: [],
	};

	function filtersInit(
		termsData,
		page = currentPage,
		loadmore = false
	) {
		console.log(currentPage, 'cure page');
		// let formData = $(this).serialize();
		$.ajax({
			url: themeVars.ajaxUrl,
			type: "POST",
			data: {
				form: termsData,
				page: page,
				action: "filters_ajax",
				loadmore: loadmore,
			},
			beforeSend: function () {
				$("#preloader").show();
				$("#preloader").css({opacity: 0.4});
			},
			success: function (data) {
				let pagination = data.pagination,
					found_posts = data.found_posts,
					products = data.products_html;
				$(".load-container").data("page", currentPage);
				$("#preloader").fadeOut();
				if (!loadmore) {
					$(".product-list").html(products);

				} else {
					$(products).appendTo($(".product-list"));
					currentPage++;

					// $(products).appendTo('.products');
				}
				if (currentPage >= data.max_page) {
					$('.load-container').hide();
					console.log('hide');
				} else {
					$('.load-container').show();
					console.log('show');
				}
				$("#stock-box")
					.find(".count")
					.html("(" + data.stock_quantity + ")");
				if (pagination && pagination.length > 0) {
					//show is pagination exist
					$(".pagination-product").show();
					$(".pagination-product .pagination-product__list").html(
						data.pagination
					);
				} else {
					$(".pagination-product").hide();
				}
				let showing = $(".catalog-navigation__count--showing").text();
				$(".catalog-navigation__count--showing").text(parseInt(showing) + parseInt(found_posts));
				$(".catalog-navigation__count--total").text(data.total_count);

			},
			error: function () {
				console.log("error");
			},
		});
	}

	function loadPage(e) {
		let page_num = e.data("num");
		filtersInit(dataObj, page_num);
	}

	$("#loadmore").click(function () {
		filtersInit(dataObj, currentPage, true);
	});
	$(".pagination-product__list").on("click", "li", function () {
		loadPage($(this));
	});
	$(".filter-item").on("change", function () {
		let checked = $(this).val();
		let termTax = $(this).attr("data-filterbox");
		if ($(this).is(":checked")) {
			if (termTax === "brand") {
				dataObj.brands.push(checked);
			} else if (termTax === "country") {
				dataObj.country.push(checked);
			} else if (termTax === 'product_type') {
				dataObj.product_type.push(checked);
			}

		} else {
			if (termTax === "brand") {
				dataObj.brands.splice($.inArray(checked, dataObj.brands), 1);
			} else if (termTax === "country") {
				dataObj.country.splice($.inArray(checked, dataObj.country), 1);
			} else if (termTax === "product_type") {
				dataObj.product_type.splice($.inArray(checked, dataObj.product_type), 1);
			}
		}
		currentPage = 1; // always reset this number if checkbox is changed
		filtersInit(dataObj, currentPage);
	});

	if ($(".filter-item").is(":checked")) {
		$(".clear-btn").addClass("visible");
	} else {
		$(".clear-btn").removeClass("visible");
	}

	$(".filter-item").click(function () {
		let checkboxes = $("input.filter-item");
		if (checkboxes.is(":checked")) {
			$("#clearFilters").addClass("visible");
		} else {
			$("#clearFilters").removeClass("visible");
		}
	});

	$("#clearFilters").click(function () {
		filterForm.find('input[type="checkbox"]').prop("checked", false);
		$(this).removeClass("visible");
		filtersInit(null);
	});
});
