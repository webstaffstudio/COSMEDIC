jQuery(document).ready(function () {
	const filterForm = $('.filters-shop');
	let dataObj = {
		brands: [],
		country: [],
	};

	function filtersInit(termsData) {
			// let formData = $(this).serialize();
			$.ajax({
				url: themeVars.ajaxUrl,
				type: 'POST',
				data: {
					form: termsData,
					action: 'filters_ajax',
				},
				beforeSend: function () {
					$('#preloader').show();
					$('#preloader').css({opacity: 0.4});
				},
				success: function (data) {
					$('#preloader').fadeOut();
					$('.products').html(data.products_html);
					$('#stock-box').find('.count').html('(' + data.stock_quantity + ')');
				},
				error: function () {
					console.log('error');
				},

			});

	}

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
		filtersInit(dataObj);
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
		filterForm.find('input[type="checkbox"]').prop('checked', false)
		$(this).removeClass('visible');
		filtersInit(null);
	});
	// function clearFilters() {
	// $('#clearFilters').removeClass('visible');
	//
	// }
});



