# Run this example by adding <%= javascript_pack_tag 'hello_coffee' %> to the head of your layout file,
# like app/views/layouts/application.html.erb.

App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    #Called when the subscription is ready for user on the server

  disconnected: ->
    #Called when the subscription has been terminated by the serveer

  received: (data) ->
    alert data.foo
