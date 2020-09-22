// import external dependencies

import "jquery";

// Import everything from autoload
import "./autoload/**/*";
jQuery(window).load(function() {
  $("#preloader").fadeOut(1000);
});
jQuery(document).ready(() => {});
