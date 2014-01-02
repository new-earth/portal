/*
 * Script for automatic scaling of dom elements
 * 
 * (will be simplified a lot and probably made like a jquery plugin)
 * 
 */

function fitSizes() {
	var docW = $(window).width();
	var docH = $(window).height();
	var maxW, w;
	
	// splash page
	
	if($('body').attr('id') == 'splash') {
		
		// nav
		maxW = 1600;
		w = docW < maxW ? docW : maxW
		
		fontSize = 60 * Math.max((w / maxW), 0.8) - 30;
		var iconScale = 90 * w / maxW;
		var paddingL = 89 * w / maxW;
		var paddingR = 21 * w / maxW - 6;
		if(docW < 768)
			paddingL = paddingR = 15; // static padding on mobile nav
		$('#main-menu').css('font-size', fontSize + 'px');
		$('#main-menu .navbar-nav li a').css('background-size', iconScale + 'px');
		$('#main-menu .navbar-nav li a').css('padding-left', paddingL + 'px');
		$('#main-menu .navbar-nav li a').css('padding-right', paddingR + 'px');
		
		// splash video icon
		//maxW = 800;
		//w = docW < maxW ? docW : maxW
		
		// splash logo
		maxW = 1600;
		w = docW < maxW ? docW : maxW
		
		var w1 = 768;
		
		var a = 1.0/(maxW-w1);
		var factor = Math.min(1, a*(maxW-w));
		
		//console.log("w: "+w+", a: "+a+", factor: "+factor);
		
		var lessSize = factor * 200; //Math.min((maxW-w), 200);
		var logoSize = 334 - lessSize;
		var logoBgHeight = 445 - lessSize * 1.3;
		var logoOffset = 94 - lessSize*0.25;
		$('#header .logo').css('top', logoOffset + 'px');
		$('#header .logo').css('width', logoSize + 'px');
		$('#header .logo').css('height', logoSize + 'px');
		$('#header .logo-bg').css('background-size', 'auto ' + logoBgHeight + 'px');
		
		// video link
		var top = 170 - lessSize;//+ (maxW-w)/4;
		$('#header .spacer .video').css('top', top + 'px');
		
		var scaleOffset = lessSize * 1.3;
		var headerHeight = 757 - scaleOffset - 1;
		var bgOffset = 257 - scaleOffset;
		$('#header').css('height', headerHeight + 'px');
		$('#header').css('background-position', 'center ' + bgOffset + 'px');
	}
	else {
		maxW = 1600;
		w = docW < maxW ? docW : maxW
		
		var w1 = 512;
		
		var a = 1.0/(maxW-w1);
		var factor = Math.min(1, a*(maxW-w));
		
		//console.log("w: "+w+", a: "+a+", factor: "+factor);
		
		var lessSize = factor * 100;
		var logoSize = 209 - lessSize;
		var logoBgHeight = 238 - lessSize;
		$('#header .logo').css('width', logoSize + 'px');
		$('#header .logo').css('height', logoSize + 'px');
		$('#header .logo-bg').css('background-size', 'auto ' + logoBgHeight + 'px');
		
		var scaleOffset = lessSize * 0.7;
		var shrinkHeader = 3.3;
		//var headerHeight = 420 - scaleOffset - 1;
		//var bgOffset = 66 - scaleOffset;
		var headerHeight = 632 - scaleOffset*shrinkHeader - 1;
		var bgOffset = 132 - scaleOffset*shrinkHeader;
		$('#header').css('height', headerHeight + 'px');
		$('#header').css('background-position', 'center ' + bgOffset + 'px');
		
		// title font
		maxW = 1200;
		w = docW < maxW ? docW : maxW
	
		var fontSize = 56 * w / maxW;
		//var top = 87 + 15 * (1 / (w / maxW) - 1) - scaleOffset;
		var top = 80 - scaleOffset*0.5;
		$('#header .title .text').css({
			'font-size' : fontSize + 'px',
			'top' : top + 'px'
		});
		var marginR;
		var wx = 400;
		if(w >= maxW)
			marginR = 100;
		else if(w > wx)
			marginR = (w-wx)/(maxW-wx)*100;
		else
			marginR = 0;
		
		$('#header .title .right').css({'margin-right' : marginR + 'px'});
		
		// page icon
		var size = 140 * w/maxW;
		var top = 55 - scaleOffset + (140-size)/2;
		$('#header .page-icon').css({
			'top' : top + 'px',
			'width' : size + 'px',
			'height' : size + 'px',
		});
	}

	// header nav
	maxW = 1200;
	w = docW < maxW ? docW : maxW

	var fontSize = 30 * Math.max((w / maxW), 0.5);
	var padding = 30 * w / maxW;
	$('#header .nav-bar .nav').css('font-size', fontSize + 'px');
	$('#header .nav-bar .nav a').css('padding', '0 ' + padding + 'px');
	$('#header .nav-bar .nav a:first-child').css('padding-left', '6px');

	// bottom nav
	maxW = 940;
	w = docW < maxW ? docW : maxW

	var fontSize = 42 * w / maxW;
	var lineHeight = 230 * w / maxW;
	$('#bottom-nav').css('font-size', fontSize + 'px');
	$('#bottom-nav a').css('line-height', lineHeight + 'px');
}


$(document).ready(function() {
	fitSizes();
});
$(window).on('resize', function(e) {
	fitSizes();
});