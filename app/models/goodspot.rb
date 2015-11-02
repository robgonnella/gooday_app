class Goodspot < ActiveRecord::Base
  belongs_to :user, :location
end
