console.log "Subscribing?"
App.cable.subscriptions.create { channel: "PostsChannel" },
  connected: ->
    console.log "Connected"
  disconnected: ->
    console.log "Disconnected"
  received: (data) ->
    $("#posts").prepend data.post
