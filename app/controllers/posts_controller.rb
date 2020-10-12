class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = Post.new(
      title: post_params[:title],
      body: post_params[:body],
      author: @user.email,
      user_id: @user.id
    )
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, notice: 'Article was successfully created.' }
        # format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @posts = Post.order(created_at: 1).page(params[:page])
  end

  # not implemented

  # def update
  # def destroy
  # def edit
  private

   def post_params
     params.require(:post).permit(:title, :body)
   end
end