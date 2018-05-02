class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  :post_categories accepts_nested_attributes_for :users
end
