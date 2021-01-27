class Yipper < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :comment, presence: true
  validates :comment, length: { maximum: 240 }

end
