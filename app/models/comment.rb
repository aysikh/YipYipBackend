class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :yipper

  validates :content, length: { maximum: 240 }

end
