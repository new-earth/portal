# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(this).on('click', "#submit_sov_button", ->
		$("#newsletter_form").toggle()
		$('html, body').animate({scrollTop:$('#newsletter_header').position().top}, 'slow')		
		$("#sovereignty_form").toggle()
	)
	
	$(this).on('click', "#update_user_profile_button", ->
		$("#user_profile_form").toggle()
		$("#newsletter_form").toggle()
		$('html, body').animate({scrollTop:$('#user_profile_header').position().top}, 'slow')	
	)
	
	$(this).on('click', "#save_user_profile_button", ->
		$("#user_profile_form").toggle()	
	)
