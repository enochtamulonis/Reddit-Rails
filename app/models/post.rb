class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_rich_text :body
  has_many :comments

  def allowed_to_edit?(current_user)
    return true if current_user == user
    return true if current_user == forum.user
    false
  end

end
