jQuery(document).ready(function () {
	$("#billing-step").on("click", function () {
		let fName = $('#billing_first_name').val();
		let lName = $('#billing_last_name').val();
		let street = $('#billing_address_1').val();
		let building = $('#billing_office').val();
		let city = $('#billing_city').val();
		let zipcode = $('input[name="billing[postcode]"]').val();
		let phone = $('#billing_phone').val();
		console.log(building);
		$('#pr-payer-address #payer-fname, #pr-shipping-address #sh-fname').html(fName);
		$('#pr-payer-address #payer-lname, #pr-shipping-address #sh-lname').html(lName);
		$('#pr-payer-address #payer-street, #pr-shipping-address #sh-street ').html(street);
		$('#pr-payer-address #payer-building, #pr-shipping-address #sh-building').html(building);
		$('#pr-payer-address #payer-city, #pr-shipping-address #sh-city').html(city);
		$('#pr-payer-address #payer-zipcode, #pr-shipping-address #sh-zipcode').html(zipcode);
		$('#pr-payer-address #payer-phone, #pr-shipping-address #sh-phone').html(phone);
		// $('<li>' + building + '</li>').appendTo($('#pr-payer-address #sh-q'));
		$('.payer-data,.shipping-data').removeClass('hidden');
		$("html, body").animate({ scrollTop: $('.shipping-step').offset().top - 300}, 1000);
		$('#billing-step').addClass('hidden');
		$('.column-1 .shipping-step').removeClass('hidden');
		$(".checkout ").validate({
			rules: {
				billing_first_name: "required",
				email: {
					required: true,
					email: true,
				},
			},
			messages: {
				name: "Please specify your name",
				email: {
					required: "We need your email address to contact you",
					email: "Your email address must be in the format of name@domain.com",
				},
			},
		});
	});
	$("#shipping-step").on("click", function () {
		$('.order-review-step').removeClass('hidden');
	});
});
