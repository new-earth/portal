
class App.Views.VimeoModal extends Backbone.View
  events:
    'shown.bs.modal': 'showVideo'
    'hide.bs.modal' : 'hideVideo'

  initialize: (options)->
    @videoSrc = options.videoSrc

  showVideo: ->
    @$("iframe").attr "src", @videoSrc

  hideVideo: ->
    $("#video-iframe").attr("src", "")
    
    # either you'd have to do api=1 in the url
    # or postMessage has permissions issues when running on localhost
    # but anyway, pause is not compatible with mobile. Your workaround above works great.
    # iframe = $("#video-iframe")
    # url = iframe.attr('src').split('?')[0]
    # iframe[0].contentWindow.postMessage(JSON.stringify({ method:"pause" }), url)
