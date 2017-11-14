
class PostsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "new_post"
  end
end
