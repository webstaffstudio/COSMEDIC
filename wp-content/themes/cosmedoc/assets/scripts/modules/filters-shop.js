jQuery(document).ready(function () {
	const filterForm = $('.filters-shop');
	let dataObj = {
		brands: [],
		country: [],
	};

	function filtersInit(termsData, page = themeVars.current_page, loadmore = false) {
		// let formData = $(this).serialize();
		$.ajax({
			url: themeVars.ajaxUrl,
			type: 'POST',
			data: {
				form: termsData,
				page: page,
				action: 'filters_ajax',
				loadmore: loadmore,
			},
			beforeSend: function () {
				$('#preloader').show();
				$('#preloader').css({opacity: 0.4});
			},
			success: function (data) {
				console.log(data);
				let pagination = data.pagination;
				let cur_page = data.current_page;
				$('.load-container').data('page', cur_page);
				$('#preloader').fadeOut();
				$('.products').html(data.products_html);
				$('#stock-box').find('.count').html('(' + data.stock_quantity + ')');
				if (pagination && pagination.length > 0) { //show is pagination exist
					$('.pagination-product').show();
					$('.pagination-product .pagination-product__list').html(data.pagination);
				} else {
					$('.pagination-product').hide();
				}
				$('.catalog-navigation__count--showing').text(data.ppp);
				$('.catalog-navigation__count--total').text(data.total_count);

				console.log(data.total_count);
			},
			error: function () {
				console.log('error');
			},


		});
	}

	function loadPage(e) {
		let page_num = e.data('num');
		filtersInit(dataObj, page_num);

	}

	$('#loadmore').click(function () {
		filtersInit(dataObj, themeVars.current_page, true);
	});
	$('.pagination-product__list').on('click','li',function () {
		loadPage($(this));
	});
	$('.filter-item').on('change', function () {

		let checked = $(this).val();
		let termTax = $(this).attr('data-filterbox');
		if ($(this).is(':checked')) {
			if (termTax === 'brand') {
				dataObj.brands.push(checked);
			} else if (termTax === 'country') {
				dataObj.country.push(checked);
			}
		} else {
			if (termTax === 'brand') {
				dataObj.brands.splice($.inArray(checked, dataObj.brands), 1);
			} else if (termTax === 'country') {
				dataObj.country.splice($.inArray(checked, dataObj.country), 1);
			}
		}
		filtersInit(dataObj)

	});

	if ($('.filter-item').is(':checked')) {
		$('.clear-btn').addClass('visible');
	} else {
		$('.clear-btn').removeClass('visible');

	}

	$(".filter-item").click(function () {
		let checkboxes = $("input.filter-item");
		if (checkboxes.is(":checked")) {
			$('#clearFilters').addClass('visible');
		} else {
			$('#clearFilters').removeClass('visible');
		}
	});

	$('#clearFilters').click(function () {
		filterForm.find('input[type="checkbox"]').prop('checked', false);
		$(this).removeClass('visible');
		filtersInit(null);
	});

});




