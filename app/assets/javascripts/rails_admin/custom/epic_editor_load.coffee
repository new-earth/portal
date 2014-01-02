epic_editor_load = ->
  editor = new EpicEditor().load({
    basePath: '/assets'
    useNativeFullscreen: false
  })

$ -> 
  epic_editor_load()

$(document).on('pjax:complete', epic_editor_load )
