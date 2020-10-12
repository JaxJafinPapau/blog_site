class HomeController < ApplicationController
  def index
    redirect_to posts_path
  end

  def show
    @post = Post.first
    redirect_to post_path(@post)
  end
end