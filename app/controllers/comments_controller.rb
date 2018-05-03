class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    # binding.pry
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

  # def post_params
  #   params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  # end
end
