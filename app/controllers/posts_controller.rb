class PostsController < ApplicationController

  def index
    @posts = Post.all
    @new_post = Post.new
  end

  def create
    @new_post = Post.new(post_params)
    @new_post.save

    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:comment)
  end

end
