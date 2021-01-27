class User < ApplicationRecord
  has_secure_password

  has_many :yippers
  has_many :comments
  belongs_to :location

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :location_id, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end
