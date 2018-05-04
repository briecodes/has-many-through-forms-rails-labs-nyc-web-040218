class CommentsController < ApplicationController

  def create
    byebug
    comment = Comment.create(comment_params)
    if comment.valid?
      redirect_to comment.post
    else
      redirect_to comment.post
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :new_user_id, user_attributes:[:username])
  end

  # def post_params
  #   params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  # end
end
