jQuery(document).ready(function() {
  var auckland_bounds = new google.maps.LatLngBounds(
    new google.maps.LatLng(-37.14956343170602, 174.26479536132808),
    new google.maps.LatLng(-36.71045863529151, 175.25081831054683)
  );

  var billing_autocomplete = new google.maps.places.Autocomplete(
    $("#billing_address_1")[0],
    {
      bounds: auckland_bounds, //restrict the search area
      strictBounds: true,
    }
  );

  //Define what information we want back from the API
  billing_autocomplete.setFields(["address_components"]);

  //Define a handler which fires when an address is chosen from the autocomplete
  billing_autocomplete.addListener("place_changed", function() {
    var place = billing_autocomplete.getPlace();

    if (place.address_components) {
      //console.log(place.address_components)

      var street_number = place.address_components[0].short_name;
      var street_name = place.address_components[1].short_name;
      var suburb = place.address_components[2].short_name;
      var city = place.address_components[3].short_name;
      var postcode = place.address_components[6].short_name;

      $("#billing_address_1").val(street_number + " " + street_name);
      $("#billing_address_2").val(suburb);
      $("#billing_city").val(city);
      $("#billing_postcode").val(postcode);
    }
  });
});
