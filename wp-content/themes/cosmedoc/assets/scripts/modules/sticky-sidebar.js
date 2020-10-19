$(document).ready(function() {
  var $window = $(window);
  var $sidebar = $(".widget-area");
  if ($sidebar.length > 0) {
    var $sidebarHeight = $sidebar.innerHeight();
    var $footerOffsetTop = $("#footer-container").offset().top;
    var $sidebarOffset = $sidebar.offset();

    $window.scroll(function() {
      if ($window.scrollTop() > $sidebarOffset.top) {
        $sidebar.addClass("fixed-top");
      } else {
        $sidebar.removeClass("fixed-top");
      }
      if ($window.scrollTop() + $sidebarHeight > $footerOffsetTop) {
        $sidebar.css({
          top: -($window.scrollTop() + $sidebarHeight - $footerOffsetTop),
        });
      } else {
        $sidebar.css({ top: "0" });
      }
    });
  }
});
