jQuery(document).ready(function () {

	jQuery.validator.setDefaults({
		debug: true,
		success: "valid",
	});
	$("form.woocommerce-checkout").validate({
		rules: {
			'billing_first_name': {
				required: true,
			},
			'billing_last_name': {
				required: true,
			},
			'billing_address_1': {
				required: true,
			},
			'billing_city': {
				required: true,
			},
			'billing[postcode]': {
				required: true,
			},
			'billing_phone': {
				required: true,
			},
			'billing_email': {
				required: true,
				email: true,
			},
		},
		errorClass: "invalid",
		validClass: "success",
	});
	$("#billing-step").on("click", function () {
		if ($("form.woocommerce-checkout").valid()) {
			let fName = $("#billing_first_name").val();
			let lName = $("#billing_last_name").val();
			let street = $("#billing_address_1").val();
			let building = $("#billing_office").val();
			let city = $("#billing_city").val();
			let zipcode = $('input[name="billing[postcode]"]').val();
			let phone = $("#billing_phone").val();
			$("#pr-payer-address #payer-fname, #pr-shipping-address #sh-fname").html(
				fName
			);
			$("#pr-payer-address #payer-lname, #pr-shipping-address #sh-lname").html(
				lName
			);
			$("#pr-payer-address #payer-street, #pr-shipping-address #sh-street ").html(
				street
			);
			$(
				"#pr-payer-address #payer-building, #pr-shipping-address #sh-building"
			).html(', ' + building);
			$("#pr-payer-address #payer-city, #pr-shipping-address #sh-city").html(
				city
			);
			$(
				"#pr-payer-address #payer-zipcode, #pr-shipping-address #sh-zipcode"
			).html(zipcode);
			$("#pr-payer-address #payer-phone, #pr-shipping-address #sh-phone").html(
				phone
			);
			// $('<li>' + building + '</li>').appendTo($('#pr-payer-address #sh-q'));
			$('#pr-payer-address, #pr-shipping-address').removeClass('inactive');
			$(".payer-data,.shipping-data").removeClass("hidden");
			$("html, body").animate(
				{scrollTop: $(".shipping-step").offset().top + 300},
				1000
			);
			//go to the next step
			$("#billing-step").addClass("hidden");
			$(".column-1 .shipping-step").removeClass("hidden");


		} else {
			return false
		}
	});


	$("#shipping-step").on("click", function () {
		let selectedShipping = $('#shipping_method input:checked').attr('id');
		let labelText = $('label[for="' + selectedShipping + '"]').text();
		console.log(selectedShipping);
		$('.shipping-method').html(labelText);
		$(".order-review-step").removeClass("hidden");
	});

	$("form.woocommerce-checkout").keypress(function(e) {
		if (e.which == 13) {
			return false;
		}
	});
});
