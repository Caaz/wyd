#= require jquery
#= require jquery_ujs
#= require uikit/uikit.js
#= require uikit/uikit-icons.js
#= require turbolinks
$ () ->
  $('#new-post').on 'ajax:success', () ->
    $('[name="post[content]"]').val('')
