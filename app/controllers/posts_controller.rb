class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Success"
      redirect_to root_path
    end
  end

  def show

  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
