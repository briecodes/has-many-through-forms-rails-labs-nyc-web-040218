class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user = User.new
    @users = User.all
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    post = Post.create(post_params)
    if post.valid?
      redirect_to post
    else
      redirect_to new_post_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :post_categories_attributes_0_name, category_ids:[], categories_attributes: [:name])
  end
end
