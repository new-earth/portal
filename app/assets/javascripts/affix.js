$(window).bind("scroll", function(e) {
	var elem = $('#sidenav .nav');

	if(elem.hasClass("affix")) {
		if(elem.css("position") == "fixed") {
			var offset = 40;
			var dy = 77;
		
			var elemH = elem.height();
			var yMax = $("#bottom-nav").offset().top - elemH - dy;
		
			var scrollY = $(window).scrollTop();
		
			if (scrollY > yMax) {
				var dy = scrollY - yMax;
				elem.css("top", (offset - dy) + "px");
			}
			else
				elem.css("top", offset + "px");
		}
		else
			elem.css("top", "0px");
	}
});
