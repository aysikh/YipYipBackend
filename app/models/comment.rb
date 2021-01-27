class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :yipper

  validates :comment, length: { maximum: 240 }
  
end
