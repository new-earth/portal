# 
# Simple HTML5 Rich Text Editor 
# I've added markdown output support with Showdown and to-markdown.js 
# Note: I've used a recyclable class of .editable on the dom element to add
# the rich text editor to. it will output markdown to #markdown
#

$(document).ready ->
  
  # Enable Hallo editor
  $(".editable").hallo
    plugins:
      halloformat: {}
      halloheadings: {}
      hallolists: {}
      halloreundo: {}

    toolbar: "halloToolbarFixed"

  markdownize = (content) ->
    html = content.split("\n").map($.trim).filter((line) ->
      line isnt ""
    ).join("\n")
    toMarkdown html

  converter = new Showdown.converter()
  htmlize = (content) ->
    converter.makeHtml content

  
  # Method that converts the HTML contents to Markdown
  showSource = (content) ->
    markdown = markdownize(content)
    return  if $("#markdown").get(0).value is markdown
    $("#markdown").get(0).value = markdown

  updateHtml = (content) ->
    return  if markdownize($(".editable").html()) is content
    html = htmlize(content)
    $(".editable").html html

  
  # Update Markdown every time content is modified
  $(".editable").bind "hallomodified", (event, data) ->
    showSource data.content

  $("#markdown").bind "keyup", ->
    updateHtml @value

  showSource $(".editable").html()