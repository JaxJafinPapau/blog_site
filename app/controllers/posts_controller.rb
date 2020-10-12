class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: 1).limit(10)
  end
  
end