class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home
    if user_signed_in? then
      @post = current_user.posts.build()
    end
    @posts = Post.last(20).reverse()
  end
end
