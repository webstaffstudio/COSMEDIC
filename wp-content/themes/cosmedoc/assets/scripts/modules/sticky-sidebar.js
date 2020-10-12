jQuery(document).ready(function() {
  var stickySidebar = $(".sticky");

  if (stickySidebar.length > 0) {
    var stickyHeight = stickySidebar.height(),
      sidebarTop = stickySidebar.offset().top;
  }

  $(window).scroll(function() {
    if (stickySidebar.length > 0) {
      var scrollTop = $(window).scrollTop();

      if (sidebarTop < scrollTop) {
        stickySidebar.css("top", scrollTop - sidebarTop);

        var sidebarBottom = stickySidebar.offset().top + stickyHeight,
          stickyStop =
            $(".products-container").offset().top +
            $(".products-container").height();
        if (stickyStop < sidebarBottom) {
          var stopPosition = $(".products-container").height() - stickyHeight;
          stickySidebar.css("top", stopPosition);
        }
      } else {
        stickySidebar.css("top", "0");
      }
    }
  });

  $(window).resize(function() {
    if (stickySidebar.length > 0) {
      stickyHeight = stickySidebar.height();
    }
  });
});
