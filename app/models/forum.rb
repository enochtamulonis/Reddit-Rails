class Forum < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many :posts
end
