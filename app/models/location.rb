class Location < ActiveRecord::Base
  has_many :users
  has_many :goodspots
end
