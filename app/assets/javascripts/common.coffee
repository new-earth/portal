$ ->
  # activate super awesome lightbox
  $(".lightbox").lightbox()

  # 
  # Autofocus the email field when the login modal is displayed. 
  # Note: I've used a recyclable class of autofocus on the field to autofocus, so this is easily 
  # extendable in the future.
  #
  $('#loginModal').on 'shown.bs.modal', ->
    $('#loginModal .autofocus').focus()
