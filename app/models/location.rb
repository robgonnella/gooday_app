class Location < ActiveRecord::Base
  has_many :users, :goodspots
end
