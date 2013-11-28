
$ ->

  # When mobile size menu link clicked, slide toggle desktop-nav content  
  $("#main-menu .mobile-nav a").click (e)->
    e.preventDefault();
    $("#main-menu .desktop-nav").slideToggle()


  # 
  # FIX: Fixes bug where resizing nav to smallest size then toggling open and close on the desktop-nav 
  # content, then resizing to next largest breaktop, nav disappears. toggle is setting display inline 
  # which will override the selector weight of the media query. 
  #
  $(window).resize ->
    width = $(window).width()
    if (width > 1049)
      $('#main-menu .desktop-nav').show()


  # 
  # Autofocus the email field when the login modal is displayed. 
  # Note: I've used a recyclable class of autofocus on the field to autofocus, so this is easily 
  # extendable in the future.
  #
  $('#loginModal').on 'shown.bs.modal', ->
    $('#loginModal .autofocus').focus()
  
