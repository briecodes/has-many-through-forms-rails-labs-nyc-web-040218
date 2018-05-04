class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :content, presence: true
  # validates_with MyValidator
  

  # :post_categories accepts_nested_attributes_for :users

  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.comment.user.build(username: username)
    end
  end

  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     category = Category.find_or_create_by(category_attribute)
  #     self.post_categories.build(category: category)
  #   end
  # end

end
