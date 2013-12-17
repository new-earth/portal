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
	
	// splash
	maxW = 1600;
	w = docW < maxW ? docW : maxW
	
	fontSize = 60 * Math.max((w / maxW), 0.8) - 30;
	var iconScale = 85 * w / maxW;
	var paddingL = 89 * w / maxW;
	var paddingR = 21 * w / maxW - 6;
	$('#main-menu').css('font-size', fontSize + 'px');
	$('#main-menu .navbar-nav li a').css('background-size', iconScale + 'px');
	$('#main-menu .navbar-nav li a').css('padding-left', paddingL + 'px');
	$('#main-menu .navbar-nav li a').css('padding-right', paddingR + 'px');

	// header nav
	maxW = 1200;
	w = docW < maxW ? docW : maxW

	var fontSize = 30 * Math.max((w / maxW), 0.5);
	var padding = 30 * w / maxW;
	$('#header .nav-bar .nav').css('font-size', fontSize + 'px');
	$('#header .nav-bar .nav a').css('padding', '0 ' + padding + 'px');
	$('#header .nav-bar .nav a:first-child').css('padding-left', '6px');

	// title font
	maxW = 1200;
	w = docW < maxW ? docW : maxW

	var fontSize = 56 * w / maxW;
	var top = 87 + 15 * (1 / (w / maxW) - 1);
	$('#header .title .text').css({
		'font-size' : fontSize + 'px',
		'top' : top + 'px'
	});

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