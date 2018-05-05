class CommentsController < ApplicationController

  def create

    comment = Comment.new(comment_params)

    if comment.valid?
      if !params[:new_username].empty? && params[:comment][:user_id].empty?
        newuser = User.find_or_create_by(username: params[:new_username])
        comment.user_id = newuser.id
        comment.save
    
      elsif params[:new_username].empty? && !params[:comment][:user_id].empty?
        user = User.find(params[:comment][:user_id])
        comment.user_id = user.id
        comment.save
      end

      redirect_to comment.post
    else
      redirect_to comment.post
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :new_username, user_attributes:[:username])
  end

  # def post_params
  #   params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  # end
end
