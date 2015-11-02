class User < ActiveRecord::Base
  belongs_to :location
  has_many :goodspots
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
