class Yipper < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :content, presence: true
  validates :content, length: { maximum: 240 }

end
