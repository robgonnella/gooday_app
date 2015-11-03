class Goodspot < ActiveRecord::Base
  belongs_to :user
  belongs_to :location

  after_validation :geocode
  geocoded_by :place

  def place
    address || (name + ", #{location.city}, #{location.state}")
  end
end
