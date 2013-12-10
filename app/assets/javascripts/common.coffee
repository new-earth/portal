
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
  
  # Name:       Smoothscroll
  # Added by:   JB
  # Since:      12-2-13
  # Description:
  #   Finds all links on the current page that lead to anchors on the same page. Attaches a new
  #   event handler onClick, adds the requested anchor to the current location url, locates the
  #   target object by id, calculates its yOffset, then animates a smooth transition from origin
  #   yOffset to target yOffset over 1 second.
  # Used On: 
  #  - Pages displaying formatted content in sections, faq style.  
  #  - Pages using lots of on-page internal links for SEO.
  #  - Return to Top type UI links. 

  $("a[href*=#]:not([href=#])").click ->
    if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") and location.hostname is @hostname
      target = $(@hash)
      target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
      if target.length
        $("html,body").animate
          scrollTop: target.offset().top
        , 650
        false
